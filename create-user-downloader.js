db.createUser(
{
    user: "downloader",
    pwd: "downloader",
    roles: [
      { role: "readWrite", db: "default" }
    ]
});
