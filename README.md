# tools_installation_scripts
python 
The main difference is how we store and modify the data. A list is ordered and mutable, so we can add, remove, or modify elements. A tuple is also ordered, but it is immutable, so once we create it, we generally cannot change it. A set stores unique elements and is useful when we want to remove duplicates or perform set operations. For example, I would use a list for a collection that changes, a tuple for fixed data, and a set when uniqueness is important."

That's a very good 7-year-experience interview answer without sounding textbook.

One final cheat sheet
[]  → LIST       → Ordered + Changeable + Duplicates
()  → TUPLE      → Ordered + Fixed/Immutable
{}  → SET        → Unique values
{}  → DICTIONARY → Key → Value(A dictionary stores data in key-value pairs. I use it when I need to access a value using a meaningful key.")
employee = {
    "name": "John",
    "age": 30,
    "role": "DevOps"
}
