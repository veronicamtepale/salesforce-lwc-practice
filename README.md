# Salesforce Development Practice

This repository contains my hands-on Salesforce development exercises while learning **Lightning Web Components (LWC), Apex, SOQL, DML, and Salesforce development best practices**, while preparing for the **Salesforce Platform Developer I** certification.

The purpose of this repository is to document my progress and strengthen my Salesforce development skills through practical exercises, progressively moving from basic concepts to more realistic Salesforce development scenarios.

---

## Technologies

- Salesforce Platform
- Lightning Web Components (LWC)
- Apex
- SOQL
- DML
- JavaScript
- HTML
- CSS
- Salesforce CLI
- Visual Studio Code
- Git & GitHub

---

# Topics Practiced

## Lightning Web Components

### LWC Fundamentals

- Component structure
- HTML templates
- JavaScript properties
- Data binding
- Event handling
- `event.target.value`
- Conditional rendering with `lwc:if`, `lwc:elseif`, and `lwc:else`
- List rendering with `for:each`
- Iterators
- Component-scoped CSS
- Lightning Base Components

### Component Communication

- Public properties with `@api`
- Parent → Child communication
- Passing values from Parent → Child
- Passing objects from Parent → Child
- Public methods with `@api`
- Calling Child methods from a Parent component
- `this.template.querySelector()`
- Child → Parent communication with Custom Events
- Creating events with `CustomEvent`
- Sending data with `detail`
- Dispatching events with `dispatchEvent()`
- Handling Custom Events in the Parent component
- Reading event data with `event.detail`
- Event bubbling with `bubbles: true`
- Listening to Child events from Parent templates

### LWC Lifecycle Hooks

- `constructor()`
- `super()`
- `connectedCallback()`
- `renderedCallback()`
- `disconnectedCallback()`
- Parent and Child component lifecycle

---

## Apex

### Apex Fundamentals

- Variables and data types
- Conditional statements
- `if / else`
- Loops
- Methods
- Parameters
- Return types
- `static` methods
- `void` methods

### Collections

- `List`
- `Set`
- `Map`
- Iterating through collections
- Adding elements with `.add()`
- Checking collection size
- Using `.isEmpty()`
- Working with `Set<Id>`

### SOQL

- `SELECT`
- `WHERE`
- `LIMIT`
- `ORDER BY`
- Bind variables with `:`
- `IN`
- `COUNT()`
- `GROUP BY`
- Aggregate queries
- `AggregateResult`
- Casting query results
- `ALL ROWS`

### DML

- `insert`
- `update`
- `delete`
- `upsert`
- `undelete`

### Bulkification

- Processing multiple records with `List<Account>`
- Avoiding DML inside loops
- Collecting modified records before DML
- Performing a single DML operation on multiple records
- Filtering records before update
- Using `Set<Id>` for bulk SOQL queries
- Using `WHERE Id IN :idSet`

---

# Apex Practice Exercises

| Exercise | Concepts Practiced |
|---|---|
| `EmployeeCalculator` | Methods, parameters, conditionals and calculations |
| `SalaryAnalyzer` | `List<Decimal>`, loops and counters |
| `EmailAnalyzer` | `Set<String>` and duplicate removal |
| `EmployeeSalaryMap` | `Map<String, Decimal>`, `containsKey()` and `get()` |
| `AccountAnalyzer.getLargeAccounts()` | SOQL, `ORDER BY` and `LIMIT` |
| `AccountAnalyzer.countAccounts()` | `COUNT()` |
| `AccountAnalyzer.countAccountsByIndustry()` | `GROUP BY`, `COUNT()` and `AggregateResult` |
| `AccountAnalyzer.getAccountsByIndustry()` | SOQL filters and bind variables |
| `createSampleAccounts()` | Bulk `insert` |
| `updateAccountIndustry()` | SOQL + DML `update` |
| `deleteAccount()` | DML `delete` |
| `upsertAccount()` | Insert and update using `upsert` |
| `undeleteAccount()` | Deleted records, `ALL ROWS` and `undelete` |
| `massiveUpdate()` | Lists, loops, filtering, bulkification and bulk DML |

---

# Practice Components

| Component | Concepts Practiced |
|---|---|
| `helloWorld` | Basic LWC, data binding and conditional rendering |
| `employeeInfo` | Inputs, events and conditional rendering |
| `helloForEach` | Lists, `for:each` and `key` |
| Iterator exercise | `iterator`, `first` and `last` |
| `simpleInterestCalculator` | Inputs, event handlers and calculations |
| `simpleShapeCalculator` | Event handling and calculations |
| Public Property Parent/Child | `@api` and Parent → Child communication |
| `productList` / `productDetail` | Arrays, objects, `for:each` and Parent → Child communication |
| `textParent` / `textChild` | Public methods, `@api` and `querySelector()` |
| Lifecycle Hooks exercise | LWC component lifecycle |
| `eventParent` / `eventChild` | Child → Parent communication using `CustomEvent`, `detail` and `dispatchEvent()` |
| `bubbleParent` / `bubbleChild` | Child → Parent communication using `CustomEvent`, `detail`, `bubbles: true` and event handling |

---

# Current Learning Focus

I am currently focusing on strengthening my Apex programming skills by solving exercises progressively with less assistance.

The goal is to improve:

- Apex syntax
- Programming logic
- SOQL and DML
- Collections
- Bulkification
- Governor Limits
- Triggers
- Test Classes
- Apex + LWC integration
- Salesforce technical interview preparation

---

# Goal

My goal is to strengthen my Salesforce development skills through hands-on practice and build a solid foundation in:

- Lightning Web Components
- Apex
- SOQL
- DML
- Collections
- Bulkification
- Triggers
- Test Classes
- Salesforce development best practices

This repository also documents my preparation for the **Salesforce Platform Developer I certification** and future **Salesforce Developer technical interviews**.

---

# Progress

This repository will continue to evolve as I learn and practice new Salesforce development concepts.

New exercises will progressively combine multiple topics to simulate more realistic Salesforce development scenarios.