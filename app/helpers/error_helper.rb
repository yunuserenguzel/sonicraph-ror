module ErrorHelper
end

ErrorCodeUnknown = 100


ErrorCodeMissingParameter = 101
ErrorCodeInvalidParameter = 102
ErrorCodeInvalidParameterEmail = 1021

ErrorCodeParameterTypeError = 103
ErrorCodeParameterExists = 202
ErrorCodeEmailExists = 211
ErrorCodeUsernameExists = 212

ErrorCodePasswordMismatch = 220

ErrorCodeAuthenticationRequired = 401


ErrorCodeActiveRecordNotFound = 6000


ErrorCodeTextShouldNotBeEmpty = 6200

ErrorCodePermissionDenied = 310
ErrorCodeUsernameOrPasswordIsWrong = 320

ErrorDescriptionTable = {
  ErrorCodeUnknown => 'Unknown Error',
  ErrorCodePasswordMismatch => 'Password Mismatch',
  ErrorCodeInvalidParameter => "Invalid Parameter",
  ErrorCodeMissingParameter => 'Missing Parameter',
  ErrorCodeParameterExists => 'Parameter Exists ',
  ErrorCodeAuthenticationRequired => 'Authentication Required',
  ErrorCodeUsernameOrPasswordIsWrong => "Invalid username or password",
  ErrorCodeActiveRecordNotFound => "Active Record Not Found Error",
  ErrorCodeParameterTypeError => "Parameter Type Error",
  ErrorCodeTextShouldNotBeEmpty => "text should not be empty",
  ErrorCodePermissionDenied => "Permission Denied"

}