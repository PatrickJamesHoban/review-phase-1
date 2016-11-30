# require_relative 'sock'
# require_relative 'sock_matcher'

class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { Array.new }
    @matcher = args.fetch(:matcher)
  end

  def supply_match_for(sock)
    @socks.each do |test_sock|
      matcher.match?(test_sock, sock)
      return test_sock if true
    end
  end

end

# ## WHAT I KNOW...
# # sock_matcher_spec passes all tests at start
# # sock_spec passes all tests at start
# # sock_drawer_spec passes 2 of 11 tests...

# ##DRIVER CODE
# first_white_sock = Sock.new(brand: "Nike", style: "quarter", color: "white")
# second_white_sock = Sock.new(brand: "Nike", style: "quarter", color: "white")
# dressy_red_sock = Sock.new(brand: "Xiaomi", style: "sporty", color: "red")
# first_red_sock = Sock.new(brand: "Nike", style: "quarter", color: "red")
# first_black_sock = Sock.new(brand: "Nike", style: "quarter", color: "black")
# sporty_red_nike = Sock.new(brand: "Nike", style: "sporty", color: "red")

# matcher = SockMatcher.new

# socks = [first_black_sock, first_white_sock, sporty_red_nike, first_red_sock, second_white_sock, dressy_red_sock]

# drawer = SockDrawer.new(socks: socks, matcher: matcher)

# second_red_sock = Sock.new(brand: "Nike", style: "quarter", color: "red")

# drawer.supply_match_for(second_red_sock)

