
import java.util.ListResourceBundle;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 1795545
 */
public class Messages extends ListResourceBundle {

    @Override
    protected Object[][] getContents() {
        return contents;
    }
    static final Object[][] contents = {
      {"count.one","One"},
      {"count.two","Two"},
      {"count.three","Three"},
    };
}
