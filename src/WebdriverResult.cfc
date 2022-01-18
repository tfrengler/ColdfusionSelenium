<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >
    <cfscript>
        static
        {
            Success =                   0; //	The action was successful.
            IndexOutOfBounds =          1; //	The index specified for the action was out of the acceptable range.
            NoCollection =              2; //	No collection was specified.
            NoString =                  3; //	No string was specified.
            NoStringLength =            4; //	No string length was specified.
            NoStringWrapper =           5; //	No string wrapper was specified.
            NoSuchDriver =              6; //	No driver matching the criteria exists.
            NoSuchElement =             7; //	No element matching the criteria exists.
            NoSuchFrame =               8; //	No frame matching the criteria exists.
            UnknownCommand =            9; //	The functionality is not supported.
            ObsoleteElement =           10; //	The specified element is no longer valid.
            ElementNotDisplayed =       11; //	The specified element is not displayed.
            InvalidElementState =       12; //	The specified element is not enabled.
            UnhandledError =            13; //	An unhandled error occurred.
            ExpectedError =             14; //	An error occurred, but it was expected.
            ElementNotSelectable =      15; //	The specified element is not selected.
            NoSuchDocument =            16; //	No document matching the criteria exists.
            UnexpectedJavaScriptError = 17; //	An unexpected JavaScript error occurred.
            NoScriptResult =            18; //	No result is available from the JavaScript execution.
            XPathLookupError =          19; //	The result from the JavaScript execution is not recognized.
            NoSuchCollection =          20; //	No collection matching the criteria exists.
            Timeout =                   21; //	A timeout occurred.
            NullPointer =               22; //	A null pointer was received.
            NoSuchWindow =              23; //	No window matching the criteria exists.
            InvalidCookieDomain =       24; //	An illegal attempt was made to set a cookie under a different domain than the current page.
            UnableToSetCookie =         25; //	A request to set a cookie's value could not be satisfied.
            UnexpectedAlertOpen =       26; //	An alert was found open unexpectedly.
            NoAlertPresent =            27; //	A request was made to switch to an alert, but no alert is currently open.
            AsyncScriptTimeout =        28; //	An asynchronous JavaScript execution timed out.
            InvalidElementCoordinates = 29; //	The coordinates of the element are invalid.
            InvalidSelector =           32; //	The selector used (CSS/XPath) was invalid.
            InsecureCertificate =       33; //	An insecure SSl certificate was specified.
            NoSuchCookie =              34; //	No cookie was found matching the name requested.
        }

        public static function GetAsString(required numeric value)
        {
            cfswitch(arguments.value)
            {
                case 0:
                    return "Success";
                    break;
                case 1:
                    return "IndexOutOfBounds";
                    break;
                case 2:
                    return "NoCollection";
                    break;
                case 3:
                    return "NoString";
                    break;
                case 4:
                    return "NoStringLength";
                    break;
                case 5:
                    return "NoStringWrapper";
                    break;
                case 6:
                    return "NoSuchDriver";
                    break;
                case 7:
                    return "NoSuchElement";
                    break;
                case 8:
                    return "NoSuchFrame";
                    break;
                case 9:
                    return "UnknownCommand";
                    break;
                case 10:
                    return "ObsoleteElement";
                    break;
                case 11:
                    return "ElementNotDisplayed";
                    break;
                case 12:
                    return "InvalidElementState";
                    break;
                case 13:
                    return "UnhandledError";
                    break;
                case 14:
                    return "ExpectedError";
                    break;
                case 15:
                    return "ElementNotSelectable";
                    break;
                case 16:
                    return "NoSuchDocument";
                    break;
                case 17:
                    return "UnexpectedJavaScriptError";
                    break;
                case 18:
                    return "NoScriptResult";
                    break;
                case 19:
                    return "XPathLookupError";
                    break;
                case 20:
                    return "NoSuchCollection";
                    break;
                case 21:
                    return "Timeout";
                    break;
                case 22:
                    return "NullPointer";
                    break;
                case 23:
                    return "NoSuchWindow";
                    break;
                case 24:
                    return "InvalidCookieDomain";
                    break;
                case 25:
                    return "UnableToSetCookie";
                    break;
                case 26:
                    return "UnexpectedAlertOpen";
                    break;
                case 27:
                    return "NoAlertPresent";
                    break;
                case 28:
                    return "AsyncScriptTimeout";
                    break;
                case 29:
                    return "InvalidElementCoordinates";
                    break;
                case 32:
                    return "InvalidSelector";
                    break;
                case 33:
                    return "InsecureCertificate";
                    break;
                case 34:
                    return "NoSuchCookie";
                    break;
                default:
                    throw("Invalid argument value: #arguments.value#");
                    break;
            }
        }
    </cfscript>
</cfcomponent>