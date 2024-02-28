package com.cis.batch33.library.controller;

import com.cis.batch33.library.entity.LibraryBook;
//import com.cis.batch33.library.model.Book;
import com.cis.batch33.library.model.Book;
import com.cis.batch33.library.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/book")
public class BookController {
    @Autowired
    private BookService bookService;

    @GetMapping
    public Book getBook(Integer bookId){

        return bookService.getBook(bookId);
    }

    // create a book
    @PostMapping
    public LibraryBook createBook(@RequestBody LibraryBook book){
        return bookService.createBook(book);
    }

    @PutMapping
    public LibraryBook updateBook(@RequestBody LibraryBook LibraryBook){
        // Set the memberId for the member object to be updated
        return bookService.updateBook(LibraryBook);
    }

    @DeleteMapping
    public void deleteBook(Integer bookId){
        bookService.deleteBook(bookId);
    }
}
