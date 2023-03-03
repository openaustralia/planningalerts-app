# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rgeo-shapefile` gem.
# Please instead update this file by running `bin/tapioca gem rgeo-shapefile`.

# RGeo is a spatial data library for Ruby, provided by the "rgeo" gem.
#
# The optional RGeo::Shapefile module provides a set of tools for reading
# ESRI shapefiles.
#
# source://rgeo-shapefile//lib/rgeo/shapefile.rb#10
module RGeo; end

# This module contains an implementation of ESRI Shapefiles.
# Use the Shapefile::Reader class to read a shapefile, extracting
# geometry and attribute data from it.
# RGeo does not yet have support for writing shapefiles.
#
# source://rgeo-shapefile//lib/rgeo/shapefile.rb#16
module RGeo::Shapefile; end

# Represents a shapefile that is open for reading.
#
# You can use this object to read a shapefile straight through,
# yielding the data in a block; or you can perform random access
# reads of indexed records.
#
# You must close this object after you are done, in order to close
# the underlying files. Alternatively, you can pass a block to
# Reader::open, and the reader will be closed automatically for
# you at the end of the block.
#
# === Dependencies
#
# Attributes in shapefiles are stored in a ".dbf" (dBASE) format
# file. The "dbf" gem is required to read these files. If this
# gem is not installed, shapefile reading will still function,
# but attributes will not be available.
#
# Correct interpretation of the polygon shape type requires some
# functionality that is available in the RGeo::Geos module. Hence,
# reading a polygon shapefile will generally fail if that module is
# not available or the GEOS library is not installed. It is possible
# to bypass this requirement by relaxing the polygon tests and making
# some assumptions about the file format. See the documentation for
# Reader::open for details.
#
# === Shapefile support
#
# This class supports shapefiles formatted according to the 1998
# "ESRI Shapefile Technical Description". It converts shapefile
# data to RGeo geometry objects, as follows:
#
# * Shapefile records are represented by the
#   RGeo::Shapefile::Reader::Record class, which provides the
#   geometry, the attributes, and the record number (0-based).
# * Attribute reading is supported by the "dbf" gem, which provides
#   the proper typecasting for numeric, string, boolean, and
#   date/time column types. Data in unrecognized column types are
#   returned as strings.
# * All shape types documented in the 1998 publication are supported,
#   including point, polyline, polygon, multipoint, and multipatch,
#   along with Z and M versions.
# * Null shapes are translated into nil geometry objects. That is,
#   Record#geometry will return nil if that record has a null shape.
# * The point shape type yields Point geometries.
# * The multipoint shape type yields MultiPoint geometries.
# * The polyline shape type yields MultiLineString geometries.
# * The polygon shape type yields MultiPolygon geometries.
# * The multipatch shape type yields GeometryCollection geometries.
#   (See below for an explanation of why we do not return a
#   MultiPolygon.)
#
# Some special notes and limitations in our shapefile support:
#
# * Our implementation assumes that shapefile data is in a Cartesian
#   coordinate system when it performs certain computations, such as
#   directionality of polygon rings. It also ignores the 180 degree
#   longitude seam, so it may not correctly interpret objects whose
#   coordinates are in lat/lon space and which span that seam.
# * The ESRI polygon specification allows interior rings to touch
#   their exterior ring in a finite number of points. This technically
#   violates the OGC Polygon definition. However, such a structure
#   remains a legal OGC MultiPolygon, and it is in principle possible
#   to detect this case and transform the geometry type accordingly.
#   We do not yet do this. Therefore, it is possible for a shapefile
#   with polygon type to yield an illegal geometry.
# * The ESRI polygon specification clearly specifies the winding order
#   for inner and outer rings: outer rings are clockwise while inner
#   rings are counterclockwise. We have heard it reported that there
#   may be shapefiles out there that do not conform to this spec. Such
#   shapefiles may not read correctly.
# * The ESRI multipatch specification includes triangle strips and
#   triangle fans as ways of constructing polygonal patches. We read
#   in the aggregate polygonal patches, and do not preserve the
#   individual triangles.
# * The ESRI multipatch specification allows separate patch parts to
#   share common boundaries, thus effectively becoming a single
#   polygon. It is in principle possible to detect this case and
#   merge the constituent polygons; however, such a data structure
#   implies that the intent is for such polygons to remain distinct
#   objects even though they share a common boundary. Therefore, we
#   do not attempt to merge such polygons. However, this means it is
#   possible for a multipatch to violate the OGC MultiPolygon
#   assertions, which do not allow constituent polygons to share a
#   common boundary. Therefore, when reading a multipatch, we return
#   a GeometryCollection instead of a MultiPolygon.
#
# source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#94
class RGeo::Shapefile::Reader
  # Low-level creation of a Reader. The arguments are the same as
  # those passed to Reader::open, except that this doesn't take a
  # block. You should use Reader::open instead.
  #
  # @return [Reader] a new instance of Reader
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#177
  def initialize(path_, opts_ = T.unsafe(nil)); end

  # Get the given record number. Equivalent to seeking to that index
  # and calling next.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#375
  def [](index_); end

  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#650
  def _read_multipatch(data_); end

  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#431
  def _read_multipoint(data_, opt_ = T.unsafe(nil)); end

  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#380
  def _read_next_record; end

  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#413
  def _read_point(data_, opt_ = T.unsafe(nil)); end

  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#509
  def _read_polygon(data_, opt_ = T.unsafe(nil)); end

  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#466
  def _read_polyline(data_, opt_ = T.unsafe(nil)); end

  # Returns true if attributes are available. This may be false
  # because there is no ".dbf" file or because the dbf gem is not
  # available.
  #
  # @return [Boolean]
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#256
  def attributes_available?; end

  # Close the shapefile.
  # You should not use this Reader after it has been closed.
  # Most methods will return nil.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#237
  def close; end

  # Returns the current file pointer as a record index (0-based).
  # This is the record number that will be read when Reader#next
  # is called.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#331
  def cur_index; end

  # Read the remaining records starting with the current record index,
  # and yield the Reader::Record for each one.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#344
  def each; end

  # Returns the factory used by this reader.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#262
  def factory; end

  # Get the given record number. Equivalent to seeking to that index
  # and calling next.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#375
  def get(index_); end

  # Returns the maximum m, or nil if the shapefile does not contain m.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#323
  def mmax; end

  # Returns the minimum m, or nil if the shapefile does not contain m.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#317
  def mmin; end

  # Read and return the next record as a Reader::Record.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#337
  def next; end

  # Returns the number of records in the shapefile.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#268
  def num_records; end

  # Returns true if this Reader is still open, or false if it has
  # been closed.
  #
  # @return [Boolean]
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#248
  def open?; end

  # Rewind to the beginning of the file.
  # Equivalent to seek_index(0).
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#368
  def rewind; end

  # Seek to the given record index.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#351
  def seek_index(index_); end

  # Returns the shape type code.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#275
  def shape_type_code; end

  # Returns the number of records in the shapefile.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#268
  def size; end

  # Returns the maximum x.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#287
  def xmax; end

  # Returns the minimum x.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#281
  def xmin; end

  # Returns the maximum y.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#299
  def ymax; end

  # Returns the minimum y.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#293
  def ymin; end

  # Returns the maximum z, or nil if the shapefile does not contain z.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#311
  def zmax; end

  # Returns the minimum z, or nil if the shapefile does not contain z.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#305
  def zmin; end

  class << self
    # Create a new shapefile reader. You must pass the path for the
    # main shapefile (e.g. "path/to/file.shp"). You may also omit the
    # ".shp" extension from the path. All three files that make up the
    # shapefile (".shp", ".shx", and ".dbf") must be present for
    # successful opening of a shapefile.
    #
    # You must also provide a RGeo::Feature::FactoryGenerator. It should
    # understand the configuration options <tt>:has_z_coordinate</tt>
    # and <tt>:has_m_coordinate</tt>. You may also pass a specific
    # RGeo::Feature::Factory, or nil to specify the default Cartesian
    # FactoryGenerator.
    #
    # If you provide a block, the shapefile reader will be yielded to
    # the block, and automatically closed at the end of the block.
    # In this instance, File.open returns the value of the block.
    # If you do not provide a block, the shapefile reader will be
    # returned from this call. It is then the caller's responsibility
    # to close the reader when it is done.
    #
    # Options include:
    #
    # [<tt>:factory_generator</tt>]
    #   A RGeo::Feature::FactoryGenerator that should return a factory
    #   based on the dimension settings in the input. It should
    #   understand the configuration options <tt>:has_z_coordinate</tt>
    #   and <tt>:has_m_coordinate</tt>. You may also pass a specific
    #   RGeo::Feature::Factory. If no factory generator is provided,
    #   the default Cartesian factory generator is used. This option
    #   can also be specified using the <tt>:factory</tt> key.
    # [<tt>:srid</tt>]
    #   If provided, this option is passed to the factory generator.
    #   This is useful because shapefiles do not contain a SRID.
    # [<tt>:assume_inner_follows_outer</tt>]
    #   If set to true, some assumptions are made about ring ordering
    #   in a polygon shapefile. See below for details. Default is false.
    #
    # === Ring ordering in polygon shapefiles
    #
    # The ESRI polygon shape type specifies that the ordering of rings
    # in the shapefile is not significant. That is, rings can be in any
    # order, and inner rings need not necessarily follow the outer ring
    # they are associated with. This specification causes some headache
    # in the process of constructing polygons from a shapefile, because
    # it becomes necessary to run some geometric analysis on the rings
    # that are read in, in order to determine which inner rings should
    # go with which outer rings.
    #
    # RGeo's shapefile reader uses GEOS to perform this analysis.
    # However, this means that if GEOS is not available, the analysis
    # will fail. It also means reading polygons may be slow, especially
    # for polygon records with a large number of parts. Therefore, it
    # is possible to turn off this analysis by setting the
    # <tt>:assume_inner_follows_outer</tt> switch when creating a
    # Reader. This causes the shapefile reader to assume that inner
    # rings always follow their corresponding outer ring in the file.
    # This is probably true for most well-behaved shapefiles out there,
    # but since it is not part of the specification, this shortcutting
    # is not turned on by default. However, if you are running RGeo on
    # a platform without GEOS, you have no choice but to turn on this
    # switch and make this assumption about your input shapefiles.
    #
    # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#160
    def open(path_, opts_ = T.unsafe(nil), &block_); end
  end
