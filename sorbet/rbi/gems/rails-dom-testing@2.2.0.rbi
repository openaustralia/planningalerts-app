# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rails-dom-testing` gem.
# Please instead update this file by running `bin/tapioca gem rails-dom-testing`.

# source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#3
module Rails
  class << self
    # source://railties/7.0.4.3/lib/rails.rb#38
    def app_class; end

    # source://railties/7.0.4.3/lib/rails.rb#38
    def app_class=(_arg0); end

    # source://railties/7.0.4.3/lib/rails.rb#39
    def application; end

    # source://railties/7.0.4.3/lib/rails.rb#37
    def application=(_arg0); end

    # source://railties/7.0.4.3/lib/rails.rb#123
    def autoloaders; end

    # source://railties/7.0.4.3/lib/rails.rb#50
    def backtrace_cleaner; end

    # source://railties/7.0.4.3/lib/rails.rb#38
    def cache; end

    # source://railties/7.0.4.3/lib/rails.rb#38
    def cache=(_arg0); end

    # source://railties/7.0.4.3/lib/rails.rb#46
    def configuration; end

    # source://railties/7.0.4.3/lib/rails.rb#72
    def env; end

    # source://railties/7.0.4.3/lib/rails.rb#79
    def env=(environment); end

    # source://railties/7.0.4.3/lib/rails.rb#90
    def error; end

    # source://railties/7.0.4.3/lib/rails/gem_version.rb#5
    def gem_version; end

    # source://railties/7.0.4.3/lib/rails.rb#103
    def groups(*groups); end

    # source://railties/7.0.4.3/lib/rails.rb#43
    def initialize!(*_arg0, **_arg1, &_arg2); end

    # source://railties/7.0.4.3/lib/rails.rb#43
    def initialized?(*_arg0, **_arg1, &_arg2); end

    # source://railties/7.0.4.3/lib/rails.rb#38
    def logger; end

    # source://railties/7.0.4.3/lib/rails.rb#38
    def logger=(_arg0); end

    # source://railties/7.0.4.3/lib/rails.rb#119
    def public_path; end

    # source://railties/7.0.4.3/lib/rails.rb#63
    def root; end

    # source://railties/7.0.4.3/lib/rails/version.rb#7
    def version; end
  end
end

# source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#4
module Rails::Dom; end

# source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#5
module Rails::Dom::Testing
  # source://rails-dom-testing//lib/rails/dom/testing.rb#12
  def default_html_version; end

  # source://rails-dom-testing//lib/rails/dom/testing.rb#12
  def default_html_version=(val); end

  class << self
    # source://rails-dom-testing//lib/rails/dom/testing.rb#12
    def default_html_version; end

    # source://rails-dom-testing//lib/rails/dom/testing.rb#12
    def default_html_version=(val); end

    # @return [Boolean]
    #
    # source://rails-dom-testing//lib/rails/dom/testing.rb#15
    def html5_support?; end

    # source://rails-dom-testing//lib/rails/dom/testing.rb#19
    def html_document(html_version: T.unsafe(nil)); end

    # source://rails-dom-testing//lib/rails/dom/testing.rb#26
    def html_document_fragment(html_version: T.unsafe(nil)); end

    private

    # source://rails-dom-testing//lib/rails/dom/testing.rb#34
    def choose_html_parser(parser_classes, html_version: T.unsafe(nil)); end
  end
end

# source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#6
module Rails::Dom::Testing::Assertions
  include ::Rails::Dom::Testing::Assertions::DomAssertions
  include ::Rails::Dom::Testing::Assertions::SelectorAssertions
end

