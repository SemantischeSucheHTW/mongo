db.createUser(
{
    user: "rawpagewriter",
    pwd: "rawpagewriter",
    roles: [
      { role: "readWrite", db: "default" }
    ]
});
