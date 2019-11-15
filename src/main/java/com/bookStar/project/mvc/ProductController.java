package com.bookStar.project.mvc;

import com.bookStar.project.bookstar.domain.Books;
import com.bookStar.project.bookstar.service.BooksService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;

@Controller
@RequestMapping("/books")
public class ProductController {

    private static Logger LOGGER = LoggerFactory.getLogger("BooksController");


    @Autowired
    private BooksService booksService;

    @RequestMapping("/product/Hamlet")
    public ModelAndView hamlet(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Hamlet");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Throne_of_Glass")
    public ModelAndView throneOfGlass(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Throne_of_Glass");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Magnus_Chase_and_the_Sword_of_Summer")
    public ModelAndView magnusChaseAndTheSwordOfSummer(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Magnus_Chase_and_the_Sword_of_Summer");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Trials_OF_Apollo")
    public ModelAndView trialsOfApollo(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Trials_OF_Apollo");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Crucible")
    public ModelAndView theCrucible(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Crucible");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/To_Kill_A_Mockingbird")
    public ModelAndView toKillAMockingbird(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/To_Kill_A_Mockingbird");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Oceanic")
    public ModelAndView oceanic(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Oceanic");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Never_Tilting_World")
    public ModelAndView theNeverTiltingWorld(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Never_Tilting_World");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Crier's_War")
    public ModelAndView criersWar(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Crier's_War");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Ghoster")
    public ModelAndView ghoster(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Ghoster");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Now_Entering_Addamsville")
    public ModelAndView nowEnteringAddamsville(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Now_Entering_Addamsville");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Things_We_Say_In _The_Dark")
    public ModelAndView thingsWeSayInTheDark(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Things_We_Say_In _The_Dark");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Along_Came_A_Spider")
    public ModelAndView longCameASpider(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Along_Came_A_Spider");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Shack_Where_Tragedy_Confronts_Eternity")
    public ModelAndView theShackWhereTragedyConfrontsEternity(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Shack_Where_Tragedy_Confronts_Eternity");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Remaking_A_Novel")
    public ModelAndView theRemakingANovel(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Remaking_A_Novel");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Giver")
    public ModelAndView theGiver(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Giver");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Bestiary")
    public ModelAndView bestiary(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Bestiary");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Milk")
    public ModelAndView milk(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Milk");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Redeeming_Love")
    public ModelAndView redeemingLove(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Redeeming_Love");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/City_Of_Glass_The_Mortal_Instruments")
    public ModelAndView cityOfGlassTheMortalInstruments(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/City_Of_Glass_The_Mortal_Instruments");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Night_Circus")
    public ModelAndView theNightCircus(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Night_Circus");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/The_Road")
    public ModelAndView theRoad(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/The_Road");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Dark_Places")
    public ModelAndView darkPlaces(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Dark_Places");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
    @RequestMapping("/product/Fahrenheit")
    public ModelAndView fahrenheit(){
        Collection<Books> books = booksService.listAll();
        ModelAndView modelAndView = new ModelAndView("books/product/Fahrenheit");
        modelAndView.addObject("books", books);
        return modelAndView;
    }
}