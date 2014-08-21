require "rails_helper"

describe "Chapter" do

  it "should validate the presence of name" do
    new_chapter = Chapter.create(name: "", number: 3)
    expect(new_chapter.save).to eq false
  end

  it "should validate the presence of number" do
    new_chapter = Chapter.create(name: "level1")
    expect(new_chapter.save).to eq false
  end

  it "should validate the numericality of number" do
    new_chapter = Chapter.create(name: "level1", number: 3.4)
    expect(new_chapter.save).to eq false
  end

end
