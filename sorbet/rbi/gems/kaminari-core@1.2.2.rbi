# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `kaminari-core` gem.
# Please instead update this file by running `bin/tapioca gem kaminari-core`.

# source://kaminari-core//lib/kaminari/core.rb#3
module Kaminari
  class << self
    # source://kaminari-core//lib/kaminari/config.rb#13
    def config; end

    # @yield [config]
    #
    # source://kaminari-core//lib/kaminari/config.rb#9
    def configure; end

    # Wrap an Array object to make it paginatable
    # ==== Options
    # * <tt>:limit</tt> - limit
    # * <tt>:offset</tt> - offset
    # * <tt>:total_count</tt> - total_count
    # * <tt>:padding</tt> - padding
    #
    # source://kaminari-core//lib/kaminari/models/array_extension.rb#70
    def paginate_array(array, limit: T.unsafe(nil), offset: T.unsafe(nil), total_count: T.unsafe(nil), padding: T.unsafe(nil)); end
  end
end

# source://kaminari-core//lib/kaminari/config.rb#18
class Kaminari::Config
  # @return [Config] a new instance of Config
  #
  # source://kaminari-core//lib/kaminari/config.rb#22
  def initialize; end

  # Returns the value of attribute default_per_page.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def default_per_page; end

  # Sets the attribute default_per_page
  #
  # @param value the value to set the attribute default_per_page to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def default_per_page=(_arg0); end

  # Returns the value of attribute left.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def left; end

  # Sets the attribute left
  #
  # @param value the value to set the attribute left to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def left=(_arg0); end

  # Returns the value of attribute max_pages.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def max_pages; end

  # Sets the attribute max_pages
  #
  # @param value the value to set the attribute max_pages to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def max_pages=(_arg0); end

  # Returns the value of attribute max_per_page.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def max_per_page; end

  # Sets the attribute max_per_page
  #
  # @param value the value to set the attribute max_per_page to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def max_per_page=(_arg0); end

  # Returns the value of attribute outer_window.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def outer_window; end

  # Sets the attribute outer_window
  #
  # @param value the value to set the attribute outer_window to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def outer_window=(_arg0); end

  # Returns the value of attribute page_method_name.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def page_method_name; end

  # Sets the attribute page_method_name
  #
  # @param value the value to set the attribute page_method_name to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def page_method_name=(_arg0); end

  # If param_name was given as a callable object, call it when returning
  #
  # source://kaminari-core//lib/kaminari/config.rb#36
  def param_name; end

  # Sets the attribute param_name
  #
  # @param value the value to set the attribute param_name to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#20
  def param_name=(_arg0); end

  # Returns the value of attribute params_on_first_page.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def params_on_first_page; end

  # Sets the attribute params_on_first_page
  #
  # @param value the value to set the attribute params_on_first_page to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def params_on_first_page=(_arg0); end

  # Returns the value of attribute right.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def right; end

  # Sets the attribute right
  #
  # @param value the value to set the attribute right to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def right=(_arg0); end

  # Returns the value of attribute window.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def window; end

  # Sets the attribute window
  #
  # @param value the value to set the attribute window to.
  #
  # source://kaminari-core//lib/kaminari/config.rb#19
  def window=(_arg0); end
end

# source://kaminari-core//lib/kaminari/models/configuration_methods.rb#6
module Kaminari::ConfigurationMethods
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::Kaminari::ConfigurationMethods::ClassMethods
end