# source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#7
module Rails::Dom::Testing::Assertions::DomAssertions
  # \Test two HTML strings for equivalency (e.g., equal even when attributes are in another order)
  #
  #   # assert that the referenced method generates the appropriate HTML string
  #   assert_dom_equal(
  #     '<a href="http://www.example.com">Apples</a>',
  #     link_to("Apples", "http://www.example.com"),
  #   )
  #
  # By default, the matcher will not pay attention to whitespace in text nodes (e.g., spaces
  # and newlines). If you want stricter matching with exact matching for whitespace, pass
  # <tt>strict: true</tt>:
  #
  #   # these assertions will both pass
  #   assert_dom_equal     "<div>\nfoo\n\</div>", "<div>foo</div>", strict: false
  #   assert_dom_not_equal "<div>\nfoo\n\</div>", "<div>foo</div>", strict: true
  #
  # The DOMs are created using an HTML parser specified by
  # Rails::Dom::Testing.default_html_version (either :html4 or :html5).
  #
  # When testing in a Rails application, the parser default can also be set by setting
  # +Rails.application.config.dom_testing_default_html_version+.
  #
  # If you want to specify the HTML parser just for a particular assertion, pass
  # <tt>html_version: :html4</tt> or <tt>html_version: :html5</tt> keyword arguments:
  #
  #   assert_dom_equal expected, actual, html_version: :html5
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#35
  def assert_dom_equal(expected, actual, message = T.unsafe(nil), strict: T.unsafe(nil), html_version: T.unsafe(nil)); end

  # The negated form of +assert_dom_equal+.
  #
  #   # assert that the referenced method does not generate the specified HTML string
  #   assert_dom_not_equal(
  #     '<a href="http://www.example.com">Apples</a>',
  #     link_to("Oranges", "http://www.example.com"),
  #   )
  #
  # By default, the matcher will not pay attention to whitespace in text nodes (e.g., spaces
  # and newlines). If you want stricter matching with exact matching for whitespace, pass
  # <tt>strict: true</tt>:
  #
  #   # these assertions will both pass
  #   assert_dom_equal     "<div>\nfoo\n\</div>", "<div>foo</div>", strict: false
  #   assert_dom_not_equal "<div>\nfoo\n\</div>", "<div>foo</div>", strict: true
  #
  # The DOMs are created using an HTML parser specified by
  # Rails::Dom::Testing.default_html_version (either :html4 or :html5).
  #
  # When testing in a Rails application, the parser default can also be set by setting
  # +Rails.application.config.dom_testing_default_html_version+.
  #
  # If you want to specify the HTML parser just for a particular assertion, pass
  # <tt>html_version: :html4</tt> or <tt>html_version: :html5</tt> keyword arguments:
  #
  #   assert_dom_not_equal expected, actual, html_version: :html5
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#68
  def assert_dom_not_equal(expected, actual, message = T.unsafe(nil), strict: T.unsafe(nil), html_version: T.unsafe(nil)); end

  protected

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#75
  def compare_doms(expected, actual, strict); end

  # @return [Boolean]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#128
  def equal_attribute?(attr, other_attr); end

  # @return [Boolean]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#115
  def equal_attribute_nodes?(nodes, other_nodes); end

  # @return [Boolean]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#107
  def equal_child?(child, other_child, strict); end

  # @return [Boolean]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#95
  def equal_children?(child, other_child, strict); end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#87
  def extract_children(node, strict); end

  private

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/dom_assertions.rb#133
  def fragment(text, html_version: T.unsafe(nil)); end
end

