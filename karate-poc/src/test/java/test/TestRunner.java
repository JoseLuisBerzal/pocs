package test;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

	@Karate.Test
	Karate testFirstIssue() {
		return Karate.run("FirstTest").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate testPostIssue() {
		return Karate.run("Post").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate testGetIssue() {
		return Karate.run("Get").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate testPutIssue() {
		return Karate.run("Put").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate testDeleteIssue() {
		return Karate.run("Delete").relativeTo(getClass());
	}
}
