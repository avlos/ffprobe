describe Ffprobe do
  it "has a version number" do
    expect(Ffprobe::VERSION).not_to be nil
  end

  it "decodes the file correctly" do
    file = Ffprobe::MediaFile.new "data/big_buck_bunny_720p_1mb.mp4"
    codec_name = file.streams[0].codec_name
    expect(codec_name).to eq("h264")
  end
end