# Adds the +assert_dom+ method for use in Rails functional
# test cases, which can be used to make assertions on the response HTML of a controller
# action. You can also call +assert_dom+ within another +assert_dom+ to
# make assertions on elements selected by the enclosing assertion.
#
# Use +css_select+ to select elements without making an assertions, either
# from the response HTML or elements selected by the enclosing assertion.
#
# In addition to HTML responses, you can make the following assertions:
#
# * +assert_dom_encoded+ - Assertions on HTML encoded inside XML, for example for dealing with feed item descriptions.
# * +assert_dom_email+ - Assertions on the HTML body of an e-mail.
#
# source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/substitution_context.rb#7
module Rails::Dom::Testing::Assertions::SelectorAssertions
  # An assertion that selects elements and makes one or more equality tests.
  #
  # If the first argument is an element, selects all matching elements
  # starting from (and including) that element and all its children in
  # depth-first order.
  #
  # If no element is specified +assert_dom+ selects from
  # the element returned in +document_root_element+
  # unless +assert_dom+ is called from within an +assert_dom+ block.
  # Override +document_root_element+ to tell +assert_dom+ what to select from.
  # The default implementation raises an exception explaining this.
  #
  # When called with a block +assert_dom+ passes an array of selected elements
  # to the block. Calling +assert_dom+ from the block, with no element specified,
  # runs the assertion on the complete set of elements selected by the enclosing assertion.
  # Alternatively the array may be iterated through so that +assert_dom+ can be called
  # separately for each element.
  #
  #
  # ==== Example
  # If the response contains two ordered lists, each with four list elements then:
  #   assert_dom "ol" do |elements|
  #     elements.each do |element|
  #       assert_dom element, "li", 4
  #     end
  #   end
  #
  # will pass, as will:
  #   assert_dom "ol" do
  #     assert_dom "li", 8
  #   end
  #
  # The selector may be a CSS selector expression (String, Symbol, or Numeric) or an expression
  # with substitution values (Array).
  # Substitution uses a custom pseudo class match. Pass in whatever attribute you want to match (enclosed in quotes) and a ? for the substitution.
  # assert_dom returns nil if called with an invalid css selector.
  #
  # assert_dom "div:match('id', ?)", "id_string"
  # assert_dom "div:match('id', ?)", :id_string
  # assert_dom "div:match('id', ?)", 1
  # assert_dom "div:match('id', ?)", /\d+/
  #
  # === Equality Tests
  #
  # The equality test may be one of the following:
  # * <tt>true</tt> - Assertion is true if at least one element selected.
  # * <tt>false</tt> - Assertion is true if no element selected.
  # * <tt>String/Regexp</tt> - Assertion is true if the text value of at least
  #   one element matches the string or regular expression.
  # * <tt>Integer</tt> - Assertion is true if exactly that number of
  #   elements are selected.
  # * <tt>Range</tt> - Assertion is true if the number of selected
  #   elements fit the range.
  # If no equality test specified, the assertion is true if at least one
  # element selected.
  #
  # To perform more than one equality tests, use a hash with the following keys:
  # * <tt>:text</tt> - Narrow the selection to elements that have this text
  #   value (string or regexp).
  # * <tt>:html</tt> - Narrow the selection to elements that have this HTML
  #   content (string or regexp).
  # * <tt>:count</tt> - Assertion is true if the number of selected elements
  #   is equal to this value.
  # * <tt>:minimum</tt> - Assertion is true if the number of selected
  #   elements is at least this value.
  # * <tt>:maximum</tt> - Assertion is true if the number of selected
  #   elements is at most this value.
  #
  # If the method is called with a block, once all equality tests are
  # evaluated the block is called with an array of all matched elements.
  #
  #   # At least one form element
  #   assert_dom "form"
  #
  #   # Form element includes four input fields
  #   assert_dom "form input", 4
  #
  #   # Page title is "Welcome"
  #   assert_dom "title", "Welcome"
  #
  #   # Page title is "Welcome" and there is only one title element
  #   assert_dom "title", {count: 1, text: "Welcome"},
  #       "Wrong title or more than one title element"
  #
  #   # Page contains no forms
  #   assert_dom "form", false, "This page must contain no forms"
  #
  #   # Test the content and style
  #   assert_dom "body div.header ul.menu"
  #
  #   # Use substitution values
  #   assert_dom "ol>li:match('id', ?)", /item-\d+/
  #
  #   # All input fields in the form have a name
  #   assert_dom "form input" do
  #     assert_dom ":match('name', ?)", /.+/  # Not empty
  #   end
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#163
  def assert_dom(*args, &block); end

  # Extracts the body of an email and runs nested assertions on it.
  #
  # You must enable deliveries for this assertion to work, use:
  #   ActionMailer::Base.perform_deliveries = true
  #
  # Example usage:
  #
  #   assert_dom_email do
  #     assert_dom "h1", "Email alert"
  #   end
  #
  #   assert_dom_email do
  #     items = assert_dom "ol>li"
  #     items.each do
  #        # Work with items here...
  #     end
  #   end
  #
  # The DOM is created using an HTML parser specified by
  # Rails::Dom::Testing.default_html_version (either :html4 or :html5).
  #
  # When testing in a Rails application, the parser default can also be set by setting
  # +Rails.application.config.dom_testing_default_html_version+.
  #
  # If you want to specify the HTML parser just for a particular assertion, pass
  # <tt>html_version: :html4</tt> or <tt>html_version: :html5</tt> keyword arguments:
  #
  #   assert_dom_email(html_version: :html5) do
  #     assert_dom "h1", "Email alert"
  #   end
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#285
  def assert_dom_email(html_version: T.unsafe(nil), &block); end

  # Extracts the content of an element, treats it as encoded HTML and runs
  # nested assertion on it.
  #
  # You typically call this method within another assertion to operate on
  # all currently selected elements. You can also pass an element or array
  # of elements.
  #
  # The content of each element is un-encoded, and wrapped in the root
  # element +encoded+. It then calls the block with all un-encoded elements.
  #
  #   # Selects all bold tags from within the title of an Atom feed's entries (perhaps to nab a section name prefix)
  #   assert_dom "feed[xmlns='http://www.w3.org/2005/Atom']" do
  #     # Select each entry item and then the title item
  #     assert_dom "entry>title" do
  #       # Run assertions on the encoded title elements
  #       assert_dom_encoded do
  #         assert_dom "b"
  #       end
  #     end
  #   end
  #
  #
  #   # Selects all paragraph tags from within the description of an RSS feed
  #   assert_dom "rss[version=2.0]" do
  #     # Select description element of each feed item.
  #     assert_dom "channel>item>description" do
  #       # Run assertions on the encoded elements.
  #       assert_dom_encoded do
  #         assert_dom "p"
  #       end
  #     end
  #   end
  #
  # The DOM is created using an HTML parser specified by
  # Rails::Dom::Testing.default_html_version (either :html4 or :html5).
  #
  # When testing in a Rails application, the parser default can also be set by setting
  # +Rails.application.config.dom_testing_default_html_version+.
  #
  # If you want to specify the HTML parser just for a particular assertion, pass
  # <tt>html_version: :html4</tt> or <tt>html_version: :html5</tt> keyword arguments:
  #
  #   assert_dom "feed[xmlns='http://www.w3.org/2005/Atom']" do
  #     assert_dom "entry>title" do
  #       assert_dom_encoded(html_version: :html5) do
  #         assert_dom "b"
  #       end
  #     end
  #   end
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#232
  def assert_dom_encoded(element = T.unsafe(nil), html_version: T.unsafe(nil), &block); end

  # An assertion that selects elements and makes one or more equality tests.
  #
  # If the first argument is an element, selects all matching elements
  # starting from (and including) that element and all its children in
  # depth-first order.
  #
  # If no element is specified +assert_dom+ selects from
  # the element returned in +document_root_element+
  # unless +assert_dom+ is called from within an +assert_dom+ block.
  # Override +document_root_element+ to tell +assert_dom+ what to select from.
  # The default implementation raises an exception explaining this.
  #
  # When called with a block +assert_dom+ passes an array of selected elements
  # to the block. Calling +assert_dom+ from the block, with no element specified,
  # runs the assertion on the complete set of elements selected by the enclosing assertion.
  # Alternatively the array may be iterated through so that +assert_dom+ can be called
  # separately for each element.
  #
  #
  # ==== Example
  # If the response contains two ordered lists, each with four list elements then:
  #   assert_dom "ol" do |elements|
  #     elements.each do |element|
  #       assert_dom element, "li", 4
  #     end
  #   end
  #
  # will pass, as will:
  #   assert_dom "ol" do
  #     assert_dom "li", 8
  #   end
  #
  # The selector may be a CSS selector expression (String, Symbol, or Numeric) or an expression
  # with substitution values (Array).
  # Substitution uses a custom pseudo class match. Pass in whatever attribute you want to match (enclosed in quotes) and a ? for the substitution.
  # assert_dom returns nil if called with an invalid css selector.
  #
  # assert_dom "div:match('id', ?)", "id_string"
  # assert_dom "div:match('id', ?)", :id_string
  # assert_dom "div:match('id', ?)", 1
  # assert_dom "div:match('id', ?)", /\d+/
  #
  # === Equality Tests
  #
  # The equality test may be one of the following:
  # * <tt>true</tt> - Assertion is true if at least one element selected.
  # * <tt>false</tt> - Assertion is true if no element selected.
  # * <tt>String/Regexp</tt> - Assertion is true if the text value of at least
  #   one element matches the string or regular expression.
  # * <tt>Integer</tt> - Assertion is true if exactly that number of
  #   elements are selected.
  # * <tt>Range</tt> - Assertion is true if the number of selected
  #   elements fit the range.
  # If no equality test specified, the assertion is true if at least one
  # element selected.
  #
  # To perform more than one equality tests, use a hash with the following keys:
  # * <tt>:text</tt> - Narrow the selection to elements that have this text
  #   value (string or regexp).
  # * <tt>:html</tt> - Narrow the selection to elements that have this HTML
  #   content (string or regexp).
  # * <tt>:count</tt> - Assertion is true if the number of selected elements
  #   is equal to this value.
  # * <tt>:minimum</tt> - Assertion is true if the number of selected
  #   elements is at least this value.
  # * <tt>:maximum</tt> - Assertion is true if the number of selected
  #   elements is at most this value.
  #
  # If the method is called with a block, once all equality tests are
  # evaluated the block is called with an array of all matched elements.
  #
  #   # At least one form element
  #   assert_dom "form"
  #
  #   # Form element includes four input fields
  #   assert_dom "form input", 4
  #
  #   # Page title is "Welcome"
  #   assert_dom "title", "Welcome"
  #
  #   # Page title is "Welcome" and there is only one title element
  #   assert_dom "title", {count: 1, text: "Welcome"},
  #       "Wrong title or more than one title element"
  #
  #   # Page contains no forms
  #   assert_dom "form", false, "This page must contain no forms"
  #
  #   # Test the content and style
  #   assert_dom "body div.header ul.menu"
  #
  #   # Use substitution values
  #   assert_dom "ol>li:match('id', ?)", /item-\d+/
  #
  #   # All input fields in the form have a name
  #   assert_dom "form input" do
  #     assert_dom ":match('name', ?)", /.+/  # Not empty
  #   end
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#163
  def assert_select(*args, &block); end

  # Extracts the body of an email and runs nested assertions on it.
  #
  # You must enable deliveries for this assertion to work, use:
  #   ActionMailer::Base.perform_deliveries = true
  #
  # Example usage:
  #
  #   assert_dom_email do
  #     assert_dom "h1", "Email alert"
  #   end
  #
  #   assert_dom_email do
  #     items = assert_dom "ol>li"
  #     items.each do
  #        # Work with items here...
  #     end
  #   end
  #
  # The DOM is created using an HTML parser specified by
  # Rails::Dom::Testing.default_html_version (either :html4 or :html5).
  #
  # When testing in a Rails application, the parser default can also be set by setting
  # +Rails.application.config.dom_testing_default_html_version+.
  #
  # If you want to specify the HTML parser just for a particular assertion, pass
  # <tt>html_version: :html4</tt> or <tt>html_version: :html5</tt> keyword arguments:
  #
  #   assert_dom_email(html_version: :html5) do
  #     assert_dom "h1", "Email alert"
  #   end
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#285
  def assert_select_email(html_version: T.unsafe(nil), &block); end

  # Extracts the content of an element, treats it as encoded HTML and runs
  # nested assertion on it.
  #
  # You typically call this method within another assertion to operate on
  # all currently selected elements. You can also pass an element or array
  # of elements.
  #
  # The content of each element is un-encoded, and wrapped in the root
  # element +encoded+. It then calls the block with all un-encoded elements.
  #
  #   # Selects all bold tags from within the title of an Atom feed's entries (perhaps to nab a section name prefix)
  #   assert_dom "feed[xmlns='http://www.w3.org/2005/Atom']" do
  #     # Select each entry item and then the title item
  #     assert_dom "entry>title" do
  #       # Run assertions on the encoded title elements
  #       assert_dom_encoded do
  #         assert_dom "b"
  #       end
  #     end
  #   end
  #
  #
  #   # Selects all paragraph tags from within the description of an RSS feed
  #   assert_dom "rss[version=2.0]" do
  #     # Select description element of each feed item.
  #     assert_dom "channel>item>description" do
  #       # Run assertions on the encoded elements.
  #       assert_dom_encoded do
  #         assert_dom "p"
  #       end
  #     end
  #   end
  #
  # The DOM is created using an HTML parser specified by
  # Rails::Dom::Testing.default_html_version (either :html4 or :html5).
  #
  # When testing in a Rails application, the parser default can also be set by setting
  # +Rails.application.config.dom_testing_default_html_version+.
  #
  # If you want to specify the HTML parser just for a particular assertion, pass
  # <tt>html_version: :html4</tt> or <tt>html_version: :html5</tt> keyword arguments:
  #
  #   assert_dom "feed[xmlns='http://www.w3.org/2005/Atom']" do
  #     assert_dom "entry>title" do
  #       assert_dom_encoded(html_version: :html5) do
  #         assert_dom "b"
  #       end
  #     end
  #   end
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#232
  def assert_select_encoded(element = T.unsafe(nil), html_version: T.unsafe(nil), &block); end

  # Select and return all matching elements.
  #
  # If called with a single argument, uses that argument as a selector.
  # Called without an element +css_select+ selects from
  # the element returned in +document_root_element+
  #
  # The default implementation of +document_root_element+ raises an exception explaining this.
  #
  # Returns an empty Nokogiri::XML::NodeSet if no match is found.
  #
  # If called with two arguments, uses the first argument as the root
  # element and the second argument as the selector. Attempts to match the
  # root element and any of its children.
  # Returns an empty Nokogiri::XML::NodeSet if no match is found.
  #
  # The selector may be a CSS selector expression (String).
  # css_select returns nil if called with an invalid css selector.
  #
  #   # Selects all div tags
  #   divs = css_select("div")
  #
  #   # Selects all paragraph tags and does something interesting
  #   pars = css_select("p")
  #   pars.each do |par|
  #     # Do something fun with paragraphs here...
  #   end
  #
  #   # Selects all list items in unordered lists
  #   items = css_select("ul>li")
  #
  #   # Selects all form tags and then all inputs inside the form
  #   forms = css_select("form")
  #   forms.each do |form|
  #     inputs = css_select(form, "input")
  #     ...
  #   end
  #
  # @raise [ArgumentError]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#58
  def css_select(*args); end

  private

  # +equals+ must contain :minimum, :maximum and :count keys
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#307
  def assert_size_match!(size, equals, css_selector, message = T.unsafe(nil)); end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#319
  def count_description(min, max, count); end

  # @raise [NotImplementedError]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#301
  def document_root_element; end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#335
  def nest_selection(selection); end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#344
  def nodeset(node); end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions.rb#331
  def pluralize_element(quantity); end
