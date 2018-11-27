db.createUser(
{
    user: "genericparser",
    pwd: "genericparser",
    roles: [
      { role: "readWrite", db: "default" }
    ]
});