# source://kaminari-core//lib/kaminari/models/configuration_methods.rb#8
module Kaminari::ConfigurationMethods::ClassMethods
  # This model's default +per_page+ value
  # returns +default_per_page+ value unless explicitly overridden via <tt>paginates_per</tt>
  #
  # source://kaminari-core//lib/kaminari/models/configuration_methods.rb#19
  def default_per_page; end

  # Overrides the max_pages value per model when a value is given
  #   class Article < ActiveRecord::Base
  #     max_pages 100
  #   end
  #
  # Also returns this model's max_pages value (globally configured
  # +max_pages+ value unless explicitly overridden) when no value is given
  #
  # source://kaminari-core//lib/kaminari/models/configuration_methods.rb#44
  def max_pages(val = T.unsafe(nil)); end

  # source://kaminari-core//lib/kaminari/models/configuration_methods.rb#54
  def max_pages_per(val); end

  # Overrides the max +per_page+ value per model
  #   class Article < ActiveRecord::Base
  #     max_paginates_per 100
  #   end
  #
  # source://kaminari-core//lib/kaminari/models/configuration_methods.rb#27
  def max_paginates_per(val); end

  # This model's max +per_page+ value
  # returns +max_per_page+ value unless explicitly overridden via <tt>max_paginates_per</tt>
  #
  # source://kaminari-core//lib/kaminari/models/configuration_methods.rb#33
  def max_per_page; end

  # Overrides the default +per_page+ value per model
  #   class Article < ActiveRecord::Base
  #     paginates_per 10
  #   end
  #
  # source://kaminari-core//lib/kaminari/models/configuration_methods.rb#13
  def paginates_per(val); end
end

# source://kaminari-core//lib/kaminari/engine.rb#4
class Kaminari::Engine < ::Rails::Engine; end

# source://kaminari-core//lib/kaminari/helpers/tags.rb#4
module Kaminari::Helpers; end

# Link with page number that appears at the leftmost
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#103
class Kaminari::Helpers::FirstPage < ::Kaminari::Helpers::Tag
  include ::Kaminari::Helpers::Link

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#105
  def page; end
end

# Non-link tag that stands for skipped pages...
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#161
class Kaminari::Helpers::Gap < ::Kaminari::Helpers::Tag; end

# source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#98
module Kaminari::Helpers::HelperMethods
  include ::Kaminari::Helpers::UrlHelper

  # A simple "Twitter like" pagination link that creates a link to the next page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= link_to_next_page @items, 'Next Page' %>
  #
  # Ajax:
  #
  #   <%= link_to_next_page @items, 'Next Page', remote: true %>
  #
  # By default, it renders nothing if there are no more results on the next page.
  # You can customize this output by passing a block.
  #
  #   <%= link_to_next_page @users, 'Next Page' do %>
  #     <span>No More Pages</span>
  #   <% end %>
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#172
  def link_to_next_page(scope, name, **options); end

  # A simple "Twitter like" pagination link that creates a link to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= link_to_previous_page @items, 'Previous Page' %>
  #
  # Ajax:
  #
  #   <%= link_to_previous_page @items, 'Previous Page', remote: true %>
  #
  # By default, it renders nothing if there are no more results on the previous page.
  # You can customize this output by passing a block.
  #
  #   <%= link_to_previous_page @users, 'Previous Page' do %>
  #     <span>At the Beginning</span>
  #   <% end %>
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#141
  def link_to_prev_page(scope, name, **options); end

  # A simple "Twitter like" pagination link that creates a link to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= link_to_previous_page @items, 'Previous Page' %>
  #
  # Ajax:
  #
  #   <%= link_to_previous_page @items, 'Previous Page', remote: true %>
  #
  # By default, it renders nothing if there are no more results on the previous page.
  # You can customize this output by passing a block.
  #
  #   <%= link_to_previous_page @users, 'Previous Page' do %>
  #     <span>At the Beginning</span>
  #   <% end %>
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#141
  def link_to_previous_page(scope, name, **options); end

  # Renders a helpful message with numbers of displayed vs. total entries.
  # Ported from mislav/will_paginate
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= page_entries_info @posts %>
  #   #-> Displaying posts 6 - 10 of 26 in total
  #
  # By default, the message will use the humanized class name of objects
  # in collection: for instance, "project types" for ProjectType models.
  # The namespace will be cutted out and only the last name will be used.
  # Override this with the <tt>:entry_name</tt> parameter:
  #
  #   <%= page_entries_info @posts, entry_name: 'item' %>
  #   #-> Displaying items 6 - 10 of 26 in total
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#201
  def page_entries_info(collection, entry_name: T.unsafe(nil)); end

  # A helper that renders the pagination links.
  #
  #   <%= paginate @articles %>
  #
  # ==== Options
  # * <tt>:window</tt> - The "inner window" size (4 by default).
  # * <tt>:outer_window</tt> - The "outer window" size (0 by default).
  # * <tt>:left</tt> - The "left outer window" size (0 by default).
  # * <tt>:right</tt> - The "right outer window" size (0 by default).
  # * <tt>:params</tt> - url_for parameters for the links (:controller, :action, etc.)
  # * <tt>:param_name</tt> - parameter name for page number in the links (:page by default)
  # * <tt>:remote</tt> - Ajax? (false by default)
  # * <tt>:paginator_class</tt> - Specify a custom Paginator (Kaminari::Helpers::Paginator by default)
  # * <tt>:template</tt> - Specify a custom template renderer for rendering the Paginator (receiver by default)
  # * <tt>:ANY_OTHER_VALUES</tt> - Any other hash key & values would be directly passed into each tag as :locals value.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#116
  def paginate(scope, paginator_class: T.unsafe(nil), template: T.unsafe(nil), **options); end

  # Renders rel="next" and rel="prev" links to be used in the head.
  #
  # ==== Examples
  # Basic usage:
  #
  #   In head:
  #   <head>
  #     <title>My Website</title>
  #     <%= yield :head %>
  #   </head>
  #
  #   Somewhere in body:
  #   <% content_for :head do %>
  #     <%= rel_next_prev_link_tags @items %>
  #   <% end %>
  #
  #   #-> <link rel="next" href="/items/page/3"><link rel="prev" href="/items/page/1">
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#236
  def rel_next_prev_link_tags(scope, options = T.unsafe(nil)); end
end

# Link with page number that appears at the rightmost
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#111
class Kaminari::Helpers::LastPage < ::Kaminari::Helpers::Tag
  include ::Kaminari::Helpers::Link

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#113
  def page; end
end

# Tag that contains a link
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#74
module Kaminari::Helpers::Link
  # target page number
  #
  # source://kaminari-core//lib/kaminari/helpers/tags.rb#76
  def page; end

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#83
  def to_s(locals = T.unsafe(nil)); end

  # the link's href
  #
  # source://kaminari-core//lib/kaminari/helpers/tags.rb#80
  def url; end
end

# The "next" page of the current page
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#140
class Kaminari::Helpers::NextPage < ::Kaminari::Helpers::Tag
  include ::Kaminari::Helpers::Link

  # TODO: Remove this initializer before 1.3.0.
  #
  # @return [NextPage] a new instance of NextPage
  #
  # source://kaminari-core//lib/kaminari/helpers/tags.rb#144
  def initialize(template, params: T.unsafe(nil), param_name: T.unsafe(nil), theme: T.unsafe(nil), views_prefix: T.unsafe(nil), **options); end

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#155
  def page; end
end

# source://kaminari-core//lib/kaminari/helpers/tags.rb#5
Kaminari::Helpers::PARAM_KEY_EXCEPT_LIST = T.let(T.unsafe(nil), Array)

# A page
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#90
class Kaminari::Helpers::Page < ::Kaminari::Helpers::Tag
  include ::Kaminari::Helpers::Link

  # target page number
  #
  # source://kaminari-core//lib/kaminari/helpers/tags.rb#93
  def page; end

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#96
  def to_s(locals = T.unsafe(nil)); end
end

