



export class CustomError extends Error {

  constructor(
    statusCode,
    message
  ) {
    this.statusCode = statusCode;
    super(message);
  }

  static badRequest(message) {
    return new CustomError(400, message);
  }

  static unauthorized(message) {
    return new CustomError(401, message);
  }

  static forbidden(message) {
    return new CustomError(403, message);
  }

  static notFound(message) {
    return new CustomError(404, message);
  }

  static internalServer(message = 'Internal Server Error') {
    return new CustomError(500, message);
  }

}