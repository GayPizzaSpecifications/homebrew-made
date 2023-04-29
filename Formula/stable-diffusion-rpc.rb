class StableDiffusionRpc < Formula
  desc "Stable Diffusion on Apple Platforms over gRPC"
  homepage "https://github.com/GayPizzaSpecifications/stable-diffusion-rpc"

  url "https://github.com/GayPizzaSpecifications/stable-diffusion-rpc/releases/download/v0.1.0/stable-diffusion-rpc"
  sha256 "81d645d85f58218b7d92e053a12b2fe8232dccff743244c151ce0bb13c4b4c34"
  license "MIT"

  def install
    bin.install Dir["*"]
  end

  def post_install
    (prefix/"models").mkpath
  end

  service do
    run [opt_bin/"stable-diffusion-rpc"]
    keep_alive true
    working_dir opt_prefix
  end
end
