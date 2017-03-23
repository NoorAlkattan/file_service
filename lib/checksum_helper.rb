module ChecksumHelper
  def compute_digest(file)
    sha256 = Digest::SHA256.file file
    sha256.hexdigest.upcase
  end
end