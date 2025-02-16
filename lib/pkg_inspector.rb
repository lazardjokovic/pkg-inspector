# lib/pkg_inspector.rb
require_relative "pkg_inspector/version"
require "tty-prompt"
require "tty-table"
require "pastel"

module PkgInspector
  def self.start
    prompt = TTY::Prompt.new
    pastel = Pastel.new

    puts pastel.green.bold("Welcome to Pkg-Inspector v#{VERSION}")

    choice = prompt.select("Select an action:", cycle: true) do |menu|
      menu.choice "List Installed Packages", :packages
      menu.choice "View Dependency Tree", :dependencies
      menu.choice "Show Security Updates", :security
      menu.choice "Exit", :exit
    end

    case choice
    when :packages
      puts pastel.cyan("🗂️ Listing Installed Packages... (Coming Soon)")
    when :dependencies
      puts pastel.cyan("📂 Viewing Dependency Tree... (Coming Soon)")
    when :security
      puts pastel.cyan("🛡️ Showing Security Updates... (Coming Soon)")
    when :exit
      puts pastel.yellow("Goodbye!")
    end
  end
end

