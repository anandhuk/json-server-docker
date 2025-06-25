module.exports = (req, res, next) => {
  if (req.method === 'POST' && req.path === '/login') {
    res.status(200).json({ token: 'fake-jwt-token' });
  } else {
    next();
  }
}