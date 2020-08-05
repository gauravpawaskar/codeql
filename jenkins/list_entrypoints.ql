import java

from Method m, string regexp

where regexp = "do[\\w+]*" and 
    m.getName().regexpMatch(regexp) and 
    m.getNumberOfParameters() > 1 and 
    m.getParameterType(0).getName().matches("StaplerRequest") and
    m.getParameterType(1).getName().matches("StaplerResponse") and 
    m.getFile().getExtension().matches("java") and
    not m.getFile().toString().regexpMatch("[\\w+]*[tT]est")

select m, m.getFile()