# The main container tag
#
# source://kaminari-core//lib/kaminari/helpers/paginator.rb#9
class Kaminari::Helpers::Paginator < ::Kaminari::Helpers::Tag
  # @return [Paginator] a new instance of Paginator
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#10
  def initialize(template, window: T.unsafe(nil), outer_window: T.unsafe(nil), left: T.unsafe(nil), right: T.unsafe(nil), inner_window: T.unsafe(nil), **options); end

  # enumerate each page providing PageProxy object as the block parameter
  # Because of performance reason, this doesn't actually enumerate all pages but pages that are seemingly relevant to the paginator.
  # "Relevant" pages are:
  # * pages inside the left outer window plus one for showing the gap tag
  # * pages inside the inner window plus one on the left plus one on the right for showing the gap tags
  # * pages inside the right outer window plus one for showing the gap tag
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#43
  def each_page; end

  # enumerate each page providing PageProxy object as the block parameter
  # Because of performance reason, this doesn't actually enumerate all pages but pages that are seemingly relevant to the paginator.
  # "Relevant" pages are:
  # * pages inside the left outer window plus one for showing the gap tag
  # * pages inside the inner window plus one on the left plus one on the right for showing the gap tags
  # * pages inside the right outer window plus one for showing the gap tag
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#43
  def each_relevant_page; end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#67
  def first_page_tag; end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#67
  def gap_tag; end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#67
  def last_page_tag; end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#67
  def next_page_tag; end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#61
  def page_tag(page); end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#67
  def prev_page_tag; end

  # render given block as a view template
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#28
  def render(&block); end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#73
  def to_s; end

  private

  # delegates view helper methods to @template
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#81
  def method_missing(name, *args, &block); end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#52
  def relevant_pages(options); end
end

# Wraps a "page number" and provides some utility methods
#
# source://kaminari-core//lib/kaminari/helpers/paginator.rb#87
class Kaminari::Helpers::Paginator::PageProxy
  include ::Comparable

  # @return [PageProxy] a new instance of PageProxy
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#90
  def initialize(options, page, last); end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#177
  def +(other); end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#181
  def -(other); end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#185
  def <=>(other); end

  # current page or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#100
  def current?; end

  # Should we display the link tag?
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#165
  def display_tag?; end

  # the first page or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#105
  def first?; end

  # inside the inner window or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#144
  def inside_window?; end

  # the last page or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#110
  def last?; end

  # within the left outer window or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#134
  def left_outer?; end

  # the next page or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#120
  def next?; end

  # the page number
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#95
  def number; end

  # The page number exceeds the range of pages or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#155
  def out_of_range?; end

  # the previous page or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#115
  def prev?; end

  # relationship with the current page
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#125
  def rel; end

  # within the right outer window or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#139
  def right_outer?; end

  # Current page is an isolated gap or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#149
  def single_gap?; end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#169
  def to_i; end

  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#173
  def to_s; end

  # The last rendered tag was "truncated" or not
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/helpers/paginator.rb#160
  def was_truncated?; end
end

# The "previous" page of the current page
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#119
class Kaminari::Helpers::PrevPage < ::Kaminari::Helpers::Tag
  include ::Kaminari::Helpers::Link

  # TODO: Remove this initializer before 1.3.0.
  #
  # @return [PrevPage] a new instance of PrevPage
  #
  # source://kaminari-core//lib/kaminari/helpers/tags.rb#123
  def initialize(template, params: T.unsafe(nil), param_name: T.unsafe(nil), theme: T.unsafe(nil), views_prefix: T.unsafe(nil), **options); end

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#134
  def page; end
end

