<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

private ICommandExecutor executor
private ICapabilities capabilities
private IMouse mouse
private IKeyboard keyboard
private SessionId sessionId
private IWebStorage storage
private IApplicationCache appCache
private ILocationContext locationContext
private IFileDetector fileDetector
private RemoteWebElementFactory elementFactory
protected static TimeSpan DefaultCommandTimeout
private static String DefaultRemoteServerUrl

------METHODS:
public virtual IWebElement FindElement(By by)
public virtual ReadOnlyCollection`1 FindElements(By by)
public virtual Void Close()
public virtual Void Quit()
public virtual IOptions Manage()
public virtual INavigation Navigate()
public virtual ITargetLocator SwitchTo()
public virtual Object ExecuteScript(String script, Object[] args)
public virtual Object ExecuteAsyncScript(String script, Object[] args)
public virtual IWebElement FindElementById(String id)
public virtual ReadOnlyCollection`1 FindElementsById(String id)
public virtual IWebElement FindElementByClassName(String className)
public virtual ReadOnlyCollection`1 FindElementsByClassName(String className)
public virtual IWebElement FindElementByLinkText(String linkText)
public virtual ReadOnlyCollection`1 FindElementsByLinkText(String linkText)
public virtual IWebElement FindElementByPartialLinkText(String partialLinkText)
public virtual ReadOnlyCollection`1 FindElementsByPartialLinkText(String partialLinkText)
public virtual IWebElement FindElementByName(String name)
public virtual ReadOnlyCollection`1 FindElementsByName(String name)
public virtual IWebElement FindElementByTagName(String tagName)
public virtual ReadOnlyCollection`1 FindElementsByTagName(String tagName)
public virtual IWebElement FindElementByXPath(String xpath)
public virtual ReadOnlyCollection`1 FindElementsByXPath(String xpath)
public virtual IWebElement FindElementByCssSelector(String cssSelector)
public virtual ReadOnlyCollection`1 FindElementsByCssSelector(String cssSelector)
public virtual Screenshot GetScreenshot()
public virtual Void Dispose()
public virtual Void PerformActions(IList`1 actionSequenceList)
public virtual Void ResetInputState()
internal static String EscapeCssSelector(String selector)
internal Response InternalExecute(String driverCommandToExecute, Dictionary`2 parameters)
internal IWebElement GetElementFromResponse(Response response)
internal ReadOnlyCollection`1 GetElementsFromResponse(Response response)
protected virtual Void Dispose(Boolean disposing)
protected Void StartSession(ICapabilities desiredCapabilities)
protected virtual Dictionary`2 GetLegacyCapabilitiesDictionary(ICapabilities legacyCapabilities)
protected virtual Dictionary`2 GetCapabilitiesDictionary(ICapabilities capabilitiesToConvert)
protected virtual Response Execute(String driverCommandToExecute, Dictionary`2 parameters)
protected virtual Void StartClient()
protected virtual Void StopClient()
protected IWebElement FindElement(String mechanism, String value)
protected ReadOnlyCollection`1 FindElements(String mechanism, String value)
protected Object ExecuteScriptCommand(String script, String commandName, Object[] args)
private static Object ConvertObjectToJavaScriptObject(Object arg)
private static Object[] ConvertArgumentsToJavaScriptObjects(Object[] args)
private static Void UnpackAndThrowOnError(Response errorResponse)
private static ICapabilities ConvertOptionsToCapabilities(DriverOptions options)
private Object ParseJavaScriptReturnValue(Object responseValue)

</cfcomponent>