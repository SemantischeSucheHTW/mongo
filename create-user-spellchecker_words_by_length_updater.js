db.createUser(
{i
    user: "spellchecker_words_by_length_updater",
    pwd: "spellchecker_words_by_length_updater",
    roles: [
      { role: "readWrite", db: "default" }
    ]
});
