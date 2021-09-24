using app.expenses from '../db/expenses';

service CatalogService @(path : 'CatalogService') {

    @odata.draft.enabled : true
    entity Expenses as projection on expenses.Expenses;


}