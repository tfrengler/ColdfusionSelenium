# DriverCommands.cfc
- Static class with list of available driver commands in the form of static strings

# CommandInfoRepo.cfc
- Contains list of basis command info:
    - full uri (from session/, including session- and elementid meta-strings)
    - http method
- Has CreateCommandUri() which accepts a base uri and a command instance
  This method will append the request path of the command to the base uri
  and will interpolate session/element-id in the requestpath along with extra params
- ????: CreateCommandUri: how does it know which elements to parse and interpolate?
        Does it just blindly try to interpolate anything from parameters in a loop?

# CommandRequestRepo.cfc
- Contains a list of expected body params for all driver commands? As a struct?
- And is each entry key a const string from DriverCommands?
    and each value is an array of body param names?

# CommandResponseRepo.cfc
- Contains methods to generate strongly typed return values

# Command.cfc
- Contains fields:
    - sessionID (string)
    - name (string, string const from DriverCommands)
    - parameters (struct, contains url and body params as key/value pairs, with value being any/object that is serializable)
- All three are required as part of the constructor but parameters can be empty

# CommandProcessor.cfc
- Takes a URI (the url to the webdriver) as a required argument
- Accepts Command-instances, sends them to the webdriver binary and parses responses
- Execute:
    - Gets info from CommandInfoRepo about Command
    - Creates the request URI using Info.CreateCommandUri, passing in the webdriver uri and Command
    - Gets body param info from CommandRequestRepo (if empty then no body is expected)
    - Interpolates the values from the matching keys in Command.Parameters into a JSON string
    - Does an HTTP call to the extrapolated URL with optionally the JSON body
    - Parses reponse into a new Response-instance
    - ???: The value-property of Response is filled how? Based on info from CommandResponseRepo?
        Maybe CommandResponseRepo has a list of methods per DriverCommand-entry that accepts
        the JSON-string from the remote endpoint and parses that into whatever the appropriate
        value is for that DriverCommand?
