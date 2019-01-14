db.createUser(
{
    user: "spellchecker_suggester",
    pwd: "spellchecker_suggester",
    roles: [
      { role: "readWrite", db: "default" }
    ]
});
