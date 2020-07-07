defmodule BooksApiWeb.BookView do
  use BooksApiWeb, :view
  alias BooksApiWeb.BookView

  def render("index.json", %{books: books}) do
    %{data: render_many(books, BookView, "book.json")}
  end

  def render("show.json", %{book: book}) do
    %{data: render_one(book, BookView, "book.json")}
  end

  def render("book.json", %{book: book}) do
    %{id: book.id,
      title: book.title,
      isbn: book.isbn,
      description: book.description,
      price: book.price,
      authors: book.authors}
  end
end
