# gc_user

## This app follows the clean architecture as recomended by flutter bloc package

### The main folder structure is as follows

```

└── lib
    ├── core
    │   ├── types
    │   ├── constants
    │   ├── error
    │   ├── style
    │   └── theme
    │
    ├── data
    │   ├── datsources (local or remote sources from where we get data)
    │   ├── models ( structures )
    │   └── repositories (implementaion of ones in domain layer)
    │ 
    ├── domain
    │   ├── repositories ( abstract classes that define the contract )
    │   ├── enteties (data types)
    │   └── usescases ( each event or interaction of user with app is a usecase ex- signup,login )
    │
    ├── ui -> this is presentation layer
    │   ├── bloc ( state management )
    │   ├── components ( reusable components )
    │   └── screens ( visible screens )
    │
    └── main.dart  

```     