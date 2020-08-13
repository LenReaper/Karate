package Feature;

import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

import com.intuit.karate.KarateOptions;

@RunWith(Karate.class)
@KarateOptions(features = "src/test/resources/employee.feature")
public class testRunner {

}
