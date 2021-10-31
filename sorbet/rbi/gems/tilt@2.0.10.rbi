# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tilt` gem.
# Please instead update this file by running `bin/tapioca gem tilt`.

# typed: true

module Tilt
  class << self
    def [](file); end
    def current_template; end
    def default_mapping; end
    def lazy_map; end
    def new(file, line = T.unsafe(nil), options = T.unsafe(nil), &block); end
    def prefer(template_class, *extensions); end
    def register(template_class, *extensions); end
    def register_lazy(class_name, file, *extensions); end
    def registered?(ext); end
    def template_for(file); end
    def templates_for(file); end
  end
end

class Tilt::BuilderTemplate < ::Tilt::Template
  def evaluate(scope, locals, &block); end
  def precompiled_postamble(locals); end
  def precompiled_template(locals); end
  def prepare; end
end

class Tilt::CSVTemplate < ::Tilt::Template
  def precompiled(locals); end
  def precompiled_template(locals); end
  def prepare; end

  class << self
    def engine; end
  end
end

class Tilt::Cache
  def initialize; end

  def clear; end
  def fetch(*key); end
end

module Tilt::CompiledTemplates; end
class Tilt::Dummy; end

class Tilt::ERBTemplate < ::Tilt::Template
  def precompiled(locals); end
  def precompiled_postamble(locals); end
  def precompiled_preamble(locals); end
  def precompiled_template(locals); end
  def prepare; end

  class << self
    def default_output_variable; end
    def default_output_variable=(name); end
  end
end

Tilt::ERBTemplate::SUPPORTS_KVARGS = T.let(T.unsafe(nil), Array)

class Tilt::ErubiTemplate < ::Tilt::Template
  def precompiled_template(locals); end
  def prepare; end
end

class Tilt::EtanniTemplate < ::Tilt::Template
  def precompiled(locals); end
  def precompiled_template(locals); end
  def prepare; end
end

class Tilt::HamlTemplate < ::Tilt::Template
  def evaluate(scope, locals, &block); end
  def precompiled_template(locals); end
  def prepare; end
end

Tilt::LOCK = T.let(T.unsafe(nil), Thread::Mutex)

class Tilt::Mapping
  def initialize; end

  def [](file); end
  def extensions_for(template_class); end
  def lazy_map; end
  def new(file, line = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def register(template_class, *extensions); end
  def register_lazy(class_name, file, *extensions); end
  def registered?(ext); end
  def template_for(file); end
  def template_map; end
  def templates_for(file); end

  private

  def constant_defined?(name); end
  def initialize_copy(other); end
  def lazy?(ext); end
  def lazy_load(pattern); end
  def lookup(ext); end
  def split(file); end
end

Tilt::Mapping::LOCK = T.let(T.unsafe(nil), Monitor)

class Tilt::NokogiriTemplate < ::Tilt::Template
  def evaluate(scope, locals); end
  def precompiled_postamble(locals); end
  def precompiled_preamble(locals); end
  def precompiled_template(locals); end
  def prepare; end
end

Tilt::NokogiriTemplate::DOCUMENT_HEADER = T.let(T.unsafe(nil), Regexp)

class Tilt::PlainTemplate < ::Tilt::Template
  def evaluate(scope, locals, &block); end
  def prepare; end
end

class Tilt::RDocTemplate < ::Tilt::Template
  def allows_script?; end
  def evaluate(scope, locals, &block); end
  def markup; end
  def prepare; end
end

class Tilt::Redcarpet1Template < ::Tilt::Template
  def allows_script?; end
  def evaluate(scope, locals, &block); end
  def flags; end
  def prepare; end
end

Tilt::Redcarpet1Template::ALIAS = T.let(T.unsafe(nil), Hash)
Tilt::Redcarpet1Template::FLAGS = T.let(T.unsafe(nil), Array)

class Tilt::Redcarpet2Template < ::Tilt::Template
  def allows_script?; end
  def evaluate(scope, locals, &block); end
  def generate_renderer; end
  def prepare; end
end

Tilt::RedcarpetTemplate = Tilt::Redcarpet2Template

class Tilt::SassTemplate < ::Tilt::Template
  def allows_script?; end
  def evaluate(scope, locals, &block); end
  def prepare; end

  private

  def sass_options; end
end

Tilt::SassTemplate::Sass = SassC

class Tilt::ScssTemplate < ::Tilt::SassTemplate
  private

  def sass_options; end
end

class Tilt::SigilTemplate < ::Tilt::Template
  def allows_script?; end
  def evaluate(scope, locals, &block); end
  def prepare; end
end

class Tilt::StringTemplate < ::Tilt::Template
  def precompiled(locals); end
  def precompiled_template(locals); end
  def prepare; end
end

Tilt::TOPOBJECT = Tilt::CompiledTemplates

class Tilt::Template
  def initialize(file = T.unsafe(nil), line = T.unsafe(nil), options = T.unsafe(nil), &block); end

  def basename(suffix = T.unsafe(nil)); end
  def data; end
  def eval_file; end
  def file; end
  def line; end
  def metadata; end
  def name; end
  def options; end
  def render(scope = T.unsafe(nil), locals = T.unsafe(nil), &block); end

  protected

  def default_encoding; end
  def evaluate(scope, locals, &block); end
  def precompiled(local_keys); end
  def precompiled_postamble(local_keys); end
  def precompiled_preamble(local_keys); end
  def precompiled_template(local_keys); end
  def prepare; end

  private

  def binary(string); end
  def compile_template_method(local_keys, scope_class = T.unsafe(nil)); end
  def compiled_method(locals_keys, scope_class = T.unsafe(nil)); end
  def extract_encoding(script); end
  def extract_magic_comment(script); end
  def local_extraction(local_keys); end
  def read_template_file; end
  def unbind_compiled_method(method_name); end

  class << self
    def default_mime_type; end
    def default_mime_type=(value); end
    def metadata; end
  end
end

Tilt::VERSION = T.let(T.unsafe(nil), String)
