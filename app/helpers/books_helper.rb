module BooksHelper
	def add_user_to_library? user, book
		user.libraries.where(user: user, book: book).any?
	end

end