# A tag stands for an HTML tag inside the paginator.
# Basically, a tag has its own partial template file, so every tag can be
# rendered into String using its partial template.
#
# The template file should be placed in your app/views/kaminari/ directory
# with underscored class name (besides the "Tag" class. Tag is an abstract
# class, so _tag partial is not needed).
#   e.g.)  PrevLink  ->  app/views/kaminari/_prev_link.html.erb
#
# When no matching templates were found in your app, the engine's pre
# installed template will be used.
#   e.g.)  Paginator  ->  $GEM_HOME/kaminari-x.x.x/app/views/kaminari/_paginator.html.erb
#
# source://kaminari-core//lib/kaminari/helpers/tags.rb#19
class Kaminari::Helpers::Tag
  # @return [Tag] a new instance of Tag
  #
  # source://kaminari-core//lib/kaminari/helpers/tags.rb#20
  def initialize(template, params: T.unsafe(nil), param_name: T.unsafe(nil), theme: T.unsafe(nil), views_prefix: T.unsafe(nil), **options); end

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#36
  def page_url_for(page); end

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#31
  def to_s(locals = T.unsafe(nil)); end

  private

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#44
  def params_for(page); end

  # source://kaminari-core//lib/kaminari/helpers/tags.rb#63
  def partial_path; end
end

# The Kaminari::Helpers::UrlHelper module provides useful methods for
# generating a path or url to a particular page. A class must implement the
# following methods:
#
#   * <tt>url_for</tt>: A method that generates an actual path
#   * <tt>params</tt>: A method that returns query string parameters
#   * <tt>request</tt>: A method that returns a Rack::Request object
#
# A normal Rails controller implements all the methods, which make it
# trivial to use this module:
#
# ==== Examples
#
#   class UsersController < ApplicationController
#     include Kaminari::Helpers::UrlHelper
#
#     def index
#       @users = User.page(1)
#
#       path_to_next_page(@items)
#       # => /items?page=2
#     end
#   end
#
# source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#30
module Kaminari::Helpers::UrlHelper
  # A helper that calculates the path to the next page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= path_to_next_page @items %>
  #   #-> /items?page=2
  #
  # It will return `nil` if there is no next page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#76
  def next_page_path(scope, options = T.unsafe(nil)); end

  # A helper that calculates the url to the next page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= next_page_url @items %>
  #   #-> http://www.example.org/items?page=2
  #
  # It will return `nil` if there is no next page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#41
  def next_page_url(scope, options = T.unsafe(nil)); end

  # A helper that calculates the path to the next page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= path_to_next_page @items %>
  #   #-> /items?page=2
  #
  # It will return `nil` if there is no next page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#76
  def path_to_next_page(scope, options = T.unsafe(nil)); end

  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#46
  def path_to_next_url(scope, options = T.unsafe(nil)); end

  # A helper that calculates the path to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= path_to_prev_page @items %>
  #   #-> /items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#90
  def path_to_prev_page(scope, options = T.unsafe(nil)); end

  # A helper that calculates the path to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= path_to_prev_page @items %>
  #   #-> /items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#90
  def path_to_previous_page(scope, options = T.unsafe(nil)); end

  # A helper that calculates the path to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= path_to_prev_page @items %>
  #   #-> /items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#90
  def prev_page_path(scope, options = T.unsafe(nil)); end

  # A helper that calculates the url to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= prev_page_url @items %>
  #   #-> http://www.example.org/items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#60
  def prev_page_url(scope, options = T.unsafe(nil)); end

  # A helper that calculates the path to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= path_to_prev_page @items %>
  #   #-> /items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#90
  def previous_page_path(scope, options = T.unsafe(nil)); end

  # A helper that calculates the url to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= prev_page_url @items %>
  #   #-> http://www.example.org/items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#60
  def previous_page_url(scope, options = T.unsafe(nil)); end

  # A helper that calculates the url to the next page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= next_page_url @items %>
  #   #-> http://www.example.org/items?page=2
  #
  # It will return `nil` if there is no next page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#41
  def url_to_next_page(scope, options = T.unsafe(nil)); end

  # A helper that calculates the url to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= prev_page_url @items %>
  #   #-> http://www.example.org/items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#60
  def url_to_prev_page(scope, options = T.unsafe(nil)); end

  # A helper that calculates the url to the previous page.
  #
  # ==== Examples
  # Basic usage:
  #
  #   <%= prev_page_url @items %>
  #   #-> http://www.example.org/items
  #
  # It will return `nil` if there is no previous page.
  #
  # source://kaminari-core//lib/kaminari/helpers/helper_methods.rb#60
  def url_to_previous_page(scope, options = T.unsafe(nil)); end
end

# source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#4
module Kaminari::PageScopeMethods
  # Current page number
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#47
  def current_page; end

  # Current per-page number
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#58
  def current_per_page; end

  # First page of the collection?
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#77
  def first_page?; end

  # Last page of the collection?
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#82
  def last_page?; end

  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#21
  def max_paginates_per(new_max_per_page); end

  # Next page number in the collection
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#67
  def next_page; end

  # Out of range of the collection?
  #
  # @return [Boolean]
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#87
  def out_of_range?; end

  # @raise [ArgumentError]
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#27
  def padding(num); end

  # Specify the <tt>per_page</tt> value for the preceding <tt>page</tt> scope
  #   Model.page(3).per(10)
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#7
  def per(num, max_per_page: T.unsafe(nil)); end

  # Previous page number in the collection
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#72
  def prev_page; end

  # Total number of pages
  #
  # source://kaminari-core//lib/kaminari/models/page_scope_methods.rb#35
  def total_pages; end
end

# Kind of Array that can paginate
#
# source://kaminari-core//lib/kaminari/models/array_extension.rb#6
class Kaminari::PaginatableArray < ::Array
  include ::Kaminari::ConfigurationMethods::ClassMethods

  # ==== Options
  # * <tt>:limit</tt> - limit
  # * <tt>:offset</tt> - offset
  # * <tt>:total_count</tt> - total_count
  # * <tt>:padding</tt> - padding
  #
  # @return [PaginatableArray] a new instance of PaginatableArray
  #
  # source://kaminari-core//lib/kaminari/models/array_extension.rb#18
  def initialize(original_array = T.unsafe(nil), limit: T.unsafe(nil), offset: T.unsafe(nil), total_count: T.unsafe(nil), padding: T.unsafe(nil)); end

  # Used for page_entry_info
  #
  # source://kaminari-core//lib/kaminari/models/array_extension.rb#37
  def entry_name(options = T.unsafe(nil)); end

  # returns another chunk of the original array
  #
  # source://kaminari-core//lib/kaminari/models/array_extension.rb#49
  def limit(num); end

  # source://activesupport/7.0.4/lib/active_support/core_ext/module/attr_internal.rb#33
  def limit_value; end

  # source://activesupport/7.0.4/lib/active_support/core_ext/module/attr_internal.rb#33
  def limit_value=(_arg0); end

  # returns another chunk of the original array
  #
  # source://kaminari-core//lib/kaminari/models/array_extension.rb#59
  def offset(num); end

  # source://activesupport/7.0.4/lib/active_support/core_ext/module/attr_internal.rb#33
  def offset_value; end

  # source://activesupport/7.0.4/lib/active_support/core_ext/module/attr_internal.rb#33
  def offset_value=(_arg0); end

  # source://kaminari-core//lib/kaminari/models/array_extension.rb#43
  def page(num = T.unsafe(nil)); end

  # total item numbers of the original array
  #
  # source://kaminari-core//lib/kaminari/models/array_extension.rb#54
  def total_count; end
end

# source://kaminari-core//lib/kaminari/models/array_extension.rb#9
Kaminari::PaginatableArray::ENTRY = T.let(T.unsafe(nil), String)

# source://kaminari-core//lib/kaminari/railtie.rb#5
class Kaminari::Railtie < ::Rails::Railtie; end

# source://kaminari-core//lib/kaminari/exceptions.rb#4
class Kaminari::ZeroPerPageOperation < ::ZeroDivisionError; end
