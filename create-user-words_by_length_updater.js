db.createUser(
{i
    user: "words_by_length_updater",
    pwd: "words_by_length_updater",
    roles: [
      { role: "readWrite", db: "default" }
    ]
});
