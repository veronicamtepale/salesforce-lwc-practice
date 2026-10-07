# Salesforce Development Practice

This repository contains my hands-on Salesforce development exercises while learning and practicing **Lightning Web Components (LWC), Apex, SOQL, DML, Triggers, and Salesforce development concepts**.

I am currently preparing for the **Salesforce Platform Developer I** certification and using this repository to document my progress as I continue building my skills as a Salesforce Developer.

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

## Topics Practiced

### Lightning Web Components

- Component structure
- HTML templates
- JavaScript properties
- Data binding
- Event handling
- Conditional rendering
- List rendering with `for:each`
- Iterators
- Lightning Base Components
- Public properties and methods with `@api`
- Parent → Child communication
- Child → Parent communication with Custom Events
- `event.detail`
- Event bubbling
- `this.template.querySelector()`
- Lifecycle Hooks:
  - `constructor()`
  - `connectedCallback()`
  - `renderedCallback()`
  - `disconnectedCallback()`

---

### Apex

- Variables and data types
- `if / else`
- Logical operators
- Loops
- Methods
- Parameters
- Return types
- `static`
- `void`
- Null handling

---

### Collections

- `List`
- `Set`
- `Map`
- `Set<Id>`
- `Map<Id, Account>`
- `.add()`
- `.put()`
- `.get()`
- `.containsKey()`
- `.isEmpty()`
- Iterating through collections
- Filtering records
- Working with record IDs

---

### SOQL

- `SELECT`
- `WHERE`
- `IN`
- `LIMIT`
- `ORDER BY`
- Bind variables with `:`
- `COUNT()`
- `GROUP BY`
- `AggregateResult`
- `ALL ROWS`

---

### DML

- `insert`
- `update`
- `delete`
- `upsert`
- `undelete`
- Working with multiple records
- Avoiding DML inside loops

---

### Apex Triggers

- `before insert`
- `before update`
- `after insert`
- `Trigger.new`
- `Trigger.oldMap`
- Comparing old and new values
- Updating fields before records are saved
- Creating related records after insert
- Basic trigger bulkification
- `after update`
- Comparing old and new field values
- Creating related records after an update

---

## Apex Practice Exercises

Some of the exercises included in this repository are:

| Exercise | Practice |
|---|---|
| `EmployeeCalculator` | Methods, parameters and conditionals |
| `SalaryAnalyzer` | Lists, loops and counters |
| `EmailAnalyzer` | Sets and duplicate removal |
| `EmployeeSalaryMap` | Maps and retrieving values |
| `AccountAnalyzer` | SOQL, DML, aggregate queries and record operations |
| `AccountMapExercise` | Converting a List into a Map |
| `AccountCollectionExercise` | Working with List, Set and Map |
| `AccountIndustryFilterExercise` | Filtering Accounts by multiple industries |
| `AccountAdvancedFilterExercise` | Multiple conditions and collections |
| `AccountNullHandlingExercise` | Null validation |
| `AccountIndustryTrigger` | `before insert` and `Trigger.new` |
| `AccountIndustryUpdateTrigger` | `before update` and `Trigger.oldMap` |
| `AccountContactAfterInsertTrigger` | `after insert` and creating related Contacts |
| `AccountHotRatingAfterUpdateTrigger` | `after update`, `Trigger.oldMap`, detecting field changes and creating related Tasks |

---

## LWC Practice Components

| Component | Practice |
|---|---|
| `helloWorld` | Basic LWC and data binding |
| `employeeInfo` | Inputs and events |
| `helloForEach` | Lists and `for:each` |
| Iterator exercise | Iterators |
| `simpleInterestCalculator` | Inputs and calculations |
| `simpleShapeCalculator` | Event handling and calculations |
| Public Property Parent/Child | `@api` and Parent → Child communication |
| `productList` / `productDetail` | Arrays, objects and component communication |
| `textParent` / `textChild` | Public methods and `querySelector()` |
| Lifecycle Hooks exercise | Component lifecycle |
| `eventParent` / `eventChild` | Custom Events |
| `bubbleParent` / `bubbleChild` | Event bubbling |

---

## Current Learning Focus

I am currently focused on improving my Apex programming skills and understanding how Salesforce development concepts work together.

My next areas of practice include:

- Apex Triggers
- Test Classes
- Governor Limits
- Exception handling
- Batch Apex
- Dynamic Apex
- Apex + LWC integration
- Salesforce technical interview practice

---

## Goal

My goal is to continue building a strong foundation in Salesforce development through hands-on practice.

This repository documents my learning process while preparing for the **Salesforce Platform Developer I certification** and growing toward a professional Salesforce Developer role.

---

## Progress

This repository will continue to evolve as I learn new concepts and complete more Salesforce development exercises.