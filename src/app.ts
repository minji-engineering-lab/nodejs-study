export const handler = async (event) => {
    console.log('Hello from Lambda! This will run every day at midnight.');
    return {
        statusCode: 200,
        body: JSON.stringify({ message: 'hello' }),
    };
  };
  