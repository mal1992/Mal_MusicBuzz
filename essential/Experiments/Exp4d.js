
       function Sorttable() {
           var scope = this;

           // data
           scope.head = {
               a: "Name [Click to sort]",
               b: "Surname [Click to sort]",
               c: "City [Click to sort]"
           };
           scope.body = [{
               a: "Malavika",
               b: "Harikumardev",
               c: "Boston"
           }, {
               a: "Sanjay",
               b: "Mahalingam",
               c: "San Francisco"
           }, {
               a: "Dhinesh",
               b: "Varma",
               c: "Chennai"
           }, {
               a: "Mythili",
               b: "Sukumaran",
               c: "Palakkad"
           }];

           scope.sort = {
               column: 'b',
               descending: false
           };

           scope.selectedCls = function (column) {
               return column == scope.sort.column && 'sort-' + scope.sort.descending;
           };

           scope.changeSorting = function (column) {
               var sort = scope.sort;
               if (sort.column == column) {
                   sort.descending = !sort.descending;
               } else {
                   sort.column = column;
                   sort.descending = false;
               }
           };
       }


