# _plugins/ruby_compat.rb
# Compatibility shim for older Jekyll/Liquid on Ruby >= 3.2

if RUBY_VERSION >= "3.2"
  class Object
    # Only define if it doesn't already exist (for older Rubies / GitHub Pages env)
    def tainted?
      false
    end unless method_defined?(:tainted?)
  end
end
