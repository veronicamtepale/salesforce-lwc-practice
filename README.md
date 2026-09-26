# Salesforce LWC Practice

This repository contains my hands-on Salesforce development exercises while learning **Lightning Web Components (LWC)** and preparing for the **Salesforce Platform Developer I** certification.

The purpose of this repository is to document my progress and practice Salesforce development concepts through small, practical components.

## Technologies

- Salesforce Platform
- Lightning Web Components (LWC)
- JavaScript
- HTML
- CSS
- Salesforce CLI
- Visual Studio Code
- Git & GitHub

## Topics Practiced

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

## Practice Components

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

## Goal

My goal is to strengthen my Salesforce development skills through hands-on practice and build a solid foundation in LWC, Apex, SOQL, DML, Triggers, testing, and other concepts required for Salesforce development and the Platform Developer I certification.

## Progress

This repository will continue to evolve as I learn and practice new Salesforce development concepts.