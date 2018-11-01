module RailsExamHelper
  def fullname(family_name,first_name)
    family_name + first_name
  end
  def author_list(authors)
    authorList = []
    authors.each do |author|
      authorList << [fullname(author.family_name, author.first_name), author.id]
    end
    authorList
  end
end