end

# source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#12
class Rails::Dom::Testing::Assertions::SelectorAssertions::HTMLSelector
  include ::Minitest::Assertions

  # @return [HTMLSelector] a new instance of HTMLSelector
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#17
  def initialize(values, previous_selection = T.unsafe(nil), &root_fallback); end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#46
  def context; end

  # Returns the value of attribute css_selector.
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#13
  def css_selector; end

  # Returns the value of attribute message.
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#13
  def message; end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#39
  def select; end

  # @return [Boolean]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#33
  def selecting_no_body?; end

  # Returns the value of attribute tests.
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#13
  def tests; end

  private

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#100
  def extract_equality_tests; end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#72
  def extract_root(previous_selection, root_fallback); end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#89
  def extract_selectors; end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#48
  def filter(matches); end

  class << self
    # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#46
    def context; end
  end
end

# source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/html_selector.rb#44
Rails::Dom::Testing::Assertions::SelectorAssertions::HTMLSelector::NO_STRIP = T.let(T.unsafe(nil), Array)

# source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/substitution_context.rb#8
class Rails::Dom::Testing::Assertions::SelectorAssertions::SubstitutionContext
  # @return [SubstitutionContext] a new instance of SubstitutionContext
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/substitution_context.rb#9
  def initialize; end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/substitution_context.rb#20
  def match(matches, attribute, matcher); end

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/substitution_context.rb#13
  def substitute!(selector, values, format_for_presentation = T.unsafe(nil)); end

  private

  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/substitution_context.rb#25
  def matcher_for(value, format_for_presentation); end

  # @return [Boolean]
  #
  # source://rails-dom-testing//lib/rails/dom/testing/assertions/selector_assertions/substitution_context.rb#36
  def substitutable?(value); end
end

# source://rails-dom-testing//lib/rails/dom/testing/railtie.rb#6
class Rails::Dom::Testing::Railtie < ::Rails::Railtie; end