end

# Values less than this value are considered "no value" in the
# shapefile format specification.
#
# source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#97
RGeo::Shapefile::Reader::NODATA_LIMIT = T.let(T.unsafe(nil), Float)

# Shapefile records are provided to the caller as objects of this
# type. The record includes the record index (0-based), the
# geometry (which may be nil if the shape type is the null type),
# and a hash of attributes from the associated dbf file.
#
# You should not need to create objects of this type yourself.
#
# source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#800
class RGeo::Shapefile::Reader::Record
  # @return [Record] a new instance of Record
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#801
  def initialize(index_, geometry_, attributes_); end

  # Returns the value for the given attribute key.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#822
  def [](key_); end

  # The attributes as a hash.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#814
  def attributes; end

  # The geometry contained in this shapefile record
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#811
  def geometry; end

  # The 0-based record number
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#808
  def index; end

  # Returns an array of keys for all this record's attributes.
  #
  # source://rgeo-shapefile//lib/rgeo/shapefile/reader.rb#817
  def keys; end
end

# source://rgeo-shapefile//lib/rgeo/shapefile/version.rb#5
RGeo::Shapefile::VERSION = T.let(T.unsafe(nil), String)

# source://rgeo/2.4.0/lib/rgeo/version.rb#4
RGeo::VERSION = T.let(T.unsafe(nil), String)
