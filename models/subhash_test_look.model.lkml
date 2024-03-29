connection: "mc_sql_looker"

include: "/views/emp_sal.view.lkml"                # include all views in the views/ folder in this project
include: "/views/expence.view.lkml"
include: "/views/dept.view.lkml"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: emp_sal {
   join: dept {
    type: left_outer
     relationship: many_to_one
    sql_on: ${dept.emp_id} = ${emp_sal.id} ;;
  }

  join: expence {
    type: left_outer
    relationship: many_to_one
    sql_on: ${expence.expid} = ${emp_sal.id} ;;
  }
}
