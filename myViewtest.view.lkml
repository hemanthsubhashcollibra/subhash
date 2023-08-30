view: myviewtest {
  # If necessary, uncomment the line below to include explore_source.
# include: "subhash_test_look.model.lkml"


    derived_table: {
      explore_source: emp_sal {
        column: dept_name { field: dept.dept_name }
        column: emp_name {}
        column: empexpences { field: expence.empexpences }
        column: emp_sal {}
      }
    }
    dimension: dept_name {
      description: ""
    }
    dimension: emp_name {
      description: ""
    }
    dimension: empexpences {
      description: ""
    }
    dimension: emp_sal {
      description: ""
      type: number
    }
  }
