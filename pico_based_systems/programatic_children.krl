ruleset programatic_children {

  meta {
    name "Programatic Children"
    
    description "Ruleset for Pico Lesson on Pico Based Systems"

    author "PJW"

  }

  global {
  
  }

  rule createChildren{
    select when pico_systems child_requested
    pre{
      name = "Test_Child_" + math:random(999);
    }
    {
      createChild(name);
    }
    always{
      log("create child names " + name);
    }
  }

}