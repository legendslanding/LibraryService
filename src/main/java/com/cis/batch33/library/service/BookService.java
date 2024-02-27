package com.cis.batch33.library.service;

import com.cis.batch33.library.entity.LibraryBook;
import com.cis.batch33.library.repository.LibraryBookRepository;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Random;
@Service
public class BookService {
    //private Map<Long, Book> bookMap = new HashMap<>();
    @Autowired
    private LibraryBookRepository bookRepository;
    public LibraryBook createBook(LibraryBook book){

        // call the database
        //Integer bookId = new Random().nextInt();
        //book.setBookId(bookId);
        //bookMap.put(bookId, book);
        return  bookRepository.save(book);
    }

    public LibraryBook getBook(Integer bookId) {
        Optional<LibraryBook> bookOptional = bookRepository.findById(bookId);
        return  bookOptional.orElse(new LibraryBook());

    }

    public LibraryBook updateBook(LibraryBook LibraryBook) {
        //Integer bookId = LibraryBook.getBookId();
        //bookMap.put(bookId, book);
        return bookRepository.save(LibraryBook);
    }

    public void deleteBook(Integer bookId) {
        bookRepository.deleteById(bookId);
    }
}
