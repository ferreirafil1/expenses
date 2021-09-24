using CatalogService as cs from './expenses_srv';

annotate cs.Expenses with @(UI.TextArrangement : #TextOnly);

annotate cs.Expenses with @( // header-level annotations
    // ---------------------------------------------------------------------------
    // List Report
    // ---------------------------------------------------------------------------
    // Film List
    UI        : {
        LineItem            : [
            {
                $Type : 'UI.DataField',
                Value : ID
            },
            {
                $Type             : 'UI.DataField',
                Value             : type,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : location,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : product,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : product_quantity,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : unit_of_measure,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : unit_quantity,
                ![@UI.Importance] : #High
            },

            {
                $Type             : 'UI.DataField',
                Value             : unit_price,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : currency_code,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : total,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant : {
            $Type     : 'UI.PresentationVariantType',
            SortOrder : [{Property : ID}]
        },
        SelectionFields     : [
            ID,
            location,
            product
        ]
    },
    // ---------------------------------------------------------------------------
    // Object Page
    // ---------------------------------------------------------------------------
    // Page Header
    UI        : {
        HeaderInfo          : {
            Title          : {
                $Type : 'UI.DataField',
                Value : ID,
            },
            TypeName       : '{i18n>Expense}',
            TypeNamePlural : '{i18n>Expenses}',
            Description    : {Value : product}
        },
        FieldGroup #Details : {Data : [
            {
                $Type : 'UI.DataField',
                Value : type,
            },
            {
                $Type : 'UI.DataField',
                Value : location,
            },
            {
                $Type : 'UI.DataField',
                Value : product,
            },
            {
                $Type : 'UI.DataField',
                Value : product_quantity,
            },
            {
                $Type : 'UI.DataField',
                Value : unit_of_measure,
            },
            {
                $Type : 'UI.DataField',
                Value : unit_quantity,
            },
            {
                $Type : 'UI.DataField',
                Value : unit_price,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Value : total,
            }
        ]}

    },
    // Page Facets
    UI.Facets : [{
        $Type  : 'UI.ReferenceFacet',
        Target : '@UI.FieldGroup#Details'
    }]
);
