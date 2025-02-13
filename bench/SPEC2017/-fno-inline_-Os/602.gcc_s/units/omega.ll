; ModuleID = 'omega.c'
source_filename = "omega.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eqn_d = type { i32, i32, i32, ptr }
%struct.omega_pb_d = type { i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }

@omega_when_reduced = dso_local local_unnamed_addr global ptr @omega_no_procedure, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d * %s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@wild_name = internal global [200 x [40 x i8]] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Done with EQ\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Done with GEQ\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s := \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"#%d := \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"variables = \00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"protected (\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"omega.c\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [25 x i8] c"in eliminate Redundant:\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"found redundant inequality\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"alpha1, alpha2, alpha3 = %d,%d,%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"\0A=> \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"found implied over tight inequality\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"\0A=> not \00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"found implied tight inequality\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"\0A=> inverse \00", align 1
@conservative = internal unnamed_addr global i32 0, align 4
@.str.37 = private unnamed_addr constant [49 x i8] c"checking equation %d to see if it is redundant: \00", align 1
@please_no_equalities_in_simplified_problems = internal unnamed_addr global i32 0, align 4
@original_problem = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [48 x i8] c"adding equality constraint %d to outer problem\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"retracting\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"Deleting %d (last:%d): \00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"./omega.h\00", align 1
@packing = internal unnamed_addr global ptr null, align 8
@.str.47 = private unnamed_addr constant [30 x i8] c"\0Aequations have no solution \0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"Hash code = %d, eqn = \00", align 1
@hash_master = internal unnamed_addr global ptr null, align 8
@.str.49 = private unnamed_addr constant [22 x i8] c" constraint key = %d\0A\00", align 1
@next_key = internal unnamed_addr global i32 0, align 4
@fast_lookup = internal unnamed_addr global ptr null, align 8
@create_color = internal unnamed_addr global i1 false, align 1
@fast_lookup_red = internal unnamed_addr global ptr null, align 8
@.str.50 = private unnamed_addr constant [30 x i8] c"Removing Redundant Equation: \00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"[a]      Made Redundant by: \00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"[b]      Made Redundant by: \00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"[c]      Made Redundant by: \00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"[d]      Made Redundant by: \00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"in eliminate RED:\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"found two equations to combine, i = %s, \00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"j = %s, alpha = %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"alpha1 = %d, alpha2 = %d;comparing against: \00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c" %s: %d, %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"red equation#%d is dead (%d dead so far, %d remain)\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"in eliminate RED, easy tests done:\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"fast checks worked\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"it is redundant\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"it is not redundant\0A\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"no need to check other red equations\0A\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"verifying problem\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c" (color mode)\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c" :\0A\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"verified problem\0A\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"disproved problem\0A\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"Converting Eq to Geqs\0A\00", align 1
@omega_solve_depth = internal unnamed_addr global i32 0, align 4
@.str.72 = private unnamed_addr constant [54 x i8] c"Solve depth = %d, in_approximate_mode = %d, aborting\0A\00", align 1
@in_approximate_mode = internal unnamed_addr global i1 false, align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"\0Aomega_solve_eq (%d, %d)\0A\00", align 1
@may_be_red = internal unnamed_addr global i32 0, align 4
@.str.74 = private unnamed_addr constant [6 x i8] c"----\0A\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c" Promotion possible\0A\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"Ha! We own it! \0A\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"So what?\0A\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"promoting %s to safety\0A\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"handling red equality\0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"adding equation to handle safe variable \0A\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"\0A----\0A\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"non-exact elimination: \00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"result of non-exact elimination:\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"doing moding\0A\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"should not have happened\0A\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"eliminating variable %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"performing non-exact elimination, c = %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"substituting using %s := \00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"---\0A\0A\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"===\0A\0A\00", align 1
@next_wild_card = internal unnamed_addr global i32 0, align 4
@.str.92 = private unnamed_addr constant [35 x i8] c"Mod-ing and normalizing produces:\0A\00", align 1
@omega_found_reduction = internal unnamed_addr global i32 0, align 4
@.str.93 = private unnamed_addr constant [45 x i8] c"-------------------------------------------\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"problem reduced:\0A\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"Coalesced pb->geqs into %d EQ's:\0A\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"Doing chain reaction unprotection\0A\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"unprotecting %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"After chain reactions\0A\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"\0Aomega_solve_geq (%d,%d):\0A\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"upper bound = %d\0A\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"lower bound = %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"\0Aafter normalization:\0A\00", align 1
@.str.103 = private unnamed_addr constant [45 x i8] c"eliminating variable using Fourier-Motzkin.\0A\00", align 1
@.str.104 = private unnamed_addr constant [76 x i8] c"TOO MANY EQUATIONS; %d equations, %d variables, ELIMINATING REDUNDANT ONES\0A\00", align 1
@.str.105 = private unnamed_addr constant [40 x i8] c"END ELIMINATION OF REDUNDANT EQUATIONS\0A\00", align 1
@.str.106 = private unnamed_addr constant [86 x i8] c"For %s, exact, score = %d*%d, range = %d ... %d,\0Alucky = %d, in_approximate_mode=%d \0A\00", align 1
@.str.107 = private unnamed_addr constant [53 x i8] c"For %s, non-exact, score = %d*%d,range = %d ... %d \0A\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"going to eliminate %s, (%d,%d,%d)\0A\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"(a lucky exact elimination)\0A\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c"(an exact elimination)\0A\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"Max # of splinters = %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"Swapping %d and %d\0A\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"Swapping complete \0A\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"No swap needed\0A\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c" :::=> %s >= %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c" :::=> [%s >= %d]\0A\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c" :::=> %s <= %d\0A\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c" :::=> [%s <= %d]\0A\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c" ::=> [%s >= %d]\0A\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c" ::=> %s >= %d\0A\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c" ::=> [%s <= %d]\0A\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c" ::=> %s <= %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c" therefore, %c%d <= %c%s%c <= %d%c\0A\00", align 1
@.str.125 = private unnamed_addr constant [37 x i8] c"adding equality %d to outer problem\0A\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"an inplace elimination\0A\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"lower bound count = %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [28 x i8] c"Le = %d, Ue = %d, gen = %d\0A\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"Killed %d\0A\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"a free elimination of %s\0A\00", align 1
@.str.143 = private unnamed_addr constant [27 x i8] c"\0Aafter free eliminations:\0A\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"Deleting %d: \00", align 1
@.str.151 = private unnamed_addr constant [29 x i8] c"Checking for red equations:\0A\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"Gist is FALSE\0A\00", align 1
@.str.153 = private unnamed_addr constant [39 x i8] c"checks for upper/lower bounds worked!\0A\00", align 1
@.str.154 = private unnamed_addr constant [69 x i8] c"*** Doing potentially expensive elimination tests for red equations\0A\00", align 1
@.str.155 = private unnamed_addr constant [59 x i8] c"******************** Redundant Red Equations eliminated!!\0A\00", align 1
@.str.156 = private unnamed_addr constant [43 x i8] c"******************** Red Equations remain\0A\00", align 1
@.str.157 = private unnamed_addr constant [30 x i8] c"a free red elimination of %s\0A\00", align 1
@.str.158 = private unnamed_addr constant [31 x i8] c"\0Aafter free red eliminations:\0A\00", align 1
@.str.159 = private unnamed_addr constant [28 x i8] c"(Entering approximate mode\0A\00", align 1
@.str.160 = private unnamed_addr constant [27 x i8] c"Leaving approximate mode)\0A\00", align 1
@hash_version = internal unnamed_addr global i32 0, align 4
@omega_initialized = internal unnamed_addr global i1 false, align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"sigma\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str.189 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.190 = private unnamed_addr constant [3 x i8] c"ni\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"Beta\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"Delta\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"Sigma\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"Omega\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @omega_no_procedure(ptr nocapture readnone %0) #0 !prof !35 {
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @omega_print_eqn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #1 !prof !35 {
  %6 = load i32, ptr %1, align 8, !tbaa !36
  %7 = add i32 %6, %4
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = icmp eq i32 %12, -1
  %14 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = tail call i32 @fputc(i32 33, ptr %0)
  br label %24

19:                                               ; preds = %9
  %20 = load i32, ptr %2, align 8, !tbaa !46
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %20) #23
  br label %24

24:                                               ; preds = %5, %17, %22, %19
  %25 = phi i1 [ %13, %17 ], [ %13, %22 ], [ %13, %19 ], [ false, %5 ]
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !47
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call i32 @fputc(i32 91, ptr %0)
  br label %32

32:                                               ; preds = %30, %24
  %33 = zext i1 %25 to i32
  %34 = icmp slt i32 %7, %33
  br i1 %34, label %77, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %37 = zext i1 %25 to i64
  %38 = add nuw i32 %7, 1
  %39 = zext i32 %38 to i64
  br label %40

40:                                               ; preds = %35, %71
  %41 = phi i64 [ %37, %35 ], [ %73, %71 ]
  %42 = phi i8 [ 1, %35 ], [ %72, %71 ]
  %43 = load ptr, ptr %36, align 8, !tbaa !42
  %44 = getelementptr inbounds i32, ptr %43, i64 %41
  %45 = load i32, ptr %44, align 4, !tbaa !44
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %40
  %48 = icmp eq i8 %42, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %51

51:                                               ; preds = %47, %49
  %52 = icmp eq i64 %41, 0
  %53 = load ptr, ptr %36, align 8, !tbaa !42
  br i1 %52, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, ptr %53, align 4, !tbaa !44
  %56 = sub nsw i32 0, %55
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %56) #23
  br label %71

58:                                               ; preds = %51
  %59 = getelementptr inbounds i32, ptr %53, i64 %41
  %60 = load i32, ptr %59, align 4, !tbaa !44
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = trunc i64 %41 to i32
  %64 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %63) #23
  %65 = tail call i32 @fputs(ptr nonnull %64, ptr %0)
  br label %71

66:                                               ; preds = %58
  %67 = sub nsw i32 0, %60
  %68 = trunc i64 %41 to i32
  %69 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %68) #23
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %67, ptr noundef nonnull %69) #23
  br label %71

71:                                               ; preds = %40, %62, %66, %54
  %72 = phi i8 [ 0, %54 ], [ 0, %62 ], [ 0, %66 ], [ %42, %40 ]
  %73 = add nuw nsw i64 %41, 1
  %74 = icmp eq i64 %73, %39
  br i1 %74, label %75, label %40, !llvm.loop !48

75:                                               ; preds = %71
  %76 = icmp eq i8 %72, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %32, %75
  %78 = select i1 %25, i32 49, i32 48
  %79 = tail call i32 @fputc(i32 %78, ptr %0)
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i8 [ %26, %75 ], [ 0, %77 ]
  br i1 %8, label %82, label %84

82:                                               ; preds = %80
  %83 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %0)
  br label %90

84:                                               ; preds = %80
  %85 = icmp eq i8 %81, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %84
  %87 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %0)
  br label %90

88:                                               ; preds = %84
  %89 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %90

90:                                               ; preds = %86, %88, %82
  %91 = icmp slt i32 %7, 0
  br i1 %91, label %129, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %94 = add nuw i32 %7, 1
  %95 = zext i32 %94 to i64
  br label %96

96:                                               ; preds = %92, %123
  %97 = phi i64 [ 0, %92 ], [ %125, %123 ]
  %98 = phi i8 [ 1, %92 ], [ %124, %123 ]
  %99 = load ptr, ptr %93, align 8, !tbaa !42
  %100 = getelementptr inbounds i32, ptr %99, i64 %97
  %101 = load i32, ptr %100, align 4, !tbaa !44
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %96
  %104 = icmp eq i8 %98, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  %106 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %107

107:                                              ; preds = %103, %105
  %108 = icmp eq i64 %97, 0
  %109 = load ptr, ptr %93, align 8, !tbaa !42
  br i1 %108, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, ptr %109, align 4, !tbaa !44
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %111) #23
  br label %123

113:                                              ; preds = %107
  %114 = getelementptr inbounds i32, ptr %109, i64 %97
  %115 = load i32, ptr %114, align 4, !tbaa !44
  %116 = icmp eq i32 %115, 1
  %117 = trunc i64 %97 to i32
  %118 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %117) #23
  br i1 %116, label %119, label %121

119:                                              ; preds = %113
  %120 = tail call i32 @fputs(ptr nonnull %118, ptr %0)
  br label %123

121:                                              ; preds = %113
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %115, ptr noundef nonnull %118) #23
  br label %123

123:                                              ; preds = %96, %119, %121, %110
  %124 = phi i8 [ 0, %110 ], [ 0, %119 ], [ 0, %121 ], [ %98, %96 ]
  %125 = add nuw nsw i64 %97, 1
  %126 = icmp eq i64 %125, %95
  br i1 %126, label %127, label %96, !llvm.loop !50

127:                                              ; preds = %123
  %128 = icmp eq i8 %124, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %90, %127
  %130 = tail call i32 @fputc(i32 48, ptr %0)
  br label %131

131:                                              ; preds = %129, %127
  %132 = load i32, ptr %27, align 8, !tbaa !47
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = tail call i32 @fputc(i32 93, ptr %0)
  br label %136

136:                                              ; preds = %134, %131
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @omega_variable_to_str(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !35 !PGOFuncName !51 {
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = tail call fastcc ptr @omega_var_to_str(i32 noundef %7) #23
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @omega_var_to_str(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !53 {
  %2 = icmp ult i32 %0, 21
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %4
  br label %12

6:                                                ; preds = %1
  %7 = icmp ugt i32 %0, -20
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = add nsw i32 %0, 40
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %10
  br label %12

12:                                               ; preds = %6, %8, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %8 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %6 ]
  ret ptr %13
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_omega_problem(ptr nocapture noundef %0) local_unnamed_addr #1 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @omega_print_problem(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 !prof !35 {
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @omega_initialize_variables(ptr noundef nonnull %1) #23
  br label %7

7:                                                ; preds = %6, %2
  tail call fastcc void @omega_print_vars(ptr noundef %0, ptr noundef nonnull %1) #23
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.eqn_d, ptr %15, i64 %14
  tail call fastcc void @omega_print_eq(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %16) #23
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  %18 = add nuw nsw i64 %14, 1
  %19 = load i32, ptr %8, align 8, !tbaa !56
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %22, !llvm.loop !58

22:                                               ; preds = %13, %7
  %23 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 13, i64 1, ptr %0)
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !59
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ 0, %27 ], [ %34, %29 ]
  %31 = load ptr, ptr %28, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.eqn_d, ptr %31, i64 %30
  tail call fastcc void @omega_print_geq(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %32) #23
  %33 = tail call i32 @fputc(i32 10, ptr %0)
  %34 = add nuw nsw i64 %30, 1
  %35 = load i32, ptr %24, align 4, !tbaa !59
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %29, label %38, !llvm.loop !61

38:                                               ; preds = %29, %22
  %39 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 14, i64 1, ptr %0)
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !62
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  br label %45

45:                                               ; preds = %43, %67
  %46 = phi i64 [ 0, %43 ], [ %69, %67 ]
  %47 = load ptr, ptr %44, align 8, !tbaa !63
  %48 = getelementptr inbounds %struct.eqn_d, ptr %47, i64 %46
  %49 = getelementptr inbounds %struct.eqn_d, ptr %47, i64 %46, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !47
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = tail call i32 @fputc(i32 91, ptr %0)
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32, ptr %48, align 8, !tbaa !46
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @omega_var_to_str(i32 noundef %55) #23
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %58) #23
  br label %62

60:                                               ; preds = %54
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %55) #23
  br label %62

62:                                               ; preds = %60, %57
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %48, i32 noundef 1) #23
  %63 = load i32, ptr %49, align 8, !tbaa !47
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call i32 @fputc(i32 93, ptr %0)
  br label %67

67:                                               ; preds = %65, %62
  %68 = tail call i32 @fputc(i32 10, ptr %0)
  %69 = add nuw nsw i64 %46, 1
  %70 = load i32, ptr %40, align 8, !tbaa !62
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %45, label %73, !llvm.loop !64

73:                                               ; preds = %67, %38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_initialize_variables(ptr nocapture noundef %0) unnamed_addr #5 !prof !35 !PGOFuncName !65 {
  %2 = load i32, ptr %0, align 8, !tbaa !36
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %4, %10
  %11 = phi i64 [ %9, %4 ], [ %15, %10 ]
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  %13 = trunc i64 %11 to i32
  store i32 %13, ptr %12, align 4, !tbaa !44
  %14 = getelementptr inbounds i32, ptr %8, i64 %11
  store i32 %13, ptr %14, align 4, !tbaa !44
  %15 = add nsw i64 %11, -1
  %16 = icmp eq i64 %11, 0
  br i1 %16, label %17, label %10, !llvm.loop !67

17:                                               ; preds = %10, %1
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 6
  store i8 1, ptr %18, align 8, !tbaa !55
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_print_vars(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !35 !PGOFuncName !68 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 12, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 11, i64 1, ptr %0)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, ptr %1, align 8, !tbaa !36
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %30, label %12

12:                                               ; preds = %9, %26
  %13 = phi i32 [ %28, %26 ], [ 1, %9 ]
  %14 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %13) #23
  %15 = tail call i32 @fputs(ptr nonnull %14, ptr %0)
  %16 = load i32, ptr %4, align 4, !tbaa !69
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i32 @fputc(i32 41, ptr %0)
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, ptr %1, align 8, !tbaa !36
  %22 = icmp slt i32 %13, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %0)
  %25 = load i32, ptr %1, align 8, !tbaa !36
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %21, %20 ], [ %25, %23 ]
  %28 = add nuw nsw i32 %13, 1
  %29 = icmp slt i32 %13, %27
  br i1 %29, label %12, label %30, !llvm.loop !70

30:                                               ; preds = %26, %9
  %31 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_print_eq(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !35 !PGOFuncName !71 {
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, i32 noundef 0) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_print_geq(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !35 !PGOFuncName !72 {
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, i32 noundef 0) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_print_term(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #1 !prof !35 !PGOFuncName !73 {
  %5 = load i32, ptr %1, align 8, !tbaa !36
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %74, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = add nuw i32 %5, 1
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %7, %26
  %13 = phi i64 [ 1, %7 ], [ %27, %26 ]
  %14 = getelementptr inbounds i32, ptr %9, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = mul nsw i32 %15, %3
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = trunc i64 %13 to i32
  %20 = icmp eq i32 %16, 1
  %21 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %19) #23
  br i1 %20, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 @fputs(ptr nonnull %21, ptr %0)
  br label %29

24:                                               ; preds = %18
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %16, ptr noundef nonnull %21) #23
  br label %29

26:                                               ; preds = %12
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12, !llvm.loop !74

29:                                               ; preds = %26, %22, %24
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ]
  %31 = phi i64 [ %13, %22 ], [ %13, %24 ], [ 4294967295, %26 ]
  br i1 %6, label %71, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %34 = and i64 %31, 4294967295
  %35 = add nuw i32 %5, 1
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %32, %67
  %38 = phi i64 [ 1, %32 ], [ %69, %67 ]
  %39 = phi i8 [ %30, %32 ], [ %68, %67 ]
  %40 = icmp eq i64 %38, %34
  br i1 %40, label %67, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %33, align 8, !tbaa !42
  %43 = getelementptr inbounds i32, ptr %42, i64 %38
  %44 = load i32, ptr %43, align 4, !tbaa !44
  %45 = mul nsw i32 %44, %3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %41
  %48 = icmp eq i8 %39, 0
  %49 = icmp sgt i32 %45, 0
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  %53 = load ptr, ptr %33, align 8, !tbaa !42
  %54 = getelementptr inbounds i32, ptr %53, i64 %38
  %55 = load i32, ptr %54, align 4, !tbaa !44
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i32 [ %55, %51 ], [ %44, %47 ]
  %58 = mul nsw i32 %57, %3
  %59 = trunc i64 %38 to i32
  %60 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %59) #23
  switch i32 %58, label %65 [
    i32 1, label %61
    i32 -1, label %63
  ]

61:                                               ; preds = %56
  %62 = tail call i32 @fputs(ptr nonnull %60, ptr %0)
  br label %67

63:                                               ; preds = %56
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %60) #23
  br label %67

65:                                               ; preds = %56
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %58, ptr noundef nonnull %60) #23
  br label %67

67:                                               ; preds = %37, %41, %63, %65, %61
  %68 = phi i8 [ 0, %61 ], [ 0, %63 ], [ 0, %65 ], [ %39, %41 ], [ %39, %37 ]
  %69 = add nuw nsw i64 %38, 1
  %70 = icmp eq i64 %69, %36
  br i1 %70, label %71, label %37, !llvm.loop !75

71:                                               ; preds = %67, %29
  %72 = phi i8 [ %30, %29 ], [ %68, %67 ]
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %4, %71
  %75 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !42
  %77 = load i32, ptr %76, align 4, !tbaa !44
  %78 = mul nsw i32 %77, %3
  br label %93

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  %82 = load i32, ptr %81, align 4, !tbaa !44
  %83 = mul nsw i32 %82, %3
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  %87 = load ptr, ptr %80, align 8, !tbaa !42
  %88 = load i32, ptr %87, align 4, !tbaa !44
  %89 = mul nsw i32 %88, %3
  br label %90

90:                                               ; preds = %79, %85
  %91 = phi i32 [ %83, %79 ], [ %89, %85 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %74, %90
  %94 = phi i32 [ %78, %74 ], [ %91, %90 ]
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %94) #23
  br label %96

96:                                               ; preds = %93, %90
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @omega_count_red_equations(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !35 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %9 = zext nneg i32 %3 to i64
  br label %19

10:                                               ; preds = %51, %1
  %11 = phi i32 [ 0, %1 ], [ %52, %51 ]
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = zext nneg i32 %13 to i64
  br label %64

19:                                               ; preds = %5, %51
  %20 = phi i64 [ 0, %5 ], [ %53, %51 ]
  %21 = phi i32 [ 0, %5 ], [ %52, %51 ]
  %22 = getelementptr inbounds %struct.eqn_d, ptr %7, i64 %20, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load i32, ptr %0, align 8, !tbaa !36
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %20, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  br label %32

32:                                               ; preds = %28, %38
  %33 = phi i32 [ %26, %28 ], [ %39, %38 ]
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !44
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = add nsw i32 %33, -1
  %40 = icmp sgt i32 %33, 1
  br i1 %40, label %32, label %43, !llvm.loop !76

41:                                               ; preds = %25
  %42 = icmp eq i32 %26, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %41
  %44 = load ptr, ptr %8, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %20, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = load i32, ptr %46, align 4, !tbaa !44
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %84, label %49

49:                                               ; preds = %32, %43, %41
  %50 = add nsw i32 %21, 2
  br label %51

51:                                               ; preds = %19, %49
  %52 = phi i32 [ %50, %49 ], [ %21, %19 ]
  %53 = add nuw nsw i64 %20, 1
  %54 = icmp eq i64 %53, %9
  br i1 %54, label %10, label %19, !llvm.loop !77

55:                                               ; preds = %64, %10
  %56 = phi i32 [ %11, %10 ], [ %71, %64 ]
  %57 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !62
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = zext nneg i32 %58 to i64
  br label %74

64:                                               ; preds = %15, %64
  %65 = phi i64 [ 0, %15 ], [ %72, %64 ]
  %66 = phi i32 [ %11, %15 ], [ %71, %64 ]
  %67 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %65, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !47
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %66, %70
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %18
  br i1 %73, label %55, label %64, !llvm.loop !78

74:                                               ; preds = %60, %74
  %75 = phi i64 [ 0, %60 ], [ %82, %74 ]
  %76 = phi i32 [ %56, %60 ], [ %81, %74 ]
  %77 = getelementptr inbounds %struct.eqn_d, ptr %62, i64 %75, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !47
  %79 = icmp eq i32 %78, 1
  %80 = add nsw i32 %76, 2
  %81 = select i1 %79, i32 %80, i32 %76
  %82 = add nuw nsw i64 %75, 1
  %83 = icmp eq i64 %82, %63
  br i1 %83, label %84, label %74, !llvm.loop !79

84:                                               ; preds = %43, %74, %55
  %85 = phi i32 [ %56, %55 ], [ %81, %74 ], [ 0, %43 ]
  ret i32 %85
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @omega_print_red_equations(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 !prof !35 {
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @omega_initialize_variables(ptr noundef nonnull %1) #23
  br label %7

7:                                                ; preds = %6, %2
  tail call fastcc void @omega_print_vars(ptr noundef %0, ptr noundef nonnull %1) #23
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  br label %19

13:                                               ; preds = %30, %7
  %14 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  br label %41

19:                                               ; preds = %11, %30
  %20 = phi i32 [ %9, %11 ], [ %31, %30 ]
  %21 = phi i64 [ 0, %11 ], [ %32, %30 ]
  %22 = load ptr, ptr %12, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.eqn_d, ptr %22, i64 %21, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.eqn_d, ptr %22, i64 %21
  tail call fastcc void @omega_print_eq(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %27) #23
  %28 = tail call i32 @fputc(i32 10, ptr %0)
  %29 = load i32, ptr %8, align 8, !tbaa !56
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi i32 [ %20, %19 ], [ %29, %26 ]
  %32 = add nuw nsw i64 %21, 1
  %33 = sext i32 %31 to i64
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %19, label %13, !llvm.loop !80

35:                                               ; preds = %52, %13
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !62
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  br label %57

41:                                               ; preds = %17, %52
  %42 = phi i32 [ %15, %17 ], [ %53, %52 ]
  %43 = phi i64 [ 0, %17 ], [ %54, %52 ]
  %44 = load ptr, ptr %18, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %43, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !47
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %43
  tail call fastcc void @omega_print_geq(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %49) #23
  %50 = tail call i32 @fputc(i32 10, ptr %0)
  %51 = load i32, ptr %14, align 4, !tbaa !59
  br label %52

52:                                               ; preds = %41, %48
  %53 = phi i32 [ %42, %41 ], [ %51, %48 ]
  %54 = add nuw nsw i64 %43, 1
  %55 = sext i32 %53 to i64
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %41, label %35, !llvm.loop !81

57:                                               ; preds = %39, %77
  %58 = phi i32 [ %37, %39 ], [ %78, %77 ]
  %59 = phi i64 [ 0, %39 ], [ %79, %77 ]
  %60 = load ptr, ptr %40, align 8, !tbaa !63
  %61 = getelementptr inbounds %struct.eqn_d, ptr %60, i64 %59
  %62 = getelementptr inbounds %struct.eqn_d, ptr %60, i64 %59, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !47
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = tail call i32 @fputc(i32 91, ptr %0)
  %67 = load i32, ptr %61, align 8, !tbaa !46
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = tail call fastcc ptr @omega_var_to_str(i32 noundef %67) #23
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %70) #23
  br label %74

72:                                               ; preds = %65
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %67) #23
  br label %74

74:                                               ; preds = %72, %69
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %61, i32 noundef 1) #23
  %75 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 2, i64 1, ptr %0)
  %76 = load i32, ptr %36, align 8, !tbaa !62
  br label %77

77:                                               ; preds = %57, %74
  %78 = phi i32 [ %58, %57 ], [ %76, %74 ]
  %79 = add nuw nsw i64 %59, 1
  %80 = sext i32 %78 to i64
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %57, label %82, !llvm.loop !82

82:                                               ; preds = %77, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omega_pretty_print_problem(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #7 !prof !35 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 65, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #24
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 64, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = mul nsw i32 %10, %10
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #24
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 64, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !83
  %18 = mul nsw i32 %17, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 3
  %21 = tail call ptr @xmalloc(i64 noundef %20) #24
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 64, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !83
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr @xmalloc(i64 noundef %26) #24
  %28 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.param_info, ptr %28, i64 64, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !83
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call ptr @xmalloc(i64 noundef %32) #24
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 64, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !83
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = tail call ptr @xmalloc(i64 noundef %38) #24
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 64, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !83
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  %45 = tail call ptr @xmalloc(i64 noundef %44) #24
  %46 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %47 = load i8, ptr %46, align 8, !tbaa !55
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  tail call fastcc void @omega_initialize_variables(ptr noundef nonnull %1) #23
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, ptr %1, align 8, !tbaa !36
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %652

53:                                               ; preds = %50
  %54 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %1, i8 noundef zeroext 0) #23, !range !85
  %55 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !56
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  br label %65

60:                                               ; preds = %70, %53
  %61 = phi i32 [ 0, %53 ], [ 1, %70 ]
  %62 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !59
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %81, label %77

65:                                               ; preds = %58, %70
  %66 = phi i64 [ 0, %58 ], [ %73, %70 ]
  %67 = phi i1 [ true, %58 ], [ false, %70 ]
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %0)
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr %59, align 8, !tbaa !57
  %72 = getelementptr inbounds %struct.eqn_d, ptr %71, i64 %66
  tail call fastcc void @omega_print_eq(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %72) #23
  %73 = add nuw nsw i64 %66, 1
  %74 = load i32, ptr %55, align 8, !tbaa !56
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %65, label %60, !llvm.loop !86

77:                                               ; preds = %81, %60
  %78 = phi i32 [ %63, %60 ], [ %85, %81 ]
  %79 = getelementptr i32, ptr %45, i64 -1
  %80 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  br label %88

81:                                               ; preds = %60, %81
  %82 = phi i64 [ %84, %81 ], [ 0, %60 ]
  %83 = getelementptr inbounds i8, ptr %7, i64 %82
  store i8 1, ptr %83, align 1, !tbaa !87
  %84 = add nuw nsw i64 %82, 1
  %85 = load i32, ptr %62, align 4, !tbaa !59
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %81, label %77, !llvm.loop !88

88:                                               ; preds = %558, %77
  %89 = phi i32 [ %78, %77 ], [ %559, %558 ]
  %90 = phi i32 [ %61, %77 ], [ 1, %558 ]
  %91 = load i32, ptr %1, align 8, !tbaa !36
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %95, label %99

93:                                               ; preds = %118
  %94 = load i32, ptr %62, align 4, !tbaa !59
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i32 [ %120, %93 ], [ %91, %88 ]
  %97 = phi i32 [ %94, %93 ], [ %89, %88 ]
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %128, label %125

99:                                               ; preds = %88, %118
  %100 = phi i64 [ %121, %118 ], [ 1, %88 ]
  %101 = getelementptr inbounds i32, ptr %33, i64 %100
  store i32 0, ptr %101, align 4, !tbaa !44
  %102 = getelementptr inbounds i32, ptr %27, i64 %100
  store i32 0, ptr %102, align 4, !tbaa !44
  %103 = getelementptr inbounds i32, ptr %39, i64 %100
  store i32 0, ptr %103, align 4, !tbaa !44
  %104 = load i32, ptr %1, align 8, !tbaa !36
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = sext i32 %104 to i64
  br label %118

108:                                              ; preds = %99
  %109 = getelementptr inbounds ptr, ptr %14, i64 %100
  %110 = load ptr, ptr %109, align 8, !tbaa !54
  br label %111

111:                                              ; preds = %108, %111
  %112 = phi i64 [ 1, %108 ], [ %114, %111 ]
  %113 = getelementptr inbounds i32, ptr %110, i64 %112
  store i32 0, ptr %113, align 4, !tbaa !44
  %114 = add nuw nsw i64 %112, 1
  %115 = load i32, ptr %1, align 8, !tbaa !36
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %112, %116
  br i1 %117, label %111, label %118, !llvm.loop !89

118:                                              ; preds = %111, %106
  %119 = phi i64 [ %107, %106 ], [ %116, %111 ]
  %120 = phi i32 [ %104, %106 ], [ %115, %111 ]
  %121 = add nuw nsw i64 %100, 1
  %122 = icmp slt i64 %100, %119
  br i1 %122, label %99, label %93, !llvm.loop !90

123:                                              ; preds = %243
  %124 = load i32, ptr %1, align 8, !tbaa !36
  br label %125

125:                                              ; preds = %123, %95
  %126 = phi i32 [ %124, %123 ], [ %96, %95 ]
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %355, label %250

128:                                              ; preds = %95, %243
  %129 = phi i64 [ %244, %243 ], [ 0, %95 ]
  %130 = getelementptr inbounds i8, ptr %7, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !87
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %243, label %133

133:                                              ; preds = %128
  %134 = load i32, ptr %1, align 8, !tbaa !36
  %135 = icmp slt i32 %134, 1
  %136 = load ptr, ptr %80, align 8, !tbaa !60
  br i1 %135, label %169, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.eqn_d, ptr %136, i64 %129, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !42
  br label %145

140:                                              ; preds = %155
  %141 = icmp sgt i32 %157, 0
  br i1 %141, label %142, label %169

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.eqn_d, ptr %136, i64 %129, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !42
  br label %160

145:                                              ; preds = %137, %155
  %146 = phi i64 [ 1, %137 ], [ %156, %155 ]
  %147 = getelementptr inbounds i32, ptr %139, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !44
  switch i32 %148, label %155 [
    i32 1, label %150
    i32 -1, label %149
  ]

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %145, %149
  %151 = phi ptr [ %27, %149 ], [ %33, %145 ]
  %152 = getelementptr inbounds i32, ptr %151, i64 %146
  %153 = load i32, ptr %152, align 4, !tbaa !44
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %152, align 4, !tbaa !44
  br label %155

155:                                              ; preds = %150, %145
  %156 = add nuw nsw i64 %146, 1
  %157 = load i32, ptr %1, align 8, !tbaa !36
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %146, %158
  br i1 %159, label %145, label %140, !llvm.loop !91

160:                                              ; preds = %142, %166
  %161 = phi i32 [ %157, %142 ], [ %167, %166 ]
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %144, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !44
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = add nsw i32 %161, -1
  %168 = icmp sgt i32 %161, 1
  br i1 %168, label %160, label %169, !llvm.loop !92

169:                                              ; preds = %160, %166, %133, %140
  %170 = phi i32 [ %157, %140 ], [ %134, %133 ], [ 0, %166 ], [ %161, %160 ]
  %171 = zext i32 %170 to i64
  %172 = tail call i32 @llvm.smin.i32(i32 %170, i32 1)
  %173 = add i32 %172, -1
  %174 = getelementptr inbounds %struct.eqn_d, ptr %136, i64 %129, i32 3
  br label %175

175:                                              ; preds = %179, %169
  %176 = phi i64 [ %180, %179 ], [ %171, %169 ]
  %177 = trunc i64 %176 to i32
  %178 = icmp sgt i32 %177, 1
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = add nsw i64 %176, -1
  %181 = load ptr, ptr %174, align 8, !tbaa !42
  %182 = and i64 %180, 4294967295
  %183 = getelementptr inbounds i32, ptr %181, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !44
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %175, label %186, !llvm.loop !93

186:                                              ; preds = %179
  %187 = trunc i64 %180 to i32
  %188 = icmp eq i32 %177, 2
  br i1 %188, label %189, label %194

189:                                              ; preds = %175, %186
  %190 = phi i32 [ %187, %186 ], [ %173, %175 ]
  %191 = phi i32 [ 2, %186 ], [ %172, %175 ]
  %192 = getelementptr inbounds %struct.eqn_d, ptr %136, i64 %129, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !42
  br label %207

194:                                              ; preds = %186
  %195 = add nsw i32 %177, -2
  %196 = getelementptr inbounds %struct.eqn_d, ptr %136, i64 %129, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !42
  br label %198

198:                                              ; preds = %198, %194
  %199 = phi i32 [ %195, %194 ], [ %204, %198 ]
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds i32, ptr %197, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !44
  %203 = icmp ne i32 %202, 0
  %204 = add nsw i32 %199, -1
  %205 = icmp slt i32 %199, 2
  %206 = or i1 %205, %203
  br i1 %206, label %207, label %198, !llvm.loop !94

207:                                              ; preds = %198, %189
  %208 = phi i32 [ %190, %189 ], [ %187, %198 ]
  %209 = phi i32 [ %191, %189 ], [ %177, %198 ]
  %210 = phi ptr [ %193, %189 ], [ %197, %198 ]
  %211 = phi i1 [ false, %189 ], [ %203, %198 ]
  %212 = load i32, ptr %210, align 4, !tbaa !44
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %243, label %214

214:                                              ; preds = %207
  %215 = icmp slt i32 %212, -1
  %216 = icmp slt i32 %209, 2
  %217 = or i1 %216, %215
  %218 = or i1 %211, %217
  br i1 %218, label %243, label %219

219:                                              ; preds = %214
  %220 = sext i32 %170 to i64
  %221 = getelementptr inbounds i32, ptr %210, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !44
  %223 = zext nneg i32 %208 to i64
  %224 = getelementptr inbounds i32, ptr %210, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !44
  %226 = mul nsw i32 %225, %222
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %243

228:                                              ; preds = %219
  %229 = icmp eq i32 %222, 1
  %230 = select i1 %229, i32 %170, i32 %208
  %231 = select i1 %229, i32 %208, i32 %170
  %232 = icmp eq i32 %212, 0
  %233 = select i1 %232, i32 1, i32 2
  %234 = sext i32 %231 to i64
  %235 = getelementptr inbounds ptr, ptr %14, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !54
  %237 = sext i32 %230 to i64
  %238 = getelementptr inbounds i32, ptr %236, i64 %237
  store i32 %233, ptr %238, align 4, !tbaa !44
  %239 = getelementptr inbounds ptr, ptr %21, i64 %234
  %240 = load ptr, ptr %239, align 8, !tbaa !54
  %241 = getelementptr inbounds i32, ptr %240, i64 %237
  %242 = trunc i64 %129 to i32
  store i32 %242, ptr %241, align 4, !tbaa !44
  br label %243

243:                                              ; preds = %128, %207, %214, %219, %228
  %244 = add nuw nsw i64 %129, 1
  %245 = load i32, ptr %62, align 4, !tbaa !59
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %128, label %123, !llvm.loop !95

248:                                              ; preds = %250
  %249 = icmp sgt i32 %256, 0
  br i1 %249, label %259, label %355

250:                                              ; preds = %125, %250
  %251 = phi i64 [ %255, %250 ], [ 1, %125 ]
  %252 = getelementptr inbounds i32, ptr %27, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !44
  %254 = getelementptr inbounds i32, ptr %39, i64 %251
  store i32 %253, ptr %254, align 4, !tbaa !44
  %255 = add nuw nsw i64 %251, 1
  %256 = load i32, ptr %1, align 8, !tbaa !36
  %257 = sext i32 %256 to i64
  %258 = icmp slt i64 %251, %257
  br i1 %258, label %250, label %248, !llvm.loop !96

259:                                              ; preds = %248, %305
  %260 = phi i32 [ %306, %305 ], [ %256, %248 ]
  %261 = phi i32 [ %308, %305 ], [ 0, %248 ]
  %262 = icmp slt i32 %260, 1
  br i1 %262, label %305, label %263

263:                                              ; preds = %259, %298
  %264 = phi i32 [ %299, %298 ], [ %260, %259 ]
  %265 = phi i32 [ %300, %298 ], [ %260, %259 ]
  %266 = phi i64 [ %302, %298 ], [ 1, %259 ]
  %267 = phi i8 [ %301, %298 ], [ 0, %259 ]
  %268 = icmp slt i32 %265, 1
  br i1 %268, label %298, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds ptr, ptr %14, i64 %266
  %271 = load ptr, ptr %270, align 8, !tbaa !54
  %272 = getelementptr inbounds i32, ptr %39, i64 %266
  br label %273

273:                                              ; preds = %269, %290
  %274 = phi i32 [ %264, %269 ], [ %291, %290 ]
  %275 = phi i32 [ %265, %269 ], [ %292, %290 ]
  %276 = phi i32 [ %265, %269 ], [ %293, %290 ]
  %277 = phi i64 [ 1, %269 ], [ %295, %290 ]
  %278 = phi i8 [ %267, %269 ], [ %294, %290 ]
  %279 = getelementptr inbounds i32, ptr %271, i64 %277
  %280 = load i32, ptr %279, align 4, !tbaa !44
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %273
  %283 = load i32, ptr %272, align 4, !tbaa !44
  %284 = getelementptr inbounds i32, ptr %39, i64 %277
  %285 = load i32, ptr %284, align 4, !tbaa !44
  %286 = icmp sgt i32 %283, %285
  br i1 %286, label %290, label %287

287:                                              ; preds = %282
  %288 = add nsw i32 %285, 1
  store i32 %288, ptr %272, align 4, !tbaa !44
  %289 = load i32, ptr %1, align 8, !tbaa !36
  br label %290

290:                                              ; preds = %273, %282, %287
  %291 = phi i32 [ %289, %287 ], [ %274, %282 ], [ %274, %273 ]
  %292 = phi i32 [ %289, %287 ], [ %275, %282 ], [ %275, %273 ]
  %293 = phi i32 [ %289, %287 ], [ %276, %282 ], [ %276, %273 ]
  %294 = phi i8 [ 1, %287 ], [ %278, %282 ], [ %278, %273 ]
  %295 = add nuw nsw i64 %277, 1
  %296 = sext i32 %293 to i64
  %297 = icmp slt i64 %277, %296
  br i1 %297, label %273, label %298, !llvm.loop !97

298:                                              ; preds = %290, %263
  %299 = phi i32 [ %264, %263 ], [ %291, %290 ]
  %300 = phi i32 [ %265, %263 ], [ %292, %290 ]
  %301 = phi i8 [ %267, %263 ], [ %294, %290 ]
  %302 = add nuw nsw i64 %266, 1
  %303 = sext i32 %300 to i64
  %304 = icmp slt i64 %266, %303
  br i1 %304, label %263, label %305, !llvm.loop !98

305:                                              ; preds = %298, %259
  %306 = phi i32 [ %260, %259 ], [ %299, %298 ]
  %307 = phi i8 [ 0, %259 ], [ %301, %298 ]
  %308 = add nuw nsw i32 %261, 1
  %309 = icmp slt i32 %308, %306
  br i1 %309, label %259, label %310, !llvm.loop !99

310:                                              ; preds = %305
  %311 = icmp eq i8 %307, 0
  br i1 %311, label %314, label %312

312:                                              ; preds = %310
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 614, ptr noundef nonnull @.str.26) #24
  %313 = load i32, ptr %1, align 8, !tbaa !36
  br label %314

314:                                              ; preds = %310, %312
  %315 = phi i32 [ %306, %310 ], [ %313, %312 ]
  %316 = icmp slt i32 %315, 1
  br i1 %316, label %355, label %322

317:                                              ; preds = %331
  %318 = icmp slt i32 %332, 2
  br i1 %318, label %355, label %319

319:                                              ; preds = %317
  %320 = add nuw i32 %332, 1
  %321 = zext i32 %320 to i64
  br label %336

322:                                              ; preds = %314, %331
  %323 = phi i32 [ %332, %331 ], [ %315, %314 ]
  %324 = phi i64 [ %333, %331 ], [ 1, %314 ]
  %325 = getelementptr inbounds i32, ptr %39, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !44
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %322
  %329 = getelementptr inbounds i32, ptr %33, i64 %324
  store i32 0, ptr %329, align 4, !tbaa !44
  %330 = load i32, ptr %1, align 8, !tbaa !36
  br label %331

331:                                              ; preds = %322, %328
  %332 = phi i32 [ %323, %322 ], [ %330, %328 ]
  %333 = add nuw nsw i64 %324, 1
  %334 = sext i32 %332 to i64
  %335 = icmp slt i64 %324, %334
  br i1 %335, label %322, label %317, !llvm.loop !100

336:                                              ; preds = %319, %336
  %337 = phi i64 [ 2, %319 ], [ %353, %336 ]
  %338 = phi i32 [ 1, %319 ], [ %352, %336 ]
  %339 = getelementptr inbounds i32, ptr %39, i64 %337
  %340 = load i32, ptr %339, align 4, !tbaa !44
  %341 = getelementptr inbounds i32, ptr %33, i64 %337
  %342 = load i32, ptr %341, align 4, !tbaa !44
  %343 = add nsw i32 %342, %340
  %344 = sext i32 %338 to i64
  %345 = getelementptr inbounds i32, ptr %39, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !44
  %347 = getelementptr inbounds i32, ptr %33, i64 %344
  %348 = load i32, ptr %347, align 4, !tbaa !44
  %349 = add nsw i32 %348, %346
  %350 = icmp sgt i32 %343, %349
  %351 = trunc i64 %337 to i32
  %352 = select i1 %350, i32 %351, i32 %338
  %353 = add nuw nsw i64 %337, 1
  %354 = icmp eq i64 %353, %321
  br i1 %354, label %355, label %336, !llvm.loop !101

355:                                              ; preds = %336, %248, %125, %314, %317
  %356 = phi i32 [ 1, %317 ], [ 1, %314 ], [ 1, %125 ], [ 1, %248 ], [ %352, %336 ]
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, ptr %39, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !44
  %360 = getelementptr inbounds i32, ptr %33, i64 %357
  %361 = load i32, ptr %360, align 4, !tbaa !44
  %362 = sub i32 0, %361
  %363 = icmp eq i32 %359, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %355
  %365 = load i32, ptr %62, align 4, !tbaa !59
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %603, label %624

367:                                              ; preds = %355
  %368 = icmp eq i32 %90, 0
  br i1 %368, label %371, label %369

369:                                              ; preds = %367
  %370 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %0)
  br label %371

371:                                              ; preds = %369, %367
  %372 = load i32, ptr %62, align 4, !tbaa !59
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %418

374:                                              ; preds = %371, %408
  %375 = phi i32 [ %409, %408 ], [ %372, %371 ]
  %376 = phi i64 [ %411, %408 ], [ 0, %371 ]
  %377 = phi i8 [ %410, %408 ], [ 1, %371 ]
  %378 = getelementptr inbounds i8, ptr %7, i64 %376
  %379 = load i8, ptr %378, align 1, !tbaa !87
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %408, label %381

381:                                              ; preds = %374
  %382 = load ptr, ptr %80, align 8, !tbaa !60
  %383 = getelementptr inbounds %struct.eqn_d, ptr %382, i64 %376, i32 3
  %384 = load ptr, ptr %383, align 8, !tbaa !42
  %385 = getelementptr inbounds i32, ptr %384, i64 %357
  %386 = load i32, ptr %385, align 4, !tbaa !44
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %408

388:                                              ; preds = %381
  %389 = icmp eq i8 %377, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %388
  %391 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %0)
  %392 = load ptr, ptr %80, align 8, !tbaa !60
  %393 = getelementptr inbounds %struct.eqn_d, ptr %392, i64 %376, i32 3
  %394 = load ptr, ptr %393, align 8, !tbaa !42
  %395 = getelementptr inbounds i32, ptr %394, i64 %357
  %396 = load i32, ptr %395, align 4, !tbaa !44
  br label %397

397:                                              ; preds = %390, %388
  %398 = phi i32 [ %396, %390 ], [ 1, %388 ]
  %399 = phi ptr [ %394, %390 ], [ %384, %388 ]
  %400 = phi ptr [ %392, %390 ], [ %382, %388 ]
  %401 = getelementptr inbounds i32, ptr %399, i64 %357
  store i32 0, ptr %401, align 4, !tbaa !44
  %402 = getelementptr inbounds %struct.eqn_d, ptr %400, i64 %376
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %402, i32 noundef -1) #23
  %403 = load ptr, ptr %80, align 8, !tbaa !60
  %404 = getelementptr inbounds %struct.eqn_d, ptr %403, i64 %376, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !42
  %406 = getelementptr inbounds i32, ptr %405, i64 %357
  store i32 %398, ptr %406, align 4, !tbaa !44
  store i8 0, ptr %378, align 1, !tbaa !87
  %407 = load i32, ptr %62, align 4, !tbaa !59
  br label %408

408:                                              ; preds = %374, %381, %397
  %409 = phi i32 [ %407, %397 ], [ %375, %381 ], [ %375, %374 ]
  %410 = phi i8 [ 0, %397 ], [ %377, %381 ], [ %377, %374 ]
  %411 = add nuw nsw i64 %376, 1
  %412 = sext i32 %409 to i64
  %413 = icmp slt i64 %411, %412
  br i1 %413, label %374, label %414, !llvm.loop !102

414:                                              ; preds = %408
  %415 = icmp eq i8 %410, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %414
  %417 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %418

418:                                              ; preds = %371, %416, %414
  store i32 %356, ptr %45, align 4, !tbaa !44
  %419 = load i32, ptr %1, align 8, !tbaa !36
  %420 = icmp slt i32 %419, 1
  br i1 %420, label %455, label %421

421:                                              ; preds = %418, %445
  %422 = phi i64 [ %447, %445 ], [ 1, %418 ]
  %423 = phi i32 [ %449, %445 ], [ %419, %418 ]
  %424 = phi i32 [ %446, %445 ], [ %356, %418 ]
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds ptr, ptr %14, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !54
  %428 = getelementptr inbounds i32, ptr %39, i64 %425
  %429 = add nuw i32 %423, 1
  %430 = zext i32 %429 to i64
  br label %431

431:                                              ; preds = %421, %442
  %432 = phi i64 [ 1, %421 ], [ %443, %442 ]
  %433 = getelementptr inbounds i32, ptr %427, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !44
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %442, label %436

436:                                              ; preds = %431
  %437 = load i32, ptr %428, align 4, !tbaa !44
  %438 = getelementptr inbounds i32, ptr %39, i64 %432
  %439 = load i32, ptr %438, align 4, !tbaa !44
  %440 = add nsw i32 %439, 1
  %441 = icmp eq i32 %437, %440
  br i1 %441, label %445, label %442

442:                                              ; preds = %431, %436
  %443 = add nuw nsw i64 %432, 1
  %444 = icmp eq i64 %443, %430
  br i1 %444, label %451, label %431, !llvm.loop !103

445:                                              ; preds = %436
  %446 = trunc i64 %432 to i32
  %447 = add nuw i64 %422, 1
  %448 = getelementptr inbounds i32, ptr %45, i64 %422
  store i32 %446, ptr %448, align 4, !tbaa !44
  %449 = load i32, ptr %1, align 8, !tbaa !36
  %450 = icmp slt i32 %449, 1
  br i1 %450, label %453, label %421

451:                                              ; preds = %442
  %452 = trunc i64 %422 to i32
  br label %455

453:                                              ; preds = %445
  %454 = trunc i64 %447 to i32
  br label %455

455:                                              ; preds = %453, %451, %418
  %456 = phi i32 [ 1, %418 ], [ %452, %451 ], [ %454, %453 ]
  %457 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %356) #23
  %458 = tail call i32 @fputs(ptr nonnull %457, ptr %0)
  %459 = icmp ugt i32 %456, 1
  br i1 %459, label %460, label %555

460:                                              ; preds = %455
  %461 = add nsw i32 %456, -1
  %462 = sext i32 %461 to i64
  %463 = zext i32 %456 to i64
  br label %464

464:                                              ; preds = %460, %551
  %465 = phi i64 [ 1, %460 ], [ %553, %551 ]
  %466 = phi i8 [ 0, %460 ], [ %552, %551 ]
  %467 = getelementptr i32, ptr %45, i64 %465
  %468 = getelementptr i32, ptr %467, i64 -1
  %469 = load i32, ptr %468, align 4, !tbaa !44
  %470 = load i32, ptr %467, align 4, !tbaa !44
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds ptr, ptr %14, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !54
  %474 = sext i32 %470 to i64
  %475 = getelementptr inbounds i32, ptr %473, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !44
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %478, label %480

478:                                              ; preds = %464
  %479 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %482

480:                                              ; preds = %464
  %481 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %0)
  br label %482

482:                                              ; preds = %480, %478
  %483 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %470) #23
  %484 = tail call i32 @fputs(ptr nonnull %483, ptr %0)
  %485 = getelementptr inbounds ptr, ptr %21, i64 %471
  %486 = load ptr, ptr %485, align 8, !tbaa !54
  %487 = getelementptr inbounds i32, ptr %486, i64 %474
  %488 = load i32, ptr %487, align 4, !tbaa !44
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, ptr %7, i64 %489
  store i8 0, ptr %490, align 1, !tbaa !87
  %491 = icmp eq i8 %466, 0
  %492 = icmp slt i64 %465, %462
  %493 = select i1 %491, i1 %492, i1 false
  br i1 %493, label %494, label %551

494:                                              ; preds = %482
  %495 = load i32, ptr %1, align 8, !tbaa !36
  %496 = icmp slt i32 %495, 1
  br i1 %496, label %551, label %497

497:                                              ; preds = %494
  %498 = getelementptr inbounds ptr, ptr %14, i64 %474
  %499 = getelementptr i32, ptr %467, i64 1
  %500 = zext i32 %470 to i64
  %501 = zext i32 %469 to i64
  br label %502

502:                                              ; preds = %497, %545
  %503 = phi i32 [ %495, %497 ], [ %546, %545 ]
  %504 = phi i64 [ 1, %497 ], [ %548, %545 ]
  %505 = phi i8 [ 0, %497 ], [ %547, %545 ]
  %506 = icmp eq i64 %504, %501
  %507 = icmp eq i64 %504, %500
  %508 = or i1 %506, %507
  br i1 %508, label %545, label %509

509:                                              ; preds = %502
  %510 = load ptr, ptr %472, align 8, !tbaa !54
  %511 = getelementptr inbounds i32, ptr %510, i64 %474
  %512 = load i32, ptr %511, align 4, !tbaa !44
  %513 = getelementptr inbounds i32, ptr %510, i64 %504
  %514 = load i32, ptr %513, align 4, !tbaa !44
  %515 = icmp eq i32 %512, %514
  br i1 %515, label %516, label %545

516:                                              ; preds = %509
  %517 = load ptr, ptr %498, align 8, !tbaa !54
  %518 = load i32, ptr %499, align 4, !tbaa !44
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, ptr %517, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !44
  %522 = getelementptr inbounds ptr, ptr %14, i64 %504
  %523 = load ptr, ptr %522, align 8, !tbaa !54
  %524 = getelementptr inbounds i32, ptr %523, i64 %519
  %525 = load i32, ptr %524, align 4, !tbaa !44
  %526 = icmp eq i32 %521, %525
  br i1 %526, label %527, label %545

527:                                              ; preds = %516
  %528 = trunc i64 %504 to i32
  %529 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %1, i32 noundef %528) #23
  %530 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %529) #23
  %531 = load ptr, ptr %485, align 8, !tbaa !54
  %532 = getelementptr inbounds i32, ptr %531, i64 %504
  %533 = load i32, ptr %532, align 4, !tbaa !44
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8, ptr %7, i64 %534
  store i8 0, ptr %535, align 1, !tbaa !87
  %536 = getelementptr inbounds ptr, ptr %21, i64 %504
  %537 = load ptr, ptr %536, align 8, !tbaa !54
  %538 = load i32, ptr %499, align 4, !tbaa !44
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, ptr %537, i64 %539
  %541 = load i32, ptr %540, align 4, !tbaa !44
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, ptr %7, i64 %542
  store i8 0, ptr %543, align 1, !tbaa !87
  %544 = load i32, ptr %1, align 8, !tbaa !36
  br label %545

545:                                              ; preds = %502, %509, %516, %527
  %546 = phi i32 [ %503, %502 ], [ %503, %509 ], [ %503, %516 ], [ %544, %527 ]
  %547 = phi i8 [ %505, %502 ], [ %505, %509 ], [ %505, %516 ], [ 1, %527 ]
  %548 = add nuw nsw i64 %504, 1
  %549 = sext i32 %546 to i64
  %550 = icmp slt i64 %504, %549
  br i1 %550, label %502, label %551, !llvm.loop !104

551:                                              ; preds = %545, %494, %482
  %552 = phi i8 [ 0, %482 ], [ 0, %494 ], [ %547, %545 ]
  %553 = add nuw nsw i64 %465, 1
  %554 = icmp eq i64 %553, %463
  br i1 %554, label %555, label %464, !llvm.loop !105

555:                                              ; preds = %551, %455
  %556 = load i32, ptr %62, align 4, !tbaa !59
  %557 = icmp sgt i32 %556, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %597, %555
  %559 = phi i32 [ %556, %555 ], [ %598, %597 ]
  br label %88

560:                                              ; preds = %555
  %561 = zext nneg i32 %456 to i64
  %562 = getelementptr i32, ptr %79, i64 %561
  %563 = load i32, ptr %562, align 4, !tbaa !44
  %564 = sext i32 %563 to i64
  br label %565

565:                                              ; preds = %560, %597
  %566 = phi i32 [ %556, %560 ], [ %598, %597 ]
  %567 = phi i64 [ 0, %560 ], [ %600, %597 ]
  %568 = phi i8 [ 1, %560 ], [ %599, %597 ]
  %569 = getelementptr inbounds i8, ptr %7, i64 %567
  %570 = load i8, ptr %569, align 1, !tbaa !87
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %597, label %572

572:                                              ; preds = %565
  %573 = load ptr, ptr %80, align 8, !tbaa !60
  %574 = getelementptr inbounds %struct.eqn_d, ptr %573, i64 %567, i32 3
  %575 = load ptr, ptr %574, align 8, !tbaa !42
  %576 = getelementptr inbounds i32, ptr %575, i64 %564
  %577 = load i32, ptr %576, align 4, !tbaa !44
  %578 = icmp eq i32 %577, -1
  br i1 %578, label %579, label %597

579:                                              ; preds = %572
  %580 = icmp eq i8 %568, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %579
  %582 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %0)
  br label %585

583:                                              ; preds = %579
  %584 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %585

585:                                              ; preds = %583, %581
  %586 = load ptr, ptr %80, align 8, !tbaa !60
  %587 = getelementptr inbounds %struct.eqn_d, ptr %586, i64 %567, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !42
  %589 = getelementptr inbounds i32, ptr %588, i64 %564
  %590 = load i32, ptr %589, align 4, !tbaa !44
  store i32 0, ptr %589, align 4, !tbaa !44
  %591 = getelementptr inbounds %struct.eqn_d, ptr %586, i64 %567
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %591, i32 noundef 1) #23
  %592 = load ptr, ptr %80, align 8, !tbaa !60
  %593 = getelementptr inbounds %struct.eqn_d, ptr %592, i64 %567, i32 3
  %594 = load ptr, ptr %593, align 8, !tbaa !42
  %595 = getelementptr inbounds i32, ptr %594, i64 %564
  store i32 %590, ptr %595, align 4, !tbaa !44
  store i8 0, ptr %569, align 1, !tbaa !87
  %596 = load i32, ptr %62, align 4, !tbaa !59
  br label %597

597:                                              ; preds = %565, %572, %585
  %598 = phi i32 [ %596, %585 ], [ %566, %572 ], [ %566, %565 ]
  %599 = phi i8 [ 0, %585 ], [ %568, %572 ], [ %568, %565 ]
  %600 = add nuw nsw i64 %567, 1
  %601 = sext i32 %598 to i64
  %602 = icmp slt i64 %600, %601
  br i1 %602, label %565, label %558, !llvm.loop !106

603:                                              ; preds = %364, %618
  %604 = phi i32 [ %619, %618 ], [ %365, %364 ]
  %605 = phi i64 [ %621, %618 ], [ 0, %364 ]
  %606 = phi i32 [ %620, %618 ], [ %90, %364 ]
  %607 = getelementptr inbounds i8, ptr %7, i64 %605
  %608 = load i8, ptr %607, align 1, !tbaa !87
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %618, label %610

610:                                              ; preds = %603
  %611 = icmp eq i32 %606, 0
  br i1 %611, label %614, label %612

612:                                              ; preds = %610
  %613 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %0)
  br label %614

614:                                              ; preds = %612, %610
  %615 = load ptr, ptr %80, align 8, !tbaa !60
  %616 = getelementptr inbounds %struct.eqn_d, ptr %615, i64 %605
  tail call fastcc void @omega_print_geq(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %616) #23
  %617 = load i32, ptr %62, align 4, !tbaa !59
  br label %618

618:                                              ; preds = %603, %614
  %619 = phi i32 [ %617, %614 ], [ %604, %603 ]
  %620 = phi i32 [ 1, %614 ], [ %606, %603 ]
  %621 = add nuw nsw i64 %605, 1
  %622 = sext i32 %619 to i64
  %623 = icmp slt i64 %621, %622
  br i1 %623, label %603, label %624, !llvm.loop !107

624:                                              ; preds = %618, %364
  %625 = phi i32 [ %90, %364 ], [ %620, %618 ]
  %626 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %627 = load i32, ptr %626, align 8, !tbaa !62
  %628 = icmp sgt i32 %627, 0
  br i1 %628, label %629, label %652

629:                                              ; preds = %624
  %630 = icmp eq i32 %625, 0
  %631 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  br label %632

632:                                              ; preds = %629, %647
  %633 = phi i64 [ 0, %629 ], [ %648, %647 ]
  %634 = phi i1 [ %630, %629 ], [ false, %647 ]
  %635 = load ptr, ptr %631, align 8, !tbaa !63
  %636 = getelementptr inbounds %struct.eqn_d, ptr %635, i64 %633
  br i1 %634, label %639, label %637

637:                                              ; preds = %632
  %638 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %0)
  br label %639

639:                                              ; preds = %637, %632
  %640 = load i32, ptr %636, align 8, !tbaa !46
  %641 = icmp sgt i32 %640, 0
  br i1 %641, label %642, label %645

642:                                              ; preds = %639
  %643 = tail call fastcc ptr @omega_var_to_str(i32 noundef %640) #23
  %644 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %643) #23
  br label %647

645:                                              ; preds = %639
  %646 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %640) #23
  br label %647

647:                                              ; preds = %645, %642
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %636, i32 noundef 1) #23
  %648 = add nuw nsw i64 %633, 1
  %649 = load i32, ptr %626, align 8, !tbaa !62
  %650 = sext i32 %649 to i64
  %651 = icmp slt i64 %648, %650
  br i1 %651, label %632, label %652, !llvm.loop !108

652:                                              ; preds = %647, %624, %50
  tail call void @free(ptr noundef %7) #23
  tail call void @free(ptr noundef %14) #23
  tail call void @free(ptr noundef %21) #23
  tail call void @free(ptr noundef %27) #23
  tail call void @free(ptr noundef %33) #23
  tail call void @free(ptr noundef %39) #23
  tail call void @free(ptr noundef %45) #23
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @omega_eliminate_redundant(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #7 !prof !35 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 65, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #24
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 65, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr @xmalloc(i64 noundef %12) #24
  %14 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.param_info, ptr %14, i64 65, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !83
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr @xmalloc(i64 noundef %18) #24
  %20 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.param_info, ptr %20, i64 65, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !83
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr @xmalloc(i64 noundef %24) #24
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 24, i64 1, ptr nonnull %26)
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %34, ptr noundef %0) #23
  br label %35

35:                                               ; preds = %32, %28, %2
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %434

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %41 = zext nneg i32 %37 to i64
  br label %44

42:                                               ; preds = %58, %44
  %43 = icmp sgt i64 %45, 1
  br i1 %43, label %44, label %72, !llvm.loop !109

44:                                               ; preds = %39, %42
  %45 = phi i64 [ %41, %39 ], [ %46, %42 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds i8, ptr %7, i64 %46
  store i8 0, ptr %47, align 1, !tbaa !87
  %48 = getelementptr inbounds i32, ptr %25, i64 %46
  store i32 0, ptr %48, align 4, !tbaa !44
  %49 = getelementptr inbounds i32, ptr %19, i64 %46
  store i32 0, ptr %49, align 4, !tbaa !44
  %50 = getelementptr inbounds i32, ptr %13, i64 %46
  store i32 0, ptr %50, align 4, !tbaa !44
  %51 = load i32, ptr %0, align 8, !tbaa !36
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %42

53:                                               ; preds = %44
  %54 = load ptr, ptr %40, align 8, !tbaa !60
  %55 = getelementptr inbounds %struct.eqn_d, ptr %54, i64 %46, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !42
  %57 = zext nneg i32 %51 to i64
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %57, %53 ], [ %70, %58 ]
  %60 = phi i32 [ 1, %53 ], [ %69, %58 ]
  %61 = getelementptr inbounds i32, ptr %56, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !44
  %63 = icmp sgt i32 %62, 0
  %64 = icmp slt i32 %62, 0
  %65 = select i1 %64, ptr %48, ptr %49
  %66 = select i1 %63, ptr %50, ptr %65
  %67 = load i32, ptr %66, align 4, !tbaa !44
  %68 = or i32 %67, %60
  store i32 %68, ptr %66, align 4, !tbaa !44
  %69 = shl i32 %60, 1
  %70 = add nsw i64 %59, -1
  %71 = icmp sgt i64 %59, 1
  br i1 %71, label %58, label %42, !llvm.loop !110

72:                                               ; preds = %42
  %73 = load i32, ptr %36, align 4, !tbaa !59
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %434

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %77 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %78 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %79 = add nsw i32 %73, -2
  %80 = zext nneg i32 %73 to i64
  br label %81

81:                                               ; preds = %75, %415
  %82 = phi i64 [ %80, %75 ], [ %85, %415 ]
  %83 = phi i32 [ %79, %75 ], [ %417, %415 ]
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %82, -1
  %86 = getelementptr inbounds i8, ptr %7, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !87
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %415

89:                                               ; preds = %81
  %90 = icmp ugt i64 %82, 1
  br i1 %90, label %91, label %418

91:                                               ; preds = %89
  %92 = getelementptr inbounds i32, ptr %19, i64 %85
  %93 = getelementptr inbounds i32, ptr %13, i64 %85
  %94 = getelementptr inbounds i32, ptr %25, i64 %85
  br label %95

95:                                               ; preds = %91, %411
  %96 = phi i64 [ %84, %91 ], [ %412, %411 ]
  %97 = getelementptr inbounds i8, ptr %7, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !87
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %411

100:                                              ; preds = %95
  %101 = load i32, ptr %0, align 8, !tbaa !36
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %411

103:                                              ; preds = %100
  %104 = zext nneg i32 %101 to i64
  br label %105

105:                                              ; preds = %103, %129
  %106 = phi i64 [ %104, %103 ], [ %130, %129 ]
  br label %107

107:                                              ; preds = %105, %111
  %108 = phi i64 [ %106, %105 ], [ %112, %111 ]
  %109 = trunc i64 %108 to i32
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = add nsw i64 %108, -1
  %113 = load ptr, ptr %76, align 8, !tbaa !60
  %114 = getelementptr inbounds %struct.eqn_d, ptr %113, i64 %85, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !42
  %116 = getelementptr inbounds i32, ptr %115, i64 %106
  %117 = load i32, ptr %116, align 4, !tbaa !44
  %118 = getelementptr inbounds %struct.eqn_d, ptr %113, i64 %96, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !42
  %120 = getelementptr inbounds i32, ptr %119, i64 %112
  %121 = load i32, ptr %120, align 4, !tbaa !44
  %122 = mul nsw i32 %121, %117
  %123 = getelementptr inbounds i32, ptr %119, i64 %106
  %124 = load i32, ptr %123, align 4, !tbaa !44
  %125 = getelementptr inbounds i32, ptr %115, i64 %112
  %126 = load i32, ptr %125, align 4, !tbaa !44
  %127 = mul nsw i32 %126, %124
  %128 = icmp eq i32 %122, %127
  br i1 %128, label %107, label %132, !llvm.loop !111

129:                                              ; preds = %107
  %130 = add nsw i64 %106, -1
  %131 = icmp sgt i64 %106, 2
  br i1 %131, label %105, label %411, !llvm.loop !112

132:                                              ; preds = %111
  %133 = sub nsw i32 %122, %127
  %134 = load i32, ptr %92, align 4, !tbaa !44
  %135 = getelementptr inbounds i32, ptr %19, i64 %96
  %136 = load i32, ptr %135, align 4, !tbaa !44
  %137 = and i32 %136, %134
  %138 = load i32, ptr %93, align 4, !tbaa !44
  %139 = getelementptr inbounds i32, ptr %25, i64 %96
  %140 = load i32, ptr %139, align 4, !tbaa !44
  %141 = and i32 %140, %138
  %142 = or i32 %141, %137
  %143 = load i32, ptr %94, align 4, !tbaa !44
  %144 = getelementptr inbounds i32, ptr %13, i64 %96
  %145 = load i32, ptr %144, align 4, !tbaa !44
  %146 = and i32 %145, %143
  %147 = or i32 %142, %146
  %148 = or i32 %145, %138
  %149 = or i32 %143, %140
  %150 = load i32, ptr %36, align 4, !tbaa !59
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %411

152:                                              ; preds = %132
  %153 = sub nsw i32 0, %133
  %154 = zext nneg i32 %150 to i64
  br label %155

155:                                              ; preds = %152, %409
  %156 = phi i64 [ %154, %152 ], [ %157, %409 ]
  %157 = add nsw i64 %156, -1
  %158 = icmp eq i64 %156, %82
  %159 = icmp eq i64 %157, %96
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %409, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds i32, ptr %19, i64 %157
  %163 = load i32, ptr %162, align 4, !tbaa !44
  %164 = tail call fastcc zeroext i8 @implies(i32 noundef %163, i32 noundef %147) #23, !range !113
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %409, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr %76, align 8, !tbaa !60
  %168 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %96, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !42
  %170 = getelementptr inbounds i32, ptr %169, i64 %112
  %171 = load i32, ptr %170, align 4, !tbaa !44
  %172 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %157, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !42
  %174 = getelementptr inbounds i32, ptr %173, i64 %106
  %175 = load i32, ptr %174, align 4, !tbaa !44
  %176 = mul nsw i32 %175, %171
  %177 = getelementptr inbounds i32, ptr %169, i64 %106
  %178 = load i32, ptr %177, align 4, !tbaa !44
  %179 = getelementptr inbounds i32, ptr %173, i64 %112
  %180 = load i32, ptr %179, align 4, !tbaa !44
  %181 = mul nsw i32 %180, %178
  %182 = sub nsw i32 %176, %181
  %183 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %85, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !42
  %185 = getelementptr inbounds i32, ptr %184, i64 %112
  %186 = load i32, ptr %185, align 4, !tbaa !44
  %187 = mul nsw i32 %186, %175
  %188 = getelementptr inbounds i32, ptr %184, i64 %106
  %189 = load i32, ptr %188, align 4, !tbaa !44
  %190 = mul nsw i32 %189, %180
  %191 = sub nsw i32 %187, %190
  %192 = sub nsw i32 0, %191
  %193 = mul nsw i32 %182, %192
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %409, label %195

195:                                              ; preds = %166
  %196 = icmp slt i32 %182, 0
  %197 = tail call i32 @llvm.abs.i32(i32 %182, i1 true)
  %198 = select i1 %196, i32 %191, i32 %192
  %199 = select i1 %196, i32 %153, i32 %133
  %200 = icmp sgt i32 %199, 0
  %201 = getelementptr inbounds i32, ptr %13, i64 %157
  %202 = load i32, ptr %201, align 4, !tbaa !44
  br i1 %200, label %203, label %279

203:                                              ; preds = %195
  %204 = tail call fastcc zeroext i8 @implies(i32 noundef %202, i32 noundef %148) #23, !range !113
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %409, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds i32, ptr %25, i64 %157
  %208 = load i32, ptr %207, align 4, !tbaa !44
  %209 = tail call fastcc zeroext i8 @implies(i32 noundef %208, i32 noundef %149) #23, !range !113
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %409, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %157, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !47
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %85, i32 2
  %217 = load i32, ptr %216, align 8, !tbaa !47
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %409, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %96, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !47
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %409, label %223

223:                                              ; preds = %219, %211
  %224 = load i32, ptr %0, align 8, !tbaa !36
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %229, label %243

226:                                              ; preds = %229
  %227 = add nsw i32 %230, -1
  %228 = icmp sgt i32 %230, 1
  br i1 %228, label %229, label %243, !llvm.loop !114

229:                                              ; preds = %223, %226
  %230 = phi i32 [ %227, %226 ], [ %224, %223 ]
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds i32, ptr %173, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !44
  %234 = mul nsw i32 %233, %199
  %235 = getelementptr inbounds i32, ptr %184, i64 %231
  %236 = load i32, ptr %235, align 4, !tbaa !44
  %237 = mul nsw i32 %236, %197
  %238 = getelementptr inbounds i32, ptr %169, i64 %231
  %239 = load i32, ptr %238, align 4, !tbaa !44
  %240 = mul nsw i32 %239, %198
  %241 = add nsw i32 %240, %237
  %242 = icmp eq i32 %234, %241
  br i1 %242, label %226, label %409

243:                                              ; preds = %226, %223
  %244 = load i32, ptr %184, align 4, !tbaa !44
  %245 = mul nsw i32 %244, %197
  %246 = load i32, ptr %169, align 4, !tbaa !44
  %247 = mul nsw i32 %246, %198
  %248 = add nsw i32 %247, %245
  %249 = load i32, ptr %173, align 4, !tbaa !44
  %250 = add nsw i32 %249, 1
  %251 = mul nsw i32 %250, %199
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %409

253:                                              ; preds = %243
  %254 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %255 = icmp eq ptr %254, null
  br i1 %255, label %407, label %256

256:                                              ; preds = %253
  %257 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %258 = and i32 %257, 8
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %407, label %260

260:                                              ; preds = %256
  %261 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 27, i64 1, ptr nonnull %254)
  %262 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.30, i32 noundef %197, i32 noundef %198, i32 noundef %199) #23
  %264 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %265 = load ptr, ptr %76, align 8, !tbaa !60
  %266 = getelementptr inbounds %struct.eqn_d, ptr %265, i64 %85
  tail call fastcc void @omega_print_geq(ptr noundef %264, ptr noundef nonnull %0, ptr noundef %266) #23
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %268 = tail call i32 @fputc(i32 10, ptr %267)
  %269 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %270 = load ptr, ptr %76, align 8, !tbaa !60
  %271 = getelementptr inbounds %struct.eqn_d, ptr %270, i64 %96
  tail call fastcc void @omega_print_geq(ptr noundef %269, ptr noundef nonnull %0, ptr noundef %271) #23
  %272 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %273 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 4, i64 1, ptr %272)
  %274 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %275 = load ptr, ptr %76, align 8, !tbaa !60
  %276 = getelementptr inbounds %struct.eqn_d, ptr %275, i64 %157
  tail call fastcc void @omega_print_geq(ptr noundef %274, ptr noundef nonnull %0, ptr noundef %276) #23
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %278 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 2, i64 1, ptr %277)
  br label %407

279:                                              ; preds = %195
  %280 = tail call fastcc zeroext i8 @implies(i32 noundef %202, i32 noundef %149) #23, !range !113
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %409, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds i32, ptr %25, i64 %157
  %284 = load i32, ptr %283, align 4, !tbaa !44
  %285 = tail call fastcc zeroext i8 @implies(i32 noundef %284, i32 noundef %148) #23, !range !113
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %409, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %85, i32 2
  %289 = load i32, ptr %288, align 8, !tbaa !47
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %409, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %96, i32 2
  %293 = load i32, ptr %292, align 8, !tbaa !47
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %409, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %157, i32 2
  %297 = load i32, ptr %296, align 8, !tbaa !47
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %409, label %299

299:                                              ; preds = %295
  %300 = load i32, ptr %0, align 8, !tbaa !36
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %305, label %319

302:                                              ; preds = %305
  %303 = add nsw i32 %306, -1
  %304 = icmp sgt i32 %306, 1
  br i1 %304, label %305, label %319, !llvm.loop !115

305:                                              ; preds = %299, %302
  %306 = phi i32 [ %303, %302 ], [ %300, %299 ]
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %173, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !44
  %310 = mul nsw i32 %309, %199
  %311 = getelementptr inbounds i32, ptr %184, i64 %307
  %312 = load i32, ptr %311, align 4, !tbaa !44
  %313 = mul nsw i32 %312, %197
  %314 = getelementptr inbounds i32, ptr %169, i64 %307
  %315 = load i32, ptr %314, align 4, !tbaa !44
  %316 = mul nsw i32 %315, %198
  %317 = add nsw i32 %316, %313
  %318 = icmp eq i32 %310, %317
  br i1 %318, label %302, label %409

319:                                              ; preds = %302, %299
  %320 = load i32, ptr %184, align 4, !tbaa !44
  %321 = mul nsw i32 %320, %197
  %322 = load i32, ptr %169, align 4, !tbaa !44
  %323 = mul nsw i32 %322, %198
  %324 = add nsw i32 %323, %321
  %325 = load i32, ptr %173, align 4, !tbaa !44
  %326 = mul nsw i32 %325, %199
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %355

328:                                              ; preds = %319
  %329 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %330 = icmp eq ptr %329, null
  br i1 %330, label %477, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %333 = and i32 %332, 8
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %477, label %335

335:                                              ; preds = %331
  %336 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 36, i64 1, ptr nonnull %329)
  %337 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %338 = sub nsw i32 0, %199
  %339 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.30, i32 noundef %197, i32 noundef %198, i32 noundef %338) #23
  %340 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %341 = load ptr, ptr %76, align 8, !tbaa !60
  %342 = getelementptr inbounds %struct.eqn_d, ptr %341, i64 %85
  tail call fastcc void @omega_print_geq(ptr noundef %340, ptr noundef nonnull %0, ptr noundef %342) #23
  %343 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %344 = tail call i32 @fputc(i32 10, ptr %343)
  %345 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %346 = load ptr, ptr %76, align 8, !tbaa !60
  %347 = getelementptr inbounds %struct.eqn_d, ptr %346, i64 %96
  tail call fastcc void @omega_print_geq(ptr noundef %345, ptr noundef nonnull %0, ptr noundef %347) #23
  %348 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %349 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 8, i64 1, ptr %348)
  %350 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %351 = load ptr, ptr %76, align 8, !tbaa !60
  %352 = getelementptr inbounds %struct.eqn_d, ptr %351, i64 %157
  tail call fastcc void @omega_print_geq(ptr noundef %350, ptr noundef nonnull %0, ptr noundef %352) #23
  %353 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %354 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 2, i64 1, ptr %353)
  br label %477

355:                                              ; preds = %319
  %356 = add nsw i32 %325, -1
  %357 = mul nsw i32 %356, %199
  %358 = icmp slt i32 %324, %357
  br i1 %358, label %359, label %409

359:                                              ; preds = %355
  %360 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %361 = icmp eq ptr %360, null
  br i1 %361, label %388, label %362

362:                                              ; preds = %359
  %363 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %364 = and i32 %363, 8
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %388, label %366

366:                                              ; preds = %362
  %367 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 31, i64 1, ptr nonnull %360)
  %368 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %369 = sub nsw i32 0, %199
  %370 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %368, ptr noundef nonnull @.str.30, i32 noundef %197, i32 noundef %198, i32 noundef %369) #23
  %371 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %372 = load ptr, ptr %76, align 8, !tbaa !60
  %373 = getelementptr inbounds %struct.eqn_d, ptr %372, i64 %85
  tail call fastcc void @omega_print_geq(ptr noundef %371, ptr noundef nonnull %0, ptr noundef %373) #23
  %374 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %375 = tail call i32 @fputc(i32 10, ptr %374)
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %377 = load ptr, ptr %76, align 8, !tbaa !60
  %378 = getelementptr inbounds %struct.eqn_d, ptr %377, i64 %96
  tail call fastcc void @omega_print_geq(ptr noundef %376, ptr noundef nonnull %0, ptr noundef %378) #23
  %379 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %380 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 12, i64 1, ptr %379)
  %381 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %382 = load ptr, ptr %76, align 8, !tbaa !60
  %383 = getelementptr inbounds %struct.eqn_d, ptr %382, i64 %157
  tail call fastcc void @omega_print_geq(ptr noundef %381, ptr noundef nonnull %0, ptr noundef %383) #23
  %384 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %385 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 2, i64 1, ptr %384)
  %386 = load ptr, ptr %76, align 8, !tbaa !60
  %387 = load i32, ptr %0, align 8, !tbaa !36
  br label %388

388:                                              ; preds = %366, %362, %359
  %389 = phi i32 [ %387, %366 ], [ %300, %362 ], [ %300, %359 ]
  %390 = phi ptr [ %386, %366 ], [ %167, %362 ], [ %167, %359 ]
  %391 = load ptr, ptr %77, align 8, !tbaa !57
  %392 = load i32, ptr %78, align 8, !tbaa !56
  %393 = add nsw i32 %392, 1
  store i32 %393, ptr %78, align 8, !tbaa !56
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds %struct.eqn_d, ptr %391, i64 %394
  %396 = getelementptr inbounds %struct.eqn_d, ptr %390, i64 %157
  tail call fastcc void @omega_copy_eqn(ptr noundef %395, ptr noundef %396, i32 noundef %389) #23
  %397 = load i32, ptr %78, align 8, !tbaa !56
  %398 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %399 = getelementptr inbounds %struct.param_info, ptr %398, i64 66, i32 1
  %400 = load i32, ptr %399, align 8, !tbaa !83
  %401 = icmp sgt i32 %397, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %388
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 2271, ptr noundef nonnull @.str.26) #24
  %403 = load i32, ptr %78, align 8, !tbaa !56
  br label %404

404:                                              ; preds = %388, %402
  %405 = phi i32 [ %397, %388 ], [ %403, %402 ]
  %406 = add nsw i32 %405, -1
  tail call fastcc void @adding_equality_constraint(ptr noundef nonnull %0, i32 noundef %406) #23
  br label %407

407:                                              ; preds = %253, %256, %260, %404
  %408 = getelementptr inbounds i8, ptr %7, i64 %157
  store i8 1, ptr %408, align 1, !tbaa !87
  br label %409

409:                                              ; preds = %305, %229, %407, %155, %243, %355, %287, %291, %295, %279, %282, %215, %219, %203, %206, %166, %161
  %410 = icmp sgt i64 %156, 1
  br i1 %410, label %155, label %411, !llvm.loop !116

411:                                              ; preds = %129, %409, %100, %132, %95
  %412 = add nsw i64 %96, -1
  %413 = trunc i64 %96 to i32
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %95, label %415, !llvm.loop !117

415:                                              ; preds = %411, %81
  %416 = icmp sgt i64 %82, 1
  %417 = add nsw i32 %83, -1
  br i1 %416, label %81, label %418, !llvm.loop !118

418:                                              ; preds = %89, %415
  %419 = load i32, ptr %36, align 4, !tbaa !59
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %434

421:                                              ; preds = %418
  %422 = zext nneg i32 %419 to i64
  br label %423

423:                                              ; preds = %421, %432
  %424 = phi i64 [ %422, %421 ], [ %425, %432 ]
  %425 = add nsw i64 %424, -1
  %426 = getelementptr inbounds i8, ptr %7, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !87
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %423
  %430 = load i32, ptr %0, align 8, !tbaa !36
  %431 = trunc i64 %425 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %431, i32 noundef %430) #23
  br label %432

432:                                              ; preds = %423, %429
  %433 = icmp ugt i64 %424, 1
  br i1 %433, label %423, label %434, !llvm.loop !119

434:                                              ; preds = %432, %35, %72, %418
  %435 = icmp eq i8 %1, 0
  br i1 %435, label %477, label %436

436:                                              ; preds = %434
  %437 = tail call ptr @xmalloc(i64 noundef 72) #24
  %438 = load i32, ptr @conservative, align 4, !tbaa !44
  %439 = add nsw i32 %438, 1
  store i32 %439, ptr @conservative, align 4, !tbaa !44
  %440 = load i32, ptr %36, align 4, !tbaa !59
  %441 = icmp sgt i32 %440, 0
  br i1 %441, label %442, label %475

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %444 = getelementptr inbounds %struct.omega_pb_d, ptr %437, i64 0, i32 1
  %445 = getelementptr inbounds %struct.omega_pb_d, ptr %437, i64 0, i32 7
  %446 = zext nneg i32 %440 to i64
  br label %447

447:                                              ; preds = %442, %470
  %448 = phi i64 [ %446, %442 ], [ %449, %470 ]
  %449 = add nsw i64 %448, -1
  %450 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %451 = icmp eq ptr %450, null
  br i1 %451, label %464, label %452

452:                                              ; preds = %447
  %453 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %454 = and i32 %453, 8
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %464, label %456

456:                                              ; preds = %452
  %457 = trunc i64 %449 to i32
  %458 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %450, ptr noundef nonnull @.str.37, i32 noundef %457) #23
  %459 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %460 = load ptr, ptr %443, align 8, !tbaa !60
  %461 = getelementptr inbounds %struct.eqn_d, ptr %460, i64 %449
  tail call fastcc void @omega_print_geq(ptr noundef %459, ptr noundef %0, ptr noundef %461) #23
  %462 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %463 = tail call i32 @fputc(i32 10, ptr %462)
  br label %464

464:                                              ; preds = %456, %452, %447
  tail call fastcc void @omega_copy_problem(ptr noundef %437, ptr noundef %0) #23
  %465 = trunc i64 %449 to i32
  tail call void @omega_negate_geq(ptr noundef %437, i32 noundef %465) #23
  store i32 0, ptr %444, align 4, !tbaa !69
  store i8 0, ptr %445, align 1, !tbaa !120
  %466 = tail call i32 @omega_solve_problem(ptr noundef %437, i32 noundef 0) #23
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %470

468:                                              ; preds = %464
  %469 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %465, i32 noundef %469) #23
  br label %470

470:                                              ; preds = %464, %468
  %471 = icmp ugt i64 %448, 1
  br i1 %471, label %447, label %472, !llvm.loop !121

472:                                              ; preds = %470
  %473 = load i32, ptr @conservative, align 4, !tbaa !44
  %474 = add nsw i32 %473, -1
  br label %475

475:                                              ; preds = %472, %436
  %476 = phi i32 [ %474, %472 ], [ %438, %436 ]
  tail call void @free(ptr noundef %437) #23
  store i32 %476, ptr @conservative, align 4, !tbaa !44
  br label %477

477:                                              ; preds = %434, %475, %328, %331, %335
  %478 = phi i32 [ 0, %335 ], [ 0, %331 ], [ 0, %328 ], [ 1, %475 ], [ 1, %434 ]
  tail call void @free(ptr noundef %7) #23
  tail call void @free(ptr noundef %13) #23
  tail call void @free(ptr noundef %19) #23
  tail call void @free(ptr noundef %25) #23
  ret i32 %478
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @omega_negate_geq(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !35 {
  %3 = load i32, ptr %0, align 8, !tbaa !36
  %4 = icmp sgt i32 %3, -1
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.eqn_d, ptr %6, i64 %7, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  br i1 %4, label %10, label %19

10:                                               ; preds = %2
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %11, %10 ], [ %17, %12 ]
  %14 = getelementptr inbounds i32, ptr %9, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = sub nsw i32 0, %15
  store i32 %16, ptr %14, align 4, !tbaa !44
  %17 = add nsw i64 %13, -1
  %18 = icmp eq i64 %13, 0
  br i1 %18, label %19, label %12, !llvm.loop !122

19:                                               ; preds = %12, %2
  %20 = load i32, ptr %9, align 4, !tbaa !44
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %9, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.eqn_d, ptr %6, i64 %7, i32 1
  store i32 1, ptr %22, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @implies(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !123 {
  %3 = and i32 %1, %0
  %4 = icmp eq i32 %3, %0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_copy_eqn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 !prof !35 !PGOFuncName !124 {
  %4 = load <2 x i32>, ptr %1, align 8, !tbaa !44
  store <2 x i32> %4, ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = add nsw i32 %2, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %11, i64 %14, i1 false)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @adding_equality_constraint(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !35 !PGOFuncName !125 {
  %3 = load ptr, ptr @original_problem, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, %0
  %7 = load i32, ptr @conservative, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %108, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !56
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %14, ptr noundef nonnull @.str.38, i32 noundef %12) #23
  %22 = load ptr, ptr @original_problem, align 8, !tbaa !54
  br label %23

23:                                               ; preds = %20, %16, %10
  %24 = phi ptr [ %22, %20 ], [ %3, %16 ], [ %3, %10 ]
  %25 = getelementptr inbounds %struct.omega_pb_d, ptr %24, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = sext i32 %12 to i64
  %28 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %27
  %29 = load i32, ptr %24, align 8, !tbaa !36
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %28, i32 noundef %29) #23
  %30 = load i32, ptr %0, align 8, !tbaa !36
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = sext i32 %1 to i64
  %36 = load ptr, ptr @original_problem, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.omega_pb_d, ptr %36, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.eqn_d, ptr %38, i64 %27, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %35, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  br label %96

43:                                               ; preds = %23
  %44 = load ptr, ptr @original_problem, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct.omega_pb_d, ptr %44, i64 0, i32 8
  %46 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %47 = zext nneg i32 %30 to i64
  br label %48

48:                                               ; preds = %43, %81
  %49 = phi i64 [ %47, %43 ], [ %94, %81 ]
  %50 = load i32, ptr %44, align 8, !tbaa !36
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load ptr, ptr %45, align 8, !tbaa !52
  %54 = load ptr, ptr %46, align 8, !tbaa !52
  %55 = getelementptr inbounds i32, ptr %54, i64 %49
  %56 = load i32, ptr %55, align 4, !tbaa !44
  br label %57

57:                                               ; preds = %52, %63
  %58 = phi i32 [ %50, %52 ], [ %64, %63 ]
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %53, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !44
  %62 = icmp eq i32 %61, %56
  br i1 %62, label %81, label %63

63:                                               ; preds = %57
  %64 = add nsw i32 %58, -1
  %65 = icmp sgt i32 %58, 1
  br i1 %65, label %57, label %66, !llvm.loop !126

66:                                               ; preds = %48, %63
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 11, i64 1, ptr nonnull %67)
  %75 = load ptr, ptr @original_problem, align 8, !tbaa !54
  br label %76

76:                                               ; preds = %73, %69, %66
  %77 = phi ptr [ %75, %73 ], [ %44, %69 ], [ %44, %66 ]
  %78 = getelementptr inbounds %struct.omega_pb_d, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !56
  %80 = add nsw i32 %79, -1
  store i32 %80, ptr %78, align 8, !tbaa !56
  br label %108

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %83 = sext i32 %1 to i64
  %84 = getelementptr inbounds %struct.omega_pb_d, ptr %44, i64 0, i32 11
  %85 = load ptr, ptr %82, align 8, !tbaa !57
  %86 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %83, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !42
  %88 = getelementptr inbounds i32, ptr %87, i64 %49
  %89 = load i32, ptr %88, align 4, !tbaa !44
  %90 = load ptr, ptr %84, align 8, !tbaa !57
  %91 = getelementptr inbounds %struct.eqn_d, ptr %90, i64 %27, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !42
  %93 = getelementptr inbounds i32, ptr %92, i64 %59
  store i32 %89, ptr %93, align 4, !tbaa !44
  %94 = add nsw i64 %49, -1
  %95 = icmp sgt i64 %49, 1
  br i1 %95, label %48, label %96, !llvm.loop !127

96:                                               ; preds = %81, %32
  %97 = phi ptr [ %42, %32 ], [ %87, %81 ]
  %98 = phi ptr [ %40, %32 ], [ %92, %81 ]
  %99 = phi ptr [ %36, %32 ], [ %44, %81 ]
  %100 = load i32, ptr %97, align 4, !tbaa !44
  store i32 %100, ptr %98, align 4, !tbaa !44
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %96
  %104 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call void @omega_print_problem(ptr noundef nonnull %101, ptr noundef nonnull %99) #23
  br label %108

108:                                              ; preds = %76, %107, %103, %96, %5, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_delete_geq(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !35 !PGOFuncName !128 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !59
  %13 = add nsw i32 %12, -1
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.40, i32 noundef %1, i32 noundef %13) #23
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %18
  tail call fastcc void @omega_print_geq(ptr noundef %15, ptr noundef %0, ptr noundef %19) #23
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  br label %22

22:                                               ; preds = %10, %6, %3
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !59
  %25 = add nsw i32 %24, -1
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %30
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %32
  tail call fastcc void @omega_copy_eqn(ptr noundef %31, ptr noundef %33, i32 noundef %2) #23
  %34 = load i32, ptr %23, align 4, !tbaa !59
  %35 = add nsw i32 %34, -1
  br label %36

36:                                               ; preds = %27, %22
  %37 = phi i32 [ %35, %27 ], [ %25, %22 ]
  store i32 %37, ptr %23, align 4, !tbaa !59
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_copy_problem(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !35 !PGOFuncName !129 {
  %3 = load i32, ptr %1, align 8, !tbaa !36
  store i32 %3, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !130
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  store i32 %5, ptr %6, align 4, !tbaa !130
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %8 = load i8, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 6
  store i8 %8, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 7
  %11 = load i8, ptr %10, align 1, !tbaa !120
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 7
  store i8 %11, ptr %12, align 1, !tbaa !120
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %17 = load <4 x i32>, ptr %13, align 4, !tbaa !44
  store <4 x i32> %17, ptr %14, align 4, !tbaa !44
  %18 = extractelement <4 x i32> %17, i64 1
  %19 = icmp sgt i32 %18, 0
  %20 = extractelement <4 x i32> %17, i64 2
  br i1 %19, label %21, label %36

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  %24 = zext nneg i32 %18 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %24, %21 ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = load ptr, ptr %22, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %27
  %30 = load ptr, ptr %23, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %27
  %32 = load i32, ptr %1, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %29, ptr noundef %31, i32 noundef %32) #23
  %33 = icmp ugt i64 %26, 1
  br i1 %33, label %25, label %34, !llvm.loop !131

34:                                               ; preds = %25
  %35 = load i32, ptr %16, align 4, !tbaa !59
  br label %36

36:                                               ; preds = %34, %2
  %37 = phi i32 [ %35, %34 ], [ %20, %2 ]
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %42 = zext nneg i32 %37 to i64
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ %42, %39 ], [ %45, %43 ]
  %45 = add nsw i64 %44, -1
  %46 = load ptr, ptr %40, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.eqn_d, ptr %46, i64 %45
  %48 = load ptr, ptr %41, align 8, !tbaa !60
  %49 = getelementptr inbounds %struct.eqn_d, ptr %48, i64 %45
  %50 = load i32, ptr %1, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %47, ptr noundef %49, i32 noundef %50) #23
  %51 = icmp ugt i64 %44, 1
  br i1 %51, label %43, label %52, !llvm.loop !132

52:                                               ; preds = %43, %36
  %53 = load i32, ptr %15, align 8, !tbaa !62
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %57 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  %58 = zext nneg i32 %53 to i64
  br label %59

59:                                               ; preds = %55, %59
  %60 = phi i64 [ %58, %55 ], [ %61, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = load ptr, ptr %56, align 8, !tbaa !63
  %63 = getelementptr inbounds %struct.eqn_d, ptr %62, i64 %61
  %64 = load ptr, ptr %57, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %61
  %66 = load i32, ptr %1, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %63, ptr noundef %65, i32 noundef %66) #23
  %67 = icmp ugt i64 %60, 1
  br i1 %67, label %59, label %68, !llvm.loop !133

68:                                               ; preds = %59, %52
  %69 = load i32, ptr %1, align 8, !tbaa !36
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  %76 = zext nneg i32 %69 to i64
  br label %77

77:                                               ; preds = %71, %77
  %78 = phi i64 [ %76, %71 ], [ %82, %77 ]
  %79 = getelementptr inbounds i32, ptr %73, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !44
  %81 = getelementptr inbounds i32, ptr %75, i64 %78
  store i32 %80, ptr %81, align 4, !tbaa !44
  %82 = add nsw i64 %78, -1
  %83 = icmp eq i64 %78, 0
  br i1 %83, label %84, label %77, !llvm.loop !134

84:                                               ; preds = %77, %68
  %85 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %86 = getelementptr inbounds %struct.param_info, ptr %85, i64 64, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !83
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !66
  %92 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !66
  %94 = zext nneg i32 %87 to i64
  br label %95

95:                                               ; preds = %89, %95
  %96 = phi i64 [ %94, %89 ], [ %100, %95 ]
  %97 = getelementptr inbounds i32, ptr %91, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !44
  %99 = getelementptr inbounds i32, ptr %93, i64 %96
  store i32 %98, ptr %99, align 4, !tbaa !44
  %100 = add nsw i64 %96, -1
  %101 = icmp eq i64 %96, 0
  br i1 %101, label %102, label %95, !llvm.loop !135

102:                                              ; preds = %95, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @omega_solve_problem(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !35 {
  %3 = load i32, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 4793, ptr noundef nonnull @.str.26) #24
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, ptr @omega_solve_depth, align 4, !tbaa !44
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @omega_solve_depth, align 4, !tbaa !44
  %11 = icmp eq i32 %1, 3
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 0, ptr %4, align 4, !tbaa !69
  br label %13

13:                                               ; preds = %12, %8
  %14 = icmp sgt i32 %9, 49
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i1, ptr @in_approximate_mode, align 1
  %24 = zext i1 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %16, ptr noundef nonnull @.str.72, i32 noundef %10, i32 noundef %24) #23
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %26, ptr noundef nonnull %0) #23
  br label %27

27:                                               ; preds = %22, %18, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 4808, ptr noundef nonnull @.str.26) #24
  br label %28

28:                                               ; preds = %27, %13
  %29 = tail call fastcc i32 @omega_solve_eq(ptr noundef nonnull %0, i32 noundef %1) #23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load i1, ptr @in_approximate_mode, align 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !59
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, ptr %4, align 4, !tbaa !69
  store i32 %38, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0) #23
  br label %41

39:                                               ; preds = %33, %31
  %40 = tail call fastcc i32 @omega_solve_geq(ptr noundef nonnull %0, i32 noundef %1) #23
  br label %41

41:                                               ; preds = %37, %39, %28
  %42 = phi i32 [ 0, %28 ], [ %40, %39 ], [ 1, %37 ]
  %43 = load i32, ptr @omega_solve_depth, align 4, !tbaa !44
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr @omega_solve_depth, align 4, !tbaa !44
  ret i32 %42
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_init_eqn_zero(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !35 !PGOFuncName !136 {
  store i32 0, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !45
  %4 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @omega_safe_var_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !137 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 160, ptr noundef nonnull @.str.26) #24
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !69
  %8 = icmp sge i32 %7, %1
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @omega_wildcard_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !35 !PGOFuncName !138 {
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = lshr i32 %7, 31
  %9 = trunc i32 %8 to i8
  ret i8 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_unprotect_1(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 !prof !35 !PGOFuncName !139 {
  %4 = load i32, ptr %1, align 4, !tbaa !44
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %101

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %14 = sext i32 %6 to i64
  %15 = zext nneg i32 %10 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ %15, %12 ], [ %18, %16 ]
  %18 = add nsw i64 %17, -1
  %19 = load ptr, ptr %13, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.eqn_d, ptr %19, i64 %18, i32 1
  store i32 1, ptr %20, align 4, !tbaa !45
  %21 = getelementptr inbounds %struct.eqn_d, ptr %19, i64 %18, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = load i32, ptr %1, align 4, !tbaa !44
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = getelementptr inbounds i32, ptr %22, i64 %14
  tail call fastcc void @swap(ptr noundef %25, ptr noundef %26) #23
  %27 = icmp ugt i64 %17, 1
  br i1 %27, label %16, label %28, !llvm.loop !140

28:                                               ; preds = %16, %8
  %29 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !56
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %34 = sext i32 %6 to i64
  %35 = zext nneg i32 %30 to i64
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ %35, %32 ], [ %38, %36 ]
  %38 = add nsw i64 %37, -1
  %39 = load ptr, ptr %33, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.eqn_d, ptr %39, i64 %38, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = load i32, ptr %1, align 4, !tbaa !44
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  %45 = getelementptr inbounds i32, ptr %41, i64 %34
  tail call fastcc void @swap(ptr noundef %44, ptr noundef %45) #23
  %46 = icmp ugt i64 %37, 1
  br i1 %46, label %36, label %47, !llvm.loop !141

47:                                               ; preds = %36, %28
  %48 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !62
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %53 = sext i32 %6 to i64
  %54 = zext nneg i32 %49 to i64
  br label %55

55:                                               ; preds = %51, %55
  %56 = phi i64 [ %54, %51 ], [ %57, %55 ]
  %57 = add nsw i64 %56, -1
  %58 = load ptr, ptr %52, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct.eqn_d, ptr %58, i64 %57, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = load i32, ptr %1, align 4, !tbaa !44
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %60, i64 %62
  %64 = getelementptr inbounds i32, ptr %60, i64 %53
  tail call fastcc void @swap(ptr noundef %63, ptr noundef %64) #23
  %65 = icmp ugt i64 %56, 1
  br i1 %65, label %55, label %66, !llvm.loop !142

66:                                               ; preds = %55, %47
  %67 = icmp eq ptr %2, null
  %68 = load i32, ptr %1, align 4, !tbaa !44
  br i1 %67, label %69, label %71

69:                                               ; preds = %66
  %70 = sext i32 %6 to i64
  br label %77

71:                                               ; preds = %66
  %72 = sext i32 %68 to i64
  %73 = getelementptr inbounds i8, ptr %2, i64 %72
  %74 = sext i32 %6 to i64
  %75 = getelementptr inbounds i8, ptr %2, i64 %74
  tail call fastcc void @bswap(ptr noundef nonnull %73, ptr noundef nonnull %75) #23
  %76 = load i32, ptr %1, align 4, !tbaa !44
  br label %77

77:                                               ; preds = %69, %71
  %78 = phi i64 [ %70, %69 ], [ %74, %71 ]
  %79 = phi i32 [ %68, %69 ], [ %76, %71 ]
  %80 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds i32, ptr %81, i64 %82
  %84 = getelementptr inbounds i32, ptr %81, i64 %78
  tail call fastcc void @swap(ptr noundef %83, ptr noundef %84) #23
  %85 = load i32, ptr %1, align 4, !tbaa !44
  %86 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !66
  %88 = load ptr, ptr %80, align 8, !tbaa !52
  %89 = sext i32 %85 to i64
  %90 = getelementptr inbounds i32, ptr %88, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !44
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %87, i64 %92
  store i32 %85, ptr %93, align 4, !tbaa !44
  %94 = getelementptr inbounds i32, ptr %88, i64 %78
  %95 = load i32, ptr %94, align 4, !tbaa !44
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %87, i64 %96
  store i32 %6, ptr %97, align 4, !tbaa !44
  %98 = load i32, ptr %1, align 4, !tbaa !44
  %99 = add nsw i32 %98, -1
  store i32 %99, ptr %1, align 4, !tbaa !44
  %100 = load i32, ptr %5, align 4, !tbaa !69
  br label %101

101:                                              ; preds = %77, %3
  %102 = phi i32 [ %100, %77 ], [ %6, %3 ]
  %103 = add nsw i32 %102, -1
  store i32 %103, ptr %5, align 4, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_var_geq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !35 !PGOFuncName !143 {
  %2 = load i32, ptr %0, align 8, !tbaa !46
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 64, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = sub nsw i32 0, %7
  %9 = icmp slt i32 %2, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = icmp sle i32 %2, %7
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %10, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %10 ]
  ret i8 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !35 !PGOFuncName !144 {
  %3 = load i32, ptr %0, align 4, !tbaa !44
  %4 = load i32, ptr %1, align 4, !tbaa !44
  store i32 %4, ptr %0, align 4, !tbaa !44
  store i32 %3, ptr %1, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bswap(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !35 !PGOFuncName !145 {
  %3 = load i8, ptr %0, align 1, !tbaa !87
  %4 = load i8, ptr %1, align 1, !tbaa !87
  store i8 %4, ptr %0, align 1, !tbaa !87
  store i8 %3, ptr %1, align 1, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @normalize_omega_problem(ptr noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !146 {
  %2 = load i32, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %671

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %8 = icmp slt i32 %2, 1
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %11 = add i32 %2, 1
  %12 = zext i32 %11 to i64
  br label %13

13:                                               ; preds = %6, %662
  %14 = phi i32 [ 0, %6 ], [ %665, %662 ]
  %15 = phi i32 [ 0, %6 ], [ %663, %662 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !60
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17
  %23 = tail call fastcc zeroext i8 @single_var_geq(ptr noundef %22) #23
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 1, i32 %15
  br label %347

26:                                               ; preds = %13
  %27 = load ptr, ptr @packing, align 8
  br i1 %8, label %44, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  br label %31

31:                                               ; preds = %28, %40
  %32 = phi i64 [ 1, %28 ], [ %42, %40 ]
  %33 = phi ptr [ %27, %28 ], [ %41, %40 ]
  %34 = getelementptr inbounds i32, ptr %30, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds i32, ptr %33, i64 1
  %39 = trunc i64 %32 to i32
  store i32 %39, ptr %33, align 4, !tbaa !44
  br label %40

40:                                               ; preds = %31, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %31 ]
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, %12
  br i1 %43, label %44, label %31, !llvm.loop !147

44:                                               ; preds = %40, %26
  %45 = phi ptr [ %27, %26 ], [ %41, %40 ]
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %27 to i64
  %48 = sub i64 %46, %47
  %49 = lshr exact i64 %48, 2
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, -1
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = load i32, ptr %55, align 4, !tbaa !44
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %345

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %61 = icmp eq ptr %60, null
  br i1 %61, label %673, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %673, label %66

66:                                               ; preds = %62
  tail call fastcc void @omega_print_geq(ptr noundef nonnull %60, ptr noundef nonnull %0, ptr noundef nonnull %59) #23
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %68 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 29, i64 1, ptr %67)
  br label %673

69:                                               ; preds = %44
  %70 = icmp eq i32 %51, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %69
  %72 = load i32, ptr %27, align 4, !tbaa !44
  %73 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !42
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !44
  %78 = icmp sgt i32 %77, 0
  %79 = sub nsw i32 0, %72
  %80 = select i1 %78, i32 1, i32 -1
  %81 = select i1 %78, i32 %72, i32 %79
  %82 = tail call i32 @llvm.abs.i32(i32 %77, i1 true)
  store i32 %80, ptr %76, align 4
  %83 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17
  store i32 %81, ptr %83, align 8
  %84 = icmp ugt i32 %82, 1
  br i1 %84, label %85, label %341

85:                                               ; preds = %71
  %86 = load i32, ptr %74, align 4, !tbaa !44
  %87 = tail call fastcc i32 @int_div(i32 noundef %86, i32 noundef %82) #23
  store i32 %87, ptr %74, align 4, !tbaa !44
  br label %341

88:                                               ; preds = %69
  %89 = add i32 %50, -2
  %90 = sext i32 %51 to i64
  %91 = getelementptr inbounds i32, ptr %27, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !44
  %93 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !42
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds i32, ptr %94, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !44
  %98 = add nsw i32 %92, 3
  %99 = mul nsw i32 %97, %98
  %100 = tail call i32 @llvm.abs.i32(i32 %97, i1 true)
  %101 = icmp sgt i32 %89, -1
  br i1 %101, label %102, label %141

102:                                              ; preds = %88, %118
  %103 = phi i32 [ %119, %118 ], [ %100, %88 ]
  %104 = phi i32 [ %115, %118 ], [ %99, %88 ]
  %105 = phi i32 [ %120, %118 ], [ %89, %88 ]
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %27, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !44
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %94, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !44
  %112 = mul nsw i32 %104, 31
  %113 = add nsw i32 %108, 3
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %114, %111
  %116 = tail call i32 @llvm.abs.i32(i32 %111, i1 true)
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %122, label %118

118:                                              ; preds = %102
  %119 = tail call fastcc i32 @gcd(i32 noundef %116, i32 noundef %103) #23
  %120 = add nsw i32 %105, -1
  %121 = icmp sgt i32 %105, 0
  br i1 %121, label %102, label %141, !llvm.loop !148

122:                                              ; preds = %102
  %123 = icmp sgt i32 %105, 0
  br i1 %123, label %124, label %172

124:                                              ; preds = %122
  %125 = add nsw i32 %105, -1
  %126 = zext nneg i32 %125 to i64
  br label %127

127:                                              ; preds = %124, %127
  %128 = phi i64 [ %126, %124 ], [ %139, %127 ]
  %129 = phi i32 [ %115, %124 ], [ %138, %127 ]
  %130 = getelementptr inbounds i32, ptr %27, i64 %128
  %131 = load i32, ptr %130, align 4, !tbaa !44
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %94, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !44
  %135 = mul nsw i32 %129, 31
  %136 = add nsw i32 %131, 3
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %137, %134
  %139 = add nsw i64 %128, -1
  %140 = icmp eq i64 %128, 0
  br i1 %140, label %172, label %127, !llvm.loop !149

141:                                              ; preds = %118, %88
  %142 = phi i32 [ %99, %88 ], [ %115, %118 ]
  %143 = phi i32 [ %100, %88 ], [ %119, %118 ]
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %172

145:                                              ; preds = %141
  %146 = load i32, ptr %94, align 4, !tbaa !44
  %147 = tail call fastcc i32 @int_div(i32 noundef %146, i32 noundef %143) #23
  store i32 %147, ptr %94, align 4, !tbaa !44
  %148 = load i32, ptr %91, align 4, !tbaa !44
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %94, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !44
  %152 = sdiv i32 %151, %143
  store i32 %152, ptr %150, align 4, !tbaa !44
  %153 = add nsw i32 %148, 3
  %154 = mul nsw i32 %152, %153
  br i1 %101, label %155, label %172

155:                                              ; preds = %145
  %156 = zext nneg i32 %89 to i64
  br label %157

157:                                              ; preds = %155, %157
  %158 = phi i64 [ %156, %155 ], [ %170, %157 ]
  %159 = phi i32 [ %154, %155 ], [ %169, %157 ]
  %160 = getelementptr inbounds i32, ptr %27, i64 %158
  %161 = load i32, ptr %160, align 4, !tbaa !44
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %94, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !44
  %165 = sdiv i32 %164, %143
  store i32 %165, ptr %163, align 4, !tbaa !44
  %166 = mul nsw i32 %159, 31
  %167 = add nsw i32 %161, 3
  %168 = mul nsw i32 %166, %167
  %169 = add nsw i32 %168, %165
  %170 = add nsw i64 %158, -1
  %171 = icmp eq i64 %158, 0
  br i1 %171, label %172, label %157, !llvm.loop !150

172:                                              ; preds = %157, %127, %122, %145, %141
  %173 = phi i32 [ %142, %141 ], [ %154, %145 ], [ %115, %122 ], [ %138, %127 ], [ %169, %157 ]
  %174 = tail call i32 @llvm.abs.i32(i32 %173, i1 true)
  %175 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %176 = icmp eq ptr %175, null
  br i1 %176, label %189, label %177

177:                                              ; preds = %172
  %178 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %179 = and i32 %178, 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %177
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %175, ptr noundef nonnull @.str.48, i32 noundef %173) #23
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %184 = load ptr, ptr %7, align 8, !tbaa !60
  %185 = getelementptr inbounds %struct.eqn_d, ptr %184, i64 %17
  tail call fastcc void @omega_print_geq(ptr noundef %183, ptr noundef nonnull %0, ptr noundef %185) #23
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %187 = tail call i32 @fputc(i32 10, ptr %186)
  %188 = load ptr, ptr @packing, align 8
  br label %189

189:                                              ; preds = %181, %177, %172
  %190 = phi ptr [ %188, %181 ], [ %27, %177 ], [ %27, %172 ]
  %191 = load ptr, ptr @compiler_params, align 8
  %192 = getelementptr inbounds %struct.param_info, ptr %191, i64 68, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !83
  %194 = load ptr, ptr @hash_master, align 8, !tbaa !54
  %195 = icmp sgt i32 %173, -1
  %196 = icmp sgt i32 %51, -1
  br label %197

197:                                              ; preds = %339, %189
  %198 = phi i32 [ %174, %189 ], [ %340, %339 ]
  %199 = srem i32 %198, %193
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !45
  %203 = icmp eq i32 %202, %174
  br i1 %203, label %204, label %266

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !42
  %207 = load i32, ptr %206, align 4, !tbaa !44
  %208 = icmp eq i32 %207, %51
  br i1 %208, label %209, label %339

209:                                              ; preds = %204
  br i1 %195, label %217, label %210

210:                                              ; preds = %209
  br i1 %196, label %213, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200
  br label %260

213:                                              ; preds = %210
  %214 = load ptr, ptr %7, align 8, !tbaa !60
  %215 = getelementptr inbounds %struct.eqn_d, ptr %214, i64 %17, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !42
  br label %241

217:                                              ; preds = %209
  br i1 %196, label %220, label %218

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200
  br label %255

220:                                              ; preds = %217
  %221 = load ptr, ptr %7, align 8, !tbaa !60
  %222 = getelementptr inbounds %struct.eqn_d, ptr %221, i64 %17, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !42
  br label %227

224:                                              ; preds = %227
  %225 = add nsw i32 %228, -1
  %226 = icmp sgt i32 %228, 0
  br i1 %226, label %227, label %253, !llvm.loop !151

227:                                              ; preds = %220, %224
  %228 = phi i32 [ %51, %220 ], [ %225, %224 ]
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %190, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !44
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %223, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !44
  %235 = getelementptr inbounds i32, ptr %206, i64 %232
  %236 = load i32, ptr %235, align 4, !tbaa !44
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %224, label %339

238:                                              ; preds = %241
  %239 = add nsw i32 %242, -1
  %240 = icmp sgt i32 %242, 0
  br i1 %240, label %241, label %253, !llvm.loop !152

241:                                              ; preds = %213, %238
  %242 = phi i32 [ %51, %213 ], [ %239, %238 ]
  %243 = zext nneg i32 %242 to i64
  %244 = getelementptr inbounds i32, ptr %190, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !44
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %216, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !44
  %249 = getelementptr inbounds i32, ptr %206, i64 %246
  %250 = load i32, ptr %249, align 4, !tbaa !44
  %251 = sub nsw i32 0, %250
  %252 = icmp eq i32 %248, %251
  br i1 %252, label %238, label %339

253:                                              ; preds = %238, %224
  %254 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200
  br i1 %195, label %255, label %260

255:                                              ; preds = %218, %253
  %256 = phi ptr [ %219, %218 ], [ %254, %253 ]
  %257 = load i32, ptr %256, align 8, !tbaa !46
  %258 = load ptr, ptr %7, align 8, !tbaa !60
  %259 = getelementptr inbounds %struct.eqn_d, ptr %258, i64 %17
  store i32 %257, ptr %259, align 8, !tbaa !46
  br label %341

260:                                              ; preds = %211, %253
  %261 = phi ptr [ %212, %211 ], [ %254, %253 ]
  %262 = load i32, ptr %261, align 8, !tbaa !46
  %263 = sub nsw i32 0, %262
  %264 = load ptr, ptr %7, align 8, !tbaa !60
  %265 = getelementptr inbounds %struct.eqn_d, ptr %264, i64 %17
  store i32 %263, ptr %265, align 8, !tbaa !46
  br label %341

266:                                              ; preds = %197
  %267 = icmp slt i32 %202, 0
  br i1 %267, label %268, label %339

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200
  %270 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_init_eqn_zero(ptr noundef nonnull %269, i32 noundef %270) #23
  br i1 %195, label %280, label %271

271:                                              ; preds = %268
  br i1 %196, label %272, label %310

272:                                              ; preds = %271
  %273 = load ptr, ptr @packing, align 8, !tbaa !54
  %274 = load ptr, ptr %7, align 8, !tbaa !60
  %275 = getelementptr inbounds %struct.eqn_d, ptr %274, i64 %17, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !42
  %277 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !42
  %279 = zext nneg i32 %51 to i64
  br label %299

280:                                              ; preds = %268
  br i1 %196, label %281, label %310

281:                                              ; preds = %280
  %282 = load ptr, ptr @packing, align 8, !tbaa !54
  %283 = load ptr, ptr %7, align 8, !tbaa !60
  %284 = getelementptr inbounds %struct.eqn_d, ptr %283, i64 %17, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !42
  %286 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !42
  %288 = zext nneg i32 %51 to i64
  br label %289

289:                                              ; preds = %281, %289
  %290 = phi i64 [ %288, %281 ], [ %297, %289 ]
  %291 = getelementptr inbounds i32, ptr %282, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !44
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, ptr %285, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !44
  %296 = getelementptr inbounds i32, ptr %287, i64 %293
  store i32 %295, ptr %296, align 4, !tbaa !44
  %297 = add nsw i64 %290, -1
  %298 = icmp eq i64 %290, 0
  br i1 %298, label %310, label %289, !llvm.loop !153

299:                                              ; preds = %272, %299
  %300 = phi i64 [ %279, %272 ], [ %308, %299 ]
  %301 = getelementptr inbounds i32, ptr %273, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !44
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, ptr %276, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !44
  %306 = sub nsw i32 0, %305
  %307 = getelementptr inbounds i32, ptr %278, i64 %303
  store i32 %306, ptr %307, align 4, !tbaa !44
  %308 = add nsw i64 %300, -1
  %309 = icmp eq i64 %300, 0
  br i1 %309, label %310, label %299, !llvm.loop !154

310:                                              ; preds = %299, %289, %271, %280
  %311 = getelementptr inbounds %struct.eqn_d, ptr %194, i64 %200, i32 3
  %312 = load ptr, ptr %311, align 8, !tbaa !42
  store i32 %51, ptr %312, align 4, !tbaa !44
  store i32 %174, ptr %201, align 4, !tbaa !45
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %314 = icmp eq ptr %313, null
  br i1 %314, label %322, label %315

315:                                              ; preds = %310
  %316 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %317 = and i32 %316, 8
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %315
  %320 = load i32, ptr @next_key, align 4, !tbaa !44
  %321 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %313, ptr noundef nonnull @.str.49, i32 noundef %320) #23
  br label %322

322:                                              ; preds = %319, %315, %310
  %323 = load i32, ptr @next_key, align 4, !tbaa !44
  %324 = add nsw i32 %323, 1
  store i32 %324, ptr @next_key, align 4, !tbaa !44
  store i32 %323, ptr %269, align 8, !tbaa !46
  %325 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %326 = getelementptr inbounds %struct.param_info, ptr %325, i64 69, i32 1
  %327 = load i32, ptr %326, align 8, !tbaa !83
  %328 = icmp sgt i32 %323, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %322
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 1604, ptr noundef nonnull @.str.26) #24
  br label %330

330:                                              ; preds = %322, %329
  %331 = load i32, ptr %269, align 8, !tbaa !46
  br i1 %195, label %332, label %335

332:                                              ; preds = %330
  %333 = load ptr, ptr %7, align 8, !tbaa !60
  %334 = getelementptr inbounds %struct.eqn_d, ptr %333, i64 %17
  store i32 %331, ptr %334, align 8, !tbaa !46
  br label %341

335:                                              ; preds = %330
  %336 = sub nsw i32 0, %331
  %337 = load ptr, ptr %7, align 8, !tbaa !60
  %338 = getelementptr inbounds %struct.eqn_d, ptr %337, i64 %17
  store i32 %336, ptr %338, align 8, !tbaa !46
  br label %341

339:                                              ; preds = %241, %227, %204, %266
  %340 = add nsw i32 %199, 1
  br label %197

341:                                              ; preds = %85, %71, %260, %255, %335, %332
  %342 = phi i32 [ %15, %85 ], [ %15, %71 ], [ 1, %260 ], [ 1, %255 ], [ 1, %335 ], [ 1, %332 ]
  %343 = load ptr, ptr %7, align 8, !tbaa !60
  %344 = getelementptr inbounds %struct.eqn_d, ptr %343, i64 %17, i32 1
  store i32 0, ptr %344, align 4, !tbaa !45
  br label %347

345:                                              ; preds = %53
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %14, i32 noundef %2) #23
  %346 = add nsw i32 %14, -1
  br label %662

347:                                              ; preds = %341, %21
  %348 = phi ptr [ %16, %21 ], [ %343, %341 ]
  %349 = phi i32 [ %25, %21 ], [ %342, %341 ]
  %350 = getelementptr inbounds %struct.eqn_d, ptr %348, i64 %17
  %351 = load i32, ptr %350, align 8, !tbaa !46
  %352 = icmp sgt i32 %14, 0
  br i1 %352, label %353, label %646

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.eqn_d, ptr %348, i64 %17, i32 3
  %355 = load ptr, ptr %354, align 8, !tbaa !42
  %356 = load i32, ptr %355, align 4, !tbaa !44
  %357 = load ptr, ptr @fast_lookup, align 8, !tbaa !54
  %358 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %359 = getelementptr inbounds %struct.param_info, ptr %358, i64 69, i32 1
  %360 = load i32, ptr %359, align 8, !tbaa !83
  %361 = sub nsw i32 %360, %351
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, ptr %357, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !44
  %365 = icmp slt i32 %364, %14
  br i1 %365, label %366, label %426

366:                                              ; preds = %353
  %367 = sext i32 %364 to i64
  %368 = getelementptr inbounds %struct.eqn_d, ptr %348, i64 %367
  %369 = load i32, ptr %368, align 8, !tbaa !46
  %370 = sub nsw i32 0, %351
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %426

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.eqn_d, ptr %348, i64 %367, i32 2
  %374 = load i32, ptr %373, align 8, !tbaa !47
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %426

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.eqn_d, ptr %348, i64 %367, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !42
  %379 = load i32, ptr %378, align 4, !tbaa !44
  %380 = sub nsw i32 0, %356
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %397

382:                                              ; preds = %376
  %383 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %384 = icmp eq ptr %383, null
  br i1 %384, label %673, label %385

385:                                              ; preds = %382
  %386 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %387 = and i32 %386, 8
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %673, label %389

389:                                              ; preds = %385
  tail call fastcc void @omega_print_geq(ptr noundef nonnull %383, ptr noundef nonnull %0, ptr noundef nonnull %350) #23
  %390 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %391 = tail call i32 @fputc(i32 10, ptr %390)
  %392 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %393 = load ptr, ptr %7, align 8, !tbaa !60
  %394 = getelementptr inbounds %struct.eqn_d, ptr %393, i64 %367
  tail call fastcc void @omega_print_geq(ptr noundef %392, ptr noundef nonnull %0, ptr noundef %394) #23
  %395 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %396 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 29, i64 1, ptr %395)
  br label %673

397:                                              ; preds = %376
  %398 = icmp eq i32 %379, %380
  br i1 %398, label %399, label %426

399:                                              ; preds = %397
  %400 = load i1, ptr @create_color, align 1
  br i1 %400, label %405, label %401

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.eqn_d, ptr %348, i64 %17, i32 2
  %403 = load i32, ptr %402, align 8, !tbaa !47
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %426

405:                                              ; preds = %401, %399
  %406 = load ptr, ptr %9, align 8, !tbaa !57
  %407 = load i32, ptr %10, align 8, !tbaa !56
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.eqn_d, ptr %406, i64 %408
  %410 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %409, ptr noundef nonnull %350, i32 noundef %410) #23
  %411 = load ptr, ptr %7, align 8, !tbaa !60
  %412 = getelementptr inbounds %struct.eqn_d, ptr %411, i64 %17, i32 2
  %413 = load i32, ptr %412, align 8, !tbaa !47
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %405
  %416 = load i32, ptr %10, align 8, !tbaa !56
  tail call fastcc void @adding_equality_constraint(ptr noundef nonnull %0, i32 noundef %416) #23
  br label %417

417:                                              ; preds = %415, %405
  %418 = load i32, ptr %10, align 8, !tbaa !56
  %419 = add nsw i32 %418, 1
  store i32 %419, ptr %10, align 8, !tbaa !56
  %420 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %421 = getelementptr inbounds %struct.param_info, ptr %420, i64 66, i32 1
  %422 = load i32, ptr %421, align 8, !tbaa !83
  %423 = icmp slt i32 %418, %422
  br i1 %423, label %426, label %424

424:                                              ; preds = %417
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 1654, ptr noundef nonnull @.str.26) #24
  %425 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  br label %426

426:                                              ; preds = %424, %417, %397, %401, %372, %366, %353
  %427 = phi ptr [ %425, %424 ], [ %420, %417 ], [ %358, %397 ], [ %358, %401 ], [ %358, %372 ], [ %358, %366 ], [ %358, %353 ]
  %428 = load ptr, ptr @fast_lookup_red, align 8, !tbaa !54
  %429 = getelementptr inbounds %struct.param_info, ptr %427, i64 69, i32 1
  %430 = load i32, ptr %429, align 8, !tbaa !83
  %431 = sub nsw i32 %430, %351
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, ptr %428, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !44
  %435 = icmp slt i32 %434, %14
  br i1 %435, label %436, label %491

436:                                              ; preds = %426
  %437 = load ptr, ptr %7, align 8, !tbaa !60
  %438 = sext i32 %434 to i64
  %439 = getelementptr inbounds %struct.eqn_d, ptr %437, i64 %438
  %440 = load i32, ptr %439, align 8, !tbaa !46
  %441 = sub nsw i32 0, %351
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %491

443:                                              ; preds = %436
  %444 = getelementptr inbounds %struct.eqn_d, ptr %437, i64 %438, i32 2
  %445 = load i32, ptr %444, align 8, !tbaa !47
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %491

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.eqn_d, ptr %437, i64 %438, i32 3
  %449 = load ptr, ptr %448, align 8, !tbaa !42
  %450 = load i32, ptr %449, align 4, !tbaa !44
  %451 = sub nsw i32 0, %356
  %452 = icmp slt i32 %450, %451
  br i1 %452, label %453, label %469

453:                                              ; preds = %447
  %454 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %455 = icmp eq ptr %454, null
  br i1 %455, label %673, label %456

456:                                              ; preds = %453
  %457 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %458 = and i32 %457, 8
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %673, label %460

460:                                              ; preds = %456
  %461 = getelementptr inbounds %struct.eqn_d, ptr %437, i64 %17
  tail call fastcc void @omega_print_geq(ptr noundef nonnull %454, ptr noundef nonnull %0, ptr noundef nonnull %461) #23
  %462 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %463 = tail call i32 @fputc(i32 10, ptr %462)
  %464 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %465 = load ptr, ptr %7, align 8, !tbaa !60
  %466 = getelementptr inbounds %struct.eqn_d, ptr %465, i64 %438
  tail call fastcc void @omega_print_geq(ptr noundef %464, ptr noundef nonnull %0, ptr noundef %466) #23
  %467 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %468 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 29, i64 1, ptr %467)
  br label %673

469:                                              ; preds = %447
  %470 = icmp eq i32 %450, %451
  %471 = load i1, ptr @create_color, align 1
  %472 = select i1 %470, i1 %471, i1 false
  br i1 %472, label %473, label %491

473:                                              ; preds = %469
  %474 = load ptr, ptr %9, align 8, !tbaa !57
  %475 = load i32, ptr %10, align 8, !tbaa !56
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.eqn_d, ptr %474, i64 %476
  %478 = getelementptr inbounds %struct.eqn_d, ptr %437, i64 %17
  %479 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %477, ptr noundef nonnull %478, i32 noundef %479) #23
  %480 = load ptr, ptr %9, align 8, !tbaa !57
  %481 = load i32, ptr %10, align 8, !tbaa !56
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.eqn_d, ptr %480, i64 %482, i32 2
  store i32 1, ptr %483, align 8, !tbaa !47
  %484 = add nsw i32 %481, 1
  store i32 %484, ptr %10, align 8, !tbaa !56
  %485 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %486 = getelementptr inbounds %struct.param_info, ptr %485, i64 66, i32 1
  %487 = load i32, ptr %486, align 8, !tbaa !83
  %488 = icmp slt i32 %481, %487
  br i1 %488, label %491, label %489

489:                                              ; preds = %473
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 1682, ptr noundef nonnull @.str.26) #24
  %490 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  br label %491

491:                                              ; preds = %489, %473, %469, %443, %436, %426
  %492 = phi ptr [ %490, %489 ], [ %485, %473 ], [ %427, %469 ], [ %427, %443 ], [ %427, %436 ], [ %427, %426 ]
  %493 = load ptr, ptr @fast_lookup, align 8, !tbaa !54
  %494 = getelementptr inbounds %struct.param_info, ptr %492, i64 69, i32 1
  %495 = load i32, ptr %494, align 8, !tbaa !83
  %496 = add nsw i32 %495, %351
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, ptr %493, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !44
  %500 = icmp slt i32 %499, %14
  %501 = load ptr, ptr %7, align 8, !tbaa !60
  br i1 %500, label %502, label %570

502:                                              ; preds = %491
  %503 = sext i32 %499 to i64
  %504 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %503
  %505 = load i32, ptr %504, align 8, !tbaa !46
  %506 = icmp eq i32 %505, %351
  br i1 %506, label %507, label %570

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %503, i32 2
  %509 = load i32, ptr %508, align 8, !tbaa !47
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %570

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %503, i32 3
  %513 = load ptr, ptr %512, align 8, !tbaa !42
  %514 = load i32, ptr %513, align 4, !tbaa !44
  %515 = icmp sgt i32 %514, %356
  br i1 %515, label %516, label %547

516:                                              ; preds = %511
  %517 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %17, i32 2
  %518 = load i32, ptr %517, align 8, !tbaa !47
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %570

520:                                              ; preds = %516
  %521 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %522 = icmp eq ptr %521, null
  br i1 %522, label %544, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %525 = and i32 %524, 8
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %544, label %527

527:                                              ; preds = %523
  %528 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 29, i64 1, ptr nonnull %521)
  %529 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %530 = load ptr, ptr %7, align 8, !tbaa !60
  %531 = getelementptr inbounds %struct.eqn_d, ptr %530, i64 %503
  tail call fastcc void @omega_print_geq(ptr noundef %529, ptr noundef nonnull %0, ptr noundef %531) #23
  %532 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %533 = tail call i32 @fputc(i32 10, ptr %532)
  %534 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %535 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 28, i64 1, ptr %534)
  %536 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %537 = load ptr, ptr %7, align 8, !tbaa !60
  %538 = getelementptr inbounds %struct.eqn_d, ptr %537, i64 %17
  tail call fastcc void @omega_print_geq(ptr noundef %536, ptr noundef nonnull %0, ptr noundef nonnull %538) #23
  %539 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %540 = tail call i32 @fputc(i32 10, ptr %539)
  %541 = load ptr, ptr %7, align 8, !tbaa !60
  %542 = getelementptr inbounds %struct.eqn_d, ptr %541, i64 %503, i32 3
  %543 = load ptr, ptr %542, align 8, !tbaa !42
  br label %544

544:                                              ; preds = %527, %523, %520
  %545 = phi ptr [ %543, %527 ], [ %513, %523 ], [ %513, %520 ]
  store i32 %356, ptr %545, align 4, !tbaa !44
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %14, i32 noundef %2) #23
  %546 = add nsw i32 %14, -1
  br label %662

547:                                              ; preds = %511
  %548 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %549 = icmp eq ptr %548, null
  br i1 %549, label %568, label %550

550:                                              ; preds = %547
  %551 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %552 = and i32 %551, 8
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %568, label %554

554:                                              ; preds = %550
  %555 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 29, i64 1, ptr nonnull %548)
  %556 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %557 = load ptr, ptr %7, align 8, !tbaa !60
  %558 = getelementptr inbounds %struct.eqn_d, ptr %557, i64 %17
  tail call fastcc void @omega_print_geq(ptr noundef %556, ptr noundef nonnull %0, ptr noundef nonnull %558) #23
  %559 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %560 = tail call i32 @fputc(i32 10, ptr %559)
  %561 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %562 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 28, i64 1, ptr %561)
  %563 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %564 = load ptr, ptr %7, align 8, !tbaa !60
  %565 = getelementptr inbounds %struct.eqn_d, ptr %564, i64 %503
  tail call fastcc void @omega_print_geq(ptr noundef %563, ptr noundef nonnull %0, ptr noundef %565) #23
  %566 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %567 = tail call i32 @fputc(i32 10, ptr %566)
  br label %568

568:                                              ; preds = %554, %550, %547
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %14, i32 noundef %2) #23
  %569 = add nsw i32 %14, -1
  br label %662

570:                                              ; preds = %516, %507, %502, %491
  %571 = load ptr, ptr @fast_lookup_red, align 8, !tbaa !54
  %572 = getelementptr inbounds i32, ptr %571, i64 %497
  %573 = load i32, ptr %572, align 4, !tbaa !44
  %574 = icmp slt i32 %573, %14
  br i1 %574, label %575, label %646

575:                                              ; preds = %570
  %576 = sext i32 %573 to i64
  %577 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %576
  %578 = load i32, ptr %577, align 8, !tbaa !46
  %579 = icmp eq i32 %578, %351
  br i1 %579, label %580, label %646

580:                                              ; preds = %575
  %581 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %576, i32 2
  %582 = load i32, ptr %581, align 8, !tbaa !47
  %583 = icmp eq i32 %582, 1
  br i1 %583, label %584, label %646

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %576, i32 3
  %586 = load ptr, ptr %585, align 8, !tbaa !42
  %587 = load i32, ptr %586, align 4, !tbaa !44
  %588 = icmp slt i32 %587, %356
  br i1 %588, label %619, label %589

589:                                              ; preds = %584
  %590 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %591 = icmp eq ptr %590, null
  br i1 %591, label %613, label %592

592:                                              ; preds = %589
  %593 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %594 = and i32 %593, 8
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %613, label %596

596:                                              ; preds = %592
  %597 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 29, i64 1, ptr nonnull %590)
  %598 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %599 = load ptr, ptr %7, align 8, !tbaa !60
  %600 = getelementptr inbounds %struct.eqn_d, ptr %599, i64 %576
  tail call fastcc void @omega_print_geq(ptr noundef %598, ptr noundef nonnull %0, ptr noundef %600) #23
  %601 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %602 = tail call i32 @fputc(i32 10, ptr %601)
  %603 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %604 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 28, i64 1, ptr %603)
  %605 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %606 = load ptr, ptr %7, align 8, !tbaa !60
  %607 = getelementptr inbounds %struct.eqn_d, ptr %606, i64 %17
  tail call fastcc void @omega_print_geq(ptr noundef %605, ptr noundef nonnull %0, ptr noundef nonnull %607) #23
  %608 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %609 = tail call i32 @fputc(i32 10, ptr %608)
  %610 = load ptr, ptr %7, align 8, !tbaa !60
  %611 = getelementptr inbounds %struct.eqn_d, ptr %610, i64 %576, i32 3
  %612 = load ptr, ptr %611, align 8, !tbaa !42
  br label %613

613:                                              ; preds = %596, %592, %589
  %614 = phi ptr [ %612, %596 ], [ %586, %592 ], [ %586, %589 ]
  %615 = phi ptr [ %610, %596 ], [ %501, %592 ], [ %501, %589 ]
  store i32 %356, ptr %614, align 4, !tbaa !44
  %616 = getelementptr inbounds %struct.eqn_d, ptr %615, i64 %17, i32 2
  %617 = load i32, ptr %616, align 8, !tbaa !47
  %618 = getelementptr inbounds %struct.eqn_d, ptr %615, i64 %576, i32 2
  store i32 %617, ptr %618, align 8, !tbaa !47
  br label %644

619:                                              ; preds = %584
  %620 = getelementptr inbounds %struct.eqn_d, ptr %501, i64 %17, i32 2
  %621 = load i32, ptr %620, align 8, !tbaa !47
  %622 = icmp eq i32 %621, 1
  %623 = load ptr, ptr @dump_file, align 8
  %624 = icmp ne ptr %623, null
  %625 = select i1 %622, i1 %624, i1 false
  br i1 %625, label %626, label %644

626:                                              ; preds = %619
  %627 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %628 = and i32 %627, 8
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %644, label %630

630:                                              ; preds = %626
  %631 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 29, i64 1, ptr nonnull %623)
  %632 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %633 = load ptr, ptr %7, align 8, !tbaa !60
  %634 = getelementptr inbounds %struct.eqn_d, ptr %633, i64 %17
  tail call fastcc void @omega_print_geq(ptr noundef %632, ptr noundef nonnull %0, ptr noundef nonnull %634) #23
  %635 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %636 = tail call i32 @fputc(i32 10, ptr %635)
  %637 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %638 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 28, i64 1, ptr %637)
  %639 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %640 = load ptr, ptr %7, align 8, !tbaa !60
  %641 = getelementptr inbounds %struct.eqn_d, ptr %640, i64 %576
  tail call fastcc void @omega_print_geq(ptr noundef %639, ptr noundef nonnull %0, ptr noundef %641) #23
  %642 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %643 = tail call i32 @fputc(i32 10, ptr %642)
  br label %644

644:                                              ; preds = %619, %630, %626, %613
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %14, i32 noundef %2) #23
  %645 = add nsw i32 %14, -1
  br label %662

646:                                              ; preds = %580, %575, %570, %347
  %647 = phi ptr [ %501, %580 ], [ %501, %575 ], [ %501, %570 ], [ %348, %347 ]
  %648 = getelementptr inbounds %struct.eqn_d, ptr %647, i64 %17, i32 2
  %649 = load i32, ptr %648, align 8, !tbaa !47
  %650 = icmp eq i32 %649, 1
  %651 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %652 = getelementptr inbounds %struct.param_info, ptr %651, i64 69, i32 1
  %653 = load i32, ptr %652, align 8, !tbaa !83
  %654 = add nsw i32 %653, %351
  %655 = sext i32 %654 to i64
  br i1 %650, label %656, label %659

656:                                              ; preds = %646
  %657 = load ptr, ptr @fast_lookup_red, align 8, !tbaa !54
  %658 = getelementptr inbounds i32, ptr %657, i64 %655
  store i32 %14, ptr %658, align 4, !tbaa !44
  br label %662

659:                                              ; preds = %646
  %660 = load ptr, ptr @fast_lookup, align 8, !tbaa !54
  %661 = getelementptr inbounds i32, ptr %660, i64 %655
  store i32 %14, ptr %661, align 4, !tbaa !44
  br label %662

662:                                              ; preds = %656, %659, %568, %644, %544, %345
  %663 = phi i32 [ %15, %345 ], [ %349, %544 ], [ %349, %644 ], [ %349, %568 ], [ %349, %659 ], [ %349, %656 ]
  %664 = phi i32 [ %346, %345 ], [ %546, %544 ], [ %645, %644 ], [ %569, %568 ], [ %14, %659 ], [ %14, %656 ]
  %665 = add nsw i32 %664, 1
  %666 = load i32, ptr %3, align 4, !tbaa !59
  %667 = icmp slt i32 %665, %666
  br i1 %667, label %13, label %668, !llvm.loop !155

668:                                              ; preds = %662
  %669 = icmp eq i32 %663, 0
  %670 = select i1 %669, i32 1, i32 2
  br label %671

671:                                              ; preds = %668, %1
  %672 = phi i32 [ 1, %1 ], [ %670, %668 ]
  store i1 false, ptr @create_color, align 1
  br label %673

673:                                              ; preds = %389, %385, %382, %460, %456, %453, %58, %62, %66, %671
  %674 = phi i32 [ %672, %671 ], [ 0, %66 ], [ 0, %62 ], [ 0, %58 ], [ 0, %453 ], [ 0, %456 ], [ 0, %460 ], [ 0, %382 ], [ 0, %385 ], [ 0, %389 ]
  ret i32 %674
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @gcd(i32 noundef %0, i32 noundef %1) unnamed_addr #17 !prof !35 !PGOFuncName !156 {
  switch i32 %0, label %3 [
    i32 1, label %9
    i32 0, label %8
  ]

3:                                                ; preds = %2, %3
  %4 = phi i32 [ %5, %3 ], [ %1, %2 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %2 ]
  %6 = srem i32 %4, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %3, !llvm.loop !157

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %3, %2, %8
  %10 = phi i32 [ %0, %2 ], [ %1, %8 ], [ %5, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @int_div(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !158 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = sdiv i32 %0, %1
  br label %11

6:                                                ; preds = %2
  %7 = xor i32 %0, -1
  %8 = add i32 %7, %1
  %9 = sdiv i32 %8, %1
  %10 = sub nsw i32 0, %9
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi i32 [ %5, %4 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omega_eliminate_red(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #7 !prof !35 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 65, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #24
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 18, i64 1, ptr nonnull %8)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %16, ptr noundef %0) #23
  br label %17

17:                                               ; preds = %14, %10, %2
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @omega_simplify_problem(ptr noundef nonnull %0) #23
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !59
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %293

27:                                               ; preds = %23
  %28 = zext nneg i32 %25 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %28, i1 false), !tbaa !87
  %29 = load i32, ptr %24, align 4, !tbaa !59
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %293

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %33 = add nsw i32 %29, -2
  %34 = zext nneg i32 %29 to i64
  br label %35

35:                                               ; preds = %31, %273
  %36 = phi i64 [ %34, %31 ], [ %39, %273 ]
  %37 = phi i32 [ %33, %31 ], [ %276, %273 ]
  %38 = phi i32 [ 0, %31 ], [ %274, %273 ]
  %39 = add nsw i64 %36, -1
  %40 = load ptr, ptr %32, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.eqn_d, ptr %40, i64 %39, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !47
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %273

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, ptr %7, i64 %39
  %46 = load i8, ptr %45, align 1, !tbaa !87
  %47 = icmp eq i8 %46, 0
  %48 = icmp ugt i64 %36, 1
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %273

50:                                               ; preds = %44
  %51 = zext i32 %37 to i64
  br label %52

52:                                               ; preds = %50, %268
  %53 = phi i64 [ %270, %268 ], [ %51, %50 ]
  %54 = phi i32 [ %269, %268 ], [ %38, %50 ]
  %55 = load ptr, ptr %32, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.eqn_d, ptr %55, i64 %53, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !47
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %268

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, ptr %7, i64 %53
  %61 = load i8, ptr %60, align 1, !tbaa !87
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %268

63:                                               ; preds = %59
  %64 = load i32, ptr %0, align 8, !tbaa !36
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %268

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.eqn_d, ptr %55, i64 %39, i32 3
  %68 = getelementptr inbounds %struct.eqn_d, ptr %55, i64 %53, i32 3
  %69 = zext nneg i32 %64 to i64
  br label %70

70:                                               ; preds = %66, %91
  %71 = phi i64 [ %69, %66 ], [ %92, %91 ]
  br label %72

72:                                               ; preds = %70, %76
  %73 = phi i64 [ %71, %70 ], [ %77, %76 ]
  %74 = trunc i64 %73 to i32
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = add nsw i64 %73, -1
  %78 = load ptr, ptr %67, align 8, !tbaa !42
  %79 = getelementptr inbounds i32, ptr %78, i64 %71
  %80 = load i32, ptr %79, align 4, !tbaa !44
  %81 = load ptr, ptr %68, align 8, !tbaa !42
  %82 = getelementptr inbounds i32, ptr %81, i64 %77
  %83 = load i32, ptr %82, align 4, !tbaa !44
  %84 = mul nsw i32 %83, %80
  %85 = getelementptr inbounds i32, ptr %81, i64 %71
  %86 = load i32, ptr %85, align 4, !tbaa !44
  %87 = getelementptr inbounds i32, ptr %78, i64 %77
  %88 = load i32, ptr %87, align 4, !tbaa !44
  %89 = mul nsw i32 %88, %86
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %72, label %94, !llvm.loop !159

91:                                               ; preds = %72
  %92 = add nsw i64 %71, -1
  %93 = icmp sgt i64 %71, 2
  br i1 %93, label %70, label %268, !llvm.loop !160

94:                                               ; preds = %76
  %95 = trunc i64 %71 to i32
  %96 = trunc i64 %77 to i32
  %97 = sub nsw i32 %84, %89
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %99 = icmp eq ptr %98, null
  br i1 %99, label %120, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %95) #23
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %98, ptr noundef nonnull @.str.56, ptr noundef nonnull %105) #23
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %108 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %96) #23
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.57, ptr noundef nonnull %108, i32 noundef %97) #23
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %111 = load ptr, ptr %32, align 8, !tbaa !60
  %112 = getelementptr inbounds %struct.eqn_d, ptr %111, i64 %39
  tail call fastcc void @omega_print_geq(ptr noundef %110, ptr noundef nonnull %0, ptr noundef %112) #23
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %114 = tail call i32 @fputc(i32 10, ptr %113)
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %116 = load ptr, ptr %32, align 8, !tbaa !60
  %117 = getelementptr inbounds %struct.eqn_d, ptr %116, i64 %53
  tail call fastcc void @omega_print_geq(ptr noundef %115, ptr noundef nonnull %0, ptr noundef %117) #23
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %119 = tail call i32 @fputc(i32 10, ptr %118)
  br label %120

120:                                              ; preds = %104, %100, %94
  %121 = load i32, ptr %24, align 4, !tbaa !59
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %268

123:                                              ; preds = %120
  %124 = icmp sgt i32 %97, 0
  %125 = icmp slt i32 %97, 0
  %126 = zext nneg i32 %121 to i64
  br label %127

127:                                              ; preds = %123, %265
  %128 = phi i64 [ %126, %123 ], [ %130, %265 ]
  %129 = phi i32 [ %54, %123 ], [ %266, %265 ]
  %130 = add nsw i64 %128, -1
  %131 = load ptr, ptr %32, align 8, !tbaa !60
  %132 = getelementptr inbounds %struct.eqn_d, ptr %131, i64 %130, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !47
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %265

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.eqn_d, ptr %131, i64 %53, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !42
  %138 = getelementptr inbounds i32, ptr %137, i64 %77
  %139 = load i32, ptr %138, align 4, !tbaa !44
  %140 = getelementptr inbounds %struct.eqn_d, ptr %131, i64 %130, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !42
  %142 = getelementptr inbounds i32, ptr %141, i64 %71
  %143 = load i32, ptr %142, align 4, !tbaa !44
  %144 = mul nsw i32 %143, %139
  %145 = getelementptr inbounds i32, ptr %137, i64 %71
  %146 = load i32, ptr %145, align 4, !tbaa !44
  %147 = getelementptr inbounds i32, ptr %141, i64 %77
  %148 = load i32, ptr %147, align 4, !tbaa !44
  %149 = mul nsw i32 %148, %146
  %150 = sub nsw i32 %144, %149
  %151 = getelementptr inbounds %struct.eqn_d, ptr %131, i64 %39, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !42
  %153 = getelementptr inbounds i32, ptr %152, i64 %77
  %154 = load i32, ptr %153, align 4, !tbaa !44
  %155 = mul nsw i32 %154, %143
  %156 = getelementptr inbounds i32, ptr %152, i64 %71
  %157 = load i32, ptr %156, align 4, !tbaa !44
  %158 = mul nsw i32 %157, %148
  %159 = sub nsw i32 %158, %155
  %160 = icmp sgt i32 %150, 0
  %161 = select i1 %124, i1 %160, i1 false
  %162 = icmp sgt i32 %159, 0
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %169, label %164

164:                                              ; preds = %135
  %165 = icmp slt i32 %150, 0
  %166 = select i1 %125, i1 %165, i1 false
  %167 = icmp slt i32 %159, 0
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %169, label %265

169:                                              ; preds = %164, %135
  %170 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %171 = icmp eq ptr %170, null
  br i1 %171, label %183, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %174 = and i32 %173, 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %170, ptr noundef nonnull @.str.58, i32 noundef %150, i32 noundef %159) #23
  %178 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %179 = load ptr, ptr %32, align 8, !tbaa !60
  %180 = getelementptr inbounds %struct.eqn_d, ptr %179, i64 %130
  tail call fastcc void @omega_print_geq(ptr noundef %178, ptr noundef nonnull %0, ptr noundef %180) #23
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %182 = tail call i32 @fputc(i32 10, ptr %181)
  br label %183

183:                                              ; preds = %176, %172, %169
  %184 = load i32, ptr %0, align 8, !tbaa !36
  %185 = icmp sgt i32 %184, -1
  br i1 %185, label %186, label %234

186:                                              ; preds = %183, %219
  %187 = phi i32 [ %220, %219 ], [ %184, %183 ]
  %188 = load ptr, ptr %32, align 8, !tbaa !60
  %189 = getelementptr inbounds %struct.eqn_d, ptr %188, i64 %39, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !42
  %191 = zext nneg i32 %187 to i64
  %192 = getelementptr inbounds i32, ptr %190, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !44
  %194 = mul nsw i32 %193, %150
  %195 = getelementptr inbounds %struct.eqn_d, ptr %188, i64 %53, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !42
  %197 = getelementptr inbounds i32, ptr %196, i64 %191
  %198 = load i32, ptr %197, align 4, !tbaa !44
  %199 = mul nsw i32 %198, %159
  %200 = add nsw i32 %199, %194
  %201 = getelementptr inbounds %struct.eqn_d, ptr %188, i64 %130, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !42
  %203 = getelementptr inbounds i32, ptr %202, i64 %191
  %204 = load i32, ptr %203, align 4, !tbaa !44
  %205 = mul nsw i32 %204, %97
  %206 = icmp eq i32 %200, %205
  br i1 %206, label %207, label %222

207:                                              ; preds = %186
  %208 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %209 = icmp eq ptr %208, null
  br i1 %209, label %219, label %210

210:                                              ; preds = %207
  %211 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %212 = and i32 %211, 8
  %213 = icmp ne i32 %212, 0
  %214 = icmp ne i32 %187, 0
  %215 = and i1 %214, %213
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %187) #23
  %218 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %208, ptr noundef nonnull @.str.59, ptr noundef nonnull %217, i32 noundef %200, i32 noundef %200) #23
  br label %219

219:                                              ; preds = %207, %210, %216
  %220 = add nsw i32 %187, -1
  %221 = icmp sgt i32 %187, 0
  br i1 %221, label %186, label %234, !llvm.loop !161

222:                                              ; preds = %186
  %223 = icmp eq i32 %187, 0
  br i1 %223, label %224, label %265

224:                                              ; preds = %222
  br i1 %124, label %225, label %229

225:                                              ; preds = %224
  %226 = load i32, ptr %202, align 4, !tbaa !44
  %227 = mul nsw i32 %226, %97
  %228 = icmp slt i32 %200, %227
  br i1 %228, label %234, label %265

229:                                              ; preds = %224
  br i1 %125, label %230, label %265

230:                                              ; preds = %229
  %231 = load i32, ptr %202, align 4, !tbaa !44
  %232 = mul nsw i32 %231, %97
  %233 = icmp sgt i32 %200, %232
  br i1 %233, label %234, label %265

234:                                              ; preds = %219, %183, %230, %225
  %235 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %236 = icmp eq ptr %235, null
  br i1 %236, label %262, label %237

237:                                              ; preds = %234
  %238 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %239 = and i32 %238, 8
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %262, label %241

241:                                              ; preds = %237
  %242 = add nsw i32 %129, 1
  %243 = load i32, ptr %24, align 4, !tbaa !59
  %244 = sub nsw i32 %243, %242
  %245 = trunc i64 %130 to i32
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %235, ptr noundef nonnull @.str.60, i32 noundef %245, i32 noundef %242, i32 noundef %244) #23
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %248 = load ptr, ptr %32, align 8, !tbaa !60
  %249 = getelementptr inbounds %struct.eqn_d, ptr %248, i64 %39
  tail call fastcc void @omega_print_geq(ptr noundef %247, ptr noundef nonnull %0, ptr noundef %249) #23
  %250 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %251 = tail call i32 @fputc(i32 10, ptr %250)
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %253 = load ptr, ptr %32, align 8, !tbaa !60
  %254 = getelementptr inbounds %struct.eqn_d, ptr %253, i64 %53
  tail call fastcc void @omega_print_geq(ptr noundef %252, ptr noundef nonnull %0, ptr noundef %254) #23
  %255 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %256 = tail call i32 @fputc(i32 10, ptr %255)
  %257 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %258 = load ptr, ptr %32, align 8, !tbaa !60
  %259 = getelementptr inbounds %struct.eqn_d, ptr %258, i64 %130
  tail call fastcc void @omega_print_geq(ptr noundef %257, ptr noundef nonnull %0, ptr noundef %259) #23
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %261 = tail call i32 @fputc(i32 10, ptr %260)
  br label %262

262:                                              ; preds = %241, %237, %234
  %263 = phi i32 [ %242, %241 ], [ %129, %237 ], [ %129, %234 ]
  %264 = getelementptr inbounds i8, ptr %7, i64 %130
  store i8 1, ptr %264, align 1, !tbaa !87
  br label %265

265:                                              ; preds = %225, %127, %222, %229, %230, %262, %164
  %266 = phi i32 [ %263, %262 ], [ %129, %230 ], [ %129, %229 ], [ %129, %222 ], [ %129, %164 ], [ %129, %127 ], [ %129, %225 ]
  %267 = icmp sgt i64 %128, 1
  br i1 %267, label %127, label %268, !llvm.loop !162

268:                                              ; preds = %91, %265, %63, %120, %52, %59
  %269 = phi i32 [ %54, %59 ], [ %54, %52 ], [ %54, %120 ], [ %54, %63 ], [ %266, %265 ], [ %54, %91 ]
  %270 = add nsw i64 %53, -1
  %271 = trunc i64 %53 to i32
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %52, label %273, !llvm.loop !163

273:                                              ; preds = %268, %35, %44
  %274 = phi i32 [ %38, %44 ], [ %38, %35 ], [ %269, %268 ]
  %275 = icmp sgt i64 %36, 1
  %276 = add nsw i32 %37, -1
  br i1 %275, label %35, label %277, !llvm.loop !164

277:                                              ; preds = %273
  %278 = load i32, ptr %24, align 4, !tbaa !59
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %277
  %281 = zext nneg i32 %278 to i64
  br label %282

282:                                              ; preds = %280, %291
  %283 = phi i64 [ %281, %280 ], [ %284, %291 ]
  %284 = add nsw i64 %283, -1
  %285 = getelementptr inbounds i8, ptr %7, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !87
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %282
  %289 = load i32, ptr %0, align 8, !tbaa !36
  %290 = trunc i64 %284 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %290, i32 noundef %289) #23
  br label %291

291:                                              ; preds = %282, %288
  %292 = icmp ugt i64 %283, 1
  br i1 %292, label %282, label %293, !llvm.loop !165

293:                                              ; preds = %291, %23, %27, %277
  tail call void @free(ptr noundef %7) #23
  %294 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %295 = icmp eq ptr %294, null
  br i1 %295, label %303, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %298 = and i32 %297, 8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %296
  %301 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 35, i64 1, ptr nonnull %294)
  %302 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %302, ptr noundef %0) #23
  br label %303

303:                                              ; preds = %300, %296, %293
  %304 = load i32, ptr %24, align 4, !tbaa !59
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %308 = load ptr, ptr %307, align 8, !tbaa !60
  %309 = zext nneg i32 %304 to i64
  br label %310

310:                                              ; preds = %306, %310
  %311 = phi i64 [ %309, %306 ], [ %313, %310 ]
  %312 = phi i32 [ 0, %306 ], [ %317, %310 ]
  %313 = add nsw i64 %311, -1
  %314 = getelementptr inbounds %struct.eqn_d, ptr %308, i64 %313, i32 2
  %315 = load i32, ptr %314, align 8, !tbaa !47
  %316 = icmp eq i32 %315, 1
  %317 = select i1 %316, i32 1, i32 %312
  %318 = icmp ugt i64 %311, 1
  br i1 %318, label %310, label %319, !llvm.loop !166

319:                                              ; preds = %310
  %320 = icmp eq i32 %317, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %303, %319
  %322 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %323 = icmp eq ptr %322, null
  br i1 %323, label %405, label %324

324:                                              ; preds = %321
  %325 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %326 = and i32 %325, 8
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %405, label %328

328:                                              ; preds = %324
  %329 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 19, i64 1, ptr nonnull %322)
  br label %405

330:                                              ; preds = %319
  %331 = tail call fastcc i32 @verify_omega_pb(ptr noundef nonnull %0) #23
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %405, label %333

333:                                              ; preds = %330
  %334 = load i32, ptr @conservative, align 4, !tbaa !44
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr @conservative, align 4, !tbaa !44
  %336 = tail call ptr @xmalloc(i64 noundef 72) #24
  %337 = load i32, ptr %24, align 4, !tbaa !59
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %402

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %341 = getelementptr inbounds %struct.omega_pb_d, ptr %336, i64 0, i32 1
  %342 = getelementptr inbounds %struct.omega_pb_d, ptr %336, i64 0, i32 7
  %343 = getelementptr inbounds %struct.omega_pb_d, ptr %336, i64 0, i32 4
  %344 = icmp eq i8 %1, 0
  %345 = zext nneg i32 %337 to i64
  br label %346

346:                                              ; preds = %339, %400
  %347 = phi i64 [ %345, %339 ], [ %348, %400 ]
  %348 = add nsw i64 %347, -1
  %349 = load ptr, ptr %340, align 8, !tbaa !60
  %350 = getelementptr inbounds %struct.eqn_d, ptr %349, i64 %348, i32 2
  %351 = load i32, ptr %350, align 8, !tbaa !47
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %400

353:                                              ; preds = %346
  %354 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %355 = icmp eq ptr %354, null
  br i1 %355, label %368, label %356

356:                                              ; preds = %353
  %357 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %358 = and i32 %357, 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %368, label %360

360:                                              ; preds = %356
  %361 = trunc i64 %348 to i32
  %362 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %354, ptr noundef nonnull @.str.37, i32 noundef %361) #23
  %363 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %364 = load ptr, ptr %340, align 8, !tbaa !60
  %365 = getelementptr inbounds %struct.eqn_d, ptr %364, i64 %348
  tail call fastcc void @omega_print_geq(ptr noundef %363, ptr noundef nonnull %0, ptr noundef %365) #23
  %366 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %367 = tail call i32 @fputc(i32 10, ptr %366)
  br label %368

368:                                              ; preds = %360, %356, %353
  tail call fastcc void @omega_copy_problem(ptr noundef %336, ptr noundef nonnull %0) #23
  %369 = trunc i64 %348 to i32
  tail call void @omega_negate_geq(ptr noundef %336, i32 noundef %369) #23
  store i32 0, ptr %341, align 4, !tbaa !69
  store i8 0, ptr %342, align 1, !tbaa !120
  store i32 0, ptr %343, align 8, !tbaa !62
  %370 = tail call i32 @omega_solve_problem(ptr noundef %336, i32 noundef 0) #23
  %371 = icmp eq i32 %370, 0
  %372 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %373 = icmp eq ptr %372, null
  br i1 %371, label %374, label %383

374:                                              ; preds = %368
  br i1 %373, label %381, label %375

375:                                              ; preds = %374
  %376 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %377 = and i32 %376, 8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %381, label %379

379:                                              ; preds = %375
  %380 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 16, i64 1, ptr nonnull %372)
  br label %381

381:                                              ; preds = %379, %375, %374
  %382 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %369, i32 noundef %382) #23
  br label %400

383:                                              ; preds = %368
  br i1 %373, label %390, label %384

384:                                              ; preds = %383
  %385 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %386 = and i32 %385, 8
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %384
  %389 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 20, i64 1, ptr nonnull %372)
  br label %390

390:                                              ; preds = %388, %384, %383
  br i1 %344, label %391, label %400

391:                                              ; preds = %390
  %392 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %393 = icmp eq ptr %392, null
  br i1 %393, label %402, label %394

394:                                              ; preds = %391
  %395 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %396 = and i32 %395, 8
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %394
  %399 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 37, i64 1, ptr nonnull %392)
  br label %402

400:                                              ; preds = %346, %390, %381
  %401 = icmp ugt i64 %347, 1
  br i1 %401, label %346, label %402, !llvm.loop !167

402:                                              ; preds = %400, %333, %391, %394, %398
  %403 = load i32, ptr @conservative, align 4, !tbaa !44
  %404 = add nsw i32 %403, -1
  store i32 %404, ptr @conservative, align 4, !tbaa !44
  tail call void @free(ptr noundef %336) #23
  br label %405

405:                                              ; preds = %330, %328, %324, %321, %402
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @omega_simplify_problem(ptr noundef %0) local_unnamed_addr #7 !prof !35 {
  store i32 0, ptr @omega_found_reduction, align 4, !tbaa !44
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @omega_initialize_variables(ptr noundef nonnull %0) #23
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, ptr @next_key, align 4, !tbaa !44
  %8 = mul nsw i32 %7, 3
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 69, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %6
  %14 = load i32, ptr @hash_version, align 4, !tbaa !44
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @hash_version, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.param_info, ptr %9, i64 64, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !83
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @next_key, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !59
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = zext nneg i32 %20 to i64
  br label %64

26:                                               ; preds = %64, %13
  %27 = getelementptr inbounds %struct.param_info, ptr %9, i64 68, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !83
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load ptr, ptr @hash_master, align 8, !tbaa !54
  %32 = zext nneg i32 %28 to i64
  %33 = add nuw nsw i64 %32, 3
  %34 = and i64 %33, 4294967292
  %35 = add nsw i64 %32, -1
  %36 = insertelement <4 x i64> poison, i64 %35, i64 0
  %37 = shufflevector <4 x i64> %36, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %38

38:                                               ; preds = %60, %30
  %39 = phi i64 [ 0, %30 ], [ %61, %60 ]
  %40 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %30 ], [ %62, %60 ]
  %41 = icmp ule <4 x i64> %40, %37
  %42 = extractelement <4 x i1> %41, i64 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.eqn_d, ptr %31, i64 %39, i32 1
  store i32 -1, ptr %44, align 4, !tbaa !45
  br label %45

45:                                               ; preds = %43, %38
  %46 = extractelement <4 x i1> %41, i64 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = or disjoint i64 %39, 1
  %49 = getelementptr inbounds %struct.eqn_d, ptr %31, i64 %48, i32 1
  store i32 -1, ptr %49, align 4, !tbaa !45
  br label %50

50:                                               ; preds = %47, %45
  %51 = extractelement <4 x i1> %41, i64 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %39, 2
  %54 = getelementptr inbounds %struct.eqn_d, ptr %31, i64 %53, i32 1
  store i32 -1, ptr %54, align 4, !tbaa !45
  br label %55

55:                                               ; preds = %52, %50
  %56 = extractelement <4 x i1> %41, i64 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %39, 3
  %59 = getelementptr inbounds %struct.eqn_d, ptr %31, i64 %58, i32 1
  store i32 -1, ptr %59, align 4, !tbaa !45
  br label %60

60:                                               ; preds = %57, %55
  %61 = add i64 %39, 4
  %62 = add <4 x i64> %40, <i64 4, i64 4, i64 4, i64 4>
  %63 = icmp eq i64 %61, %34
  br i1 %63, label %69, label %38, !llvm.loop !168

64:                                               ; preds = %22, %64
  %65 = phi i64 [ %25, %22 ], [ %66, %64 ]
  %66 = add nsw i64 %65, -1
  %67 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %66, i32 1
  store i32 1, ptr %67, align 4, !tbaa !45
  %68 = icmp ugt i64 %65, 1
  br i1 %68, label %64, label %26, !llvm.loop !171

69:                                               ; preds = %60, %26
  %70 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  store i32 %15, ptr %70, align 4, !tbaa !130
  br label %90

71:                                               ; preds = %6
  %72 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !130
  %74 = load i32, ptr @hash_version, align 4, !tbaa !44
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !59
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %82 = load ptr, ptr %81, align 8, !tbaa !60
  %83 = zext nneg i32 %78 to i64
  br label %84

84:                                               ; preds = %80, %84
  %85 = phi i64 [ %83, %80 ], [ %86, %84 ]
  %86 = add nsw i64 %85, -1
  %87 = getelementptr inbounds %struct.eqn_d, ptr %82, i64 %86, i32 1
  store i32 1, ptr %87, align 4, !tbaa !45
  %88 = icmp ugt i64 %85, 1
  br i1 %88, label %84, label %89, !llvm.loop !172

89:                                               ; preds = %84, %76
  store i32 %74, ptr %72, align 4, !tbaa !130
  br label %90

90:                                               ; preds = %71, %89, %69
  %91 = load i32, ptr %0, align 8, !tbaa !36
  %92 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !56
  %94 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !69
  %96 = mul nsw i32 %95, 3
  %97 = add nsw i32 %96, %93
  %98 = icmp sgt i32 %91, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  tail call fastcc void @omega_free_eliminations(ptr noundef nonnull %0, i32 noundef %95) #23
  br label %100

100:                                              ; preds = %99, %90
  %101 = load i32, ptr @may_be_red, align 4, !tbaa !44
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !62
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32, ptr %94, align 4, !tbaa !69
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 2) #23
  store i32 %111, ptr @omega_found_reduction, align 4, !tbaa !44
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %160, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %114, align 4, !tbaa !59
  store i32 0, ptr %92, align 8, !tbaa !56
  %115 = load ptr, ptr @omega_when_reduced, align 8, !tbaa !54
  tail call void %115(ptr noundef nonnull %0) #24
  br label %160

116:                                              ; preds = %107, %103, %100
  %117 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 3) #23
  %118 = load i32, ptr @omega_found_reduction, align 4, !tbaa !44
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %160, label %120

120:                                              ; preds = %116
  %121 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef 1) #23, !range !113
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %125 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  br label %135

126:                                              ; preds = %135, %120
  %127 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !62
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %132 = load ptr, ptr %131, align 8, !tbaa !66
  %133 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %134 = load ptr, ptr %133, align 8, !tbaa !63
  br label %148

135:                                              ; preds = %123, %135
  %136 = phi i64 [ 1, %123 ], [ %144, %135 ]
  %137 = load ptr, ptr %124, align 8, !tbaa !66
  %138 = load ptr, ptr %125, align 8, !tbaa !52
  %139 = getelementptr inbounds i32, ptr %138, i64 %136
  %140 = load i32, ptr %139, align 4, !tbaa !44
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, ptr %137, i64 %141
  %143 = trunc i64 %136 to i32
  store i32 %143, ptr %142, align 4, !tbaa !44
  %144 = add nuw i64 %136, 1
  %145 = trunc i64 %144 to i32
  %146 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %145) #23, !range !113
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %126, label %135, !llvm.loop !173

148:                                              ; preds = %130, %148
  %149 = phi i64 [ 0, %130 ], [ %156, %148 ]
  %150 = trunc i64 %149 to i32
  %151 = xor i32 %150, -1
  %152 = getelementptr inbounds %struct.eqn_d, ptr %134, i64 %149
  %153 = load i32, ptr %152, align 8, !tbaa !46
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %132, i64 %154
  store i32 %151, ptr %155, align 4, !tbaa !44
  %156 = add nuw nsw i64 %149, 1
  %157 = load i32, ptr %127, align 8, !tbaa !62
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %148, label %160, !llvm.loop !174

160:                                              ; preds = %148, %126, %116, %110, %113
  %161 = load i32, ptr @omega_found_reduction, align 4, !tbaa !44
  ret i32 %161
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @verify_omega_pb(ptr noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !175 {
  %2 = tail call ptr @xmalloc(i64 noundef 72) #24
  tail call fastcc void @omega_copy_problem(ptr noundef %2, ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !69
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %2, i64 0, i32 4
  store i32 0, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %8 = zext i32 %6 to i64
  br label %9

9:                                                ; preds = %13, %1
  %10 = phi i64 [ %14, %13 ], [ %8, %1 ]
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %10, -1
  %15 = load ptr, ptr %7, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.eqn_d, ptr %15, i64 %14, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %9, !llvm.loop !176

19:                                               ; preds = %13, %9
  %20 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %12, %21
  %23 = select i1 %22, ptr %0, ptr null
  store ptr %23, ptr @original_problem, align 8, !tbaa !54
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 17, i64 1, ptr nonnull %24)
  br i1 %22, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %34 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 13, i64 1, ptr %33)
  br label %35

35:                                               ; preds = %32, %30
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %37 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 3, i64 1, ptr %36)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %38, ptr noundef %0) #23
  br label %39

39:                                               ; preds = %35, %26, %19
  %40 = tail call i32 @omega_solve_problem(ptr noundef %2, i32 noundef 2) #23
  store ptr null, ptr @original_problem, align 8, !tbaa !54
  tail call void @free(ptr noundef %2) #23
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = icmp eq i32 %40, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 17, i64 1, ptr nonnull %41)
  br label %53

51:                                               ; preds = %47
  %52 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 18, i64 1, ptr nonnull %41)
  br label %53

53:                                               ; preds = %51, %49
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %54, ptr noundef %0) #23
  br label %55

55:                                               ; preds = %53, %43, %39
  ret i32 %40
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @omega_convert_eq_to_geqs(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !35 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 22, i64 1, ptr nonnull %3)
  br label %11

11:                                               ; preds = %9, %5, %2
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.eqn_d, ptr %13, i64 %16
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.eqn_d, ptr %19, i64 %20
  %22 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %17, ptr noundef %21, i32 noundef %22) #23
  %23 = load ptr, ptr %12, align 8, !tbaa !60
  %24 = load i32, ptr %14, align 4, !tbaa !59
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.eqn_d, ptr %23, i64 %25, i32 1
  store i32 1, ptr %26, align 4, !tbaa !45
  %27 = add nsw i32 %24, 1
  store i32 %27, ptr %14, align 4, !tbaa !59
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.eqn_d, ptr %23, i64 %28
  %30 = load ptr, ptr %18, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %20
  %32 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %29, ptr noundef %31, i32 noundef %32) #23
  %33 = load ptr, ptr %12, align 8, !tbaa !60
  %34 = load i32, ptr %14, align 4, !tbaa !59
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.eqn_d, ptr %33, i64 %35, i32 1
  store i32 1, ptr %36, align 4, !tbaa !45
  %37 = load i32, ptr %0, align 8, !tbaa !36
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %11, %39
  %40 = phi i64 [ %48, %39 ], [ 0, %11 ]
  %41 = load i32, ptr %14, align 4, !tbaa !59
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.eqn_d, ptr %33, i64 %42, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = getelementptr inbounds i32, ptr %44, i64 %40
  %46 = load i32, ptr %45, align 4, !tbaa !44
  %47 = sub nsw i32 0, %46
  store i32 %47, ptr %45, align 4, !tbaa !44
  %48 = add nuw nsw i64 %40, 1
  %49 = load i32, ptr %0, align 8, !tbaa !36
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %40, %50
  br i1 %51, label %39, label %52, !llvm.loop !177

52:                                               ; preds = %39
  %53 = load i32, ptr %14, align 4, !tbaa !59
  br label %54

54:                                               ; preds = %52, %11
  %55 = phi i32 [ %53, %52 ], [ %34, %11 ]
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %14, align 4, !tbaa !59
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @omega_print_problem(ptr noundef nonnull %57, ptr noundef nonnull %0) #23
  br label %64

64:                                               ; preds = %63, %59, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @omega_solve_eq(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !178 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, ptr @may_be_red, align 4, !tbaa !44
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.73, i32 noundef %1, i32 noundef %14) #23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %16, ptr noundef nonnull %0) #23
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %13, %9, %5, %2
  %20 = load i32, ptr @may_be_red, align 4, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %80, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  br label %26

26:                                               ; preds = %66, %22
  %27 = phi i32 [ %24, %22 ], [ %64, %66 ]
  %28 = phi i32 [ 0, %22 ], [ %79, %66 ]
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = sext i32 %27 to i64
  br label %46

32:                                               ; preds = %26
  %33 = load ptr, ptr %25, align 8, !tbaa !57
  %34 = sext i32 %28 to i64
  %35 = sext i32 %27 to i64
  br label %36

36:                                               ; preds = %32, %41
  %37 = phi i64 [ %34, %32 ], [ %42, %41 ]
  %38 = getelementptr inbounds %struct.eqn_d, ptr %33, i64 %37, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !47
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = add nsw i64 %37, 1
  %43 = icmp eq i64 %42, %35
  br i1 %43, label %46, label %36, !llvm.loop !179

44:                                               ; preds = %36
  %45 = trunc i64 %37 to i32
  br label %46

46:                                               ; preds = %41, %44, %30
  %47 = phi i64 [ %31, %30 ], [ %35, %44 ], [ %35, %41 ]
  %48 = phi i32 [ %28, %30 ], [ %45, %44 ], [ %27, %41 ]
  %49 = sext i32 %48 to i64
  %50 = tail call i32 @llvm.smin.i32(i32 %48, i32 %27)
  %51 = add i32 %50, -1
  br label %52

52:                                               ; preds = %55, %46
  %53 = phi i64 [ %56, %55 ], [ %47, %46 ]
  %54 = icmp sgt i64 %53, %49
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = add nsw i64 %53, -1
  %57 = load ptr, ptr %25, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct.eqn_d, ptr %57, i64 %56, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !47
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %52, label %61, !llvm.loop !180

61:                                               ; preds = %55
  %62 = trunc i64 %56 to i32
  br label %63

63:                                               ; preds = %52, %61
  %64 = phi i32 [ %62, %61 ], [ %51, %52 ]
  %65 = icmp slt i32 %48, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef 1) #23
  %68 = load ptr, ptr %25, align 8, !tbaa !57
  %69 = getelementptr inbounds %struct.eqn_d, ptr %68, i64 %49
  %70 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %67, ptr noundef %69, i32 noundef %70) #23
  %71 = load ptr, ptr %25, align 8, !tbaa !57
  %72 = getelementptr inbounds %struct.eqn_d, ptr %71, i64 %49
  %73 = sext i32 %64 to i64
  %74 = getelementptr inbounds %struct.eqn_d, ptr %71, i64 %73
  %75 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %72, ptr noundef %74, i32 noundef %75) #23
  %76 = load ptr, ptr %25, align 8, !tbaa !57
  %77 = getelementptr inbounds %struct.eqn_d, ptr %76, i64 %73
  %78 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %77, ptr noundef %67, i32 noundef %78) #23
  tail call fastcc void @omega_free_eqns(ptr noundef %67) #23
  %79 = add nsw i32 %48, 1
  br label %26

80:                                               ; preds = %63, %19
  %81 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !56
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %648

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %86 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %87 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %88 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  br label %89

89:                                               ; preds = %84, %645
  %90 = phi i32 [ %82, %84 ], [ %646, %645 ]
  %91 = add nsw i32 %90, -1
  %92 = load ptr, ptr %85, align 8, !tbaa !57
  %93 = zext nneg i32 %91 to i64
  %94 = getelementptr inbounds %struct.eqn_d, ptr %92, i64 %93
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %89
  %98 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 5, i64 1, ptr nonnull %95)
  br label %103

103:                                              ; preds = %101, %97, %89
  %104 = load i32, ptr %0, align 8, !tbaa !36
  %105 = icmp sgt i32 %104, 0
  %106 = getelementptr inbounds %struct.eqn_d, ptr %92, i64 %93, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !42
  br i1 %105, label %108, label %117

108:                                              ; preds = %103, %114
  %109 = phi i32 [ %115, %114 ], [ %104, %103 ]
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %107, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !44
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = add nsw i32 %109, -1
  %116 = icmp sgt i32 %109, 1
  br i1 %116, label %108, label %117, !llvm.loop !181

117:                                              ; preds = %114, %103
  %118 = phi i32 [ %104, %103 ], [ 0, %114 ]
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %107, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !44
  %122 = add i32 %118, -1
  br label %138

123:                                              ; preds = %108
  %124 = zext nneg i32 %109 to i64
  %125 = getelementptr inbounds i32, ptr %107, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !44
  %127 = add nsw i32 %109, -1
  %128 = icmp ugt i32 %109, 1
  br i1 %128, label %129, label %146

129:                                              ; preds = %123, %135
  %130 = phi i32 [ %136, %135 ], [ %127, %123 ]
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds i32, ptr %107, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !44
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = add nsw i32 %130, -1
  %137 = icmp sgt i32 %130, 1
  br i1 %137, label %129, label %146, !llvm.loop !182

138:                                              ; preds = %129, %117
  %139 = phi i32 [ %122, %117 ], [ %127, %129 ]
  %140 = phi i32 [ %121, %117 ], [ %126, %129 ]
  %141 = phi i64 [ %119, %117 ], [ %124, %129 ]
  %142 = phi i32 [ %118, %117 ], [ %109, %129 ]
  %143 = phi i32 [ %122, %117 ], [ %130, %129 ]
  %144 = getelementptr inbounds %struct.eqn_d, ptr %92, i64 %93, i32 3
  %145 = icmp eq i32 %143, -1
  br i1 %145, label %155, label %162

146:                                              ; preds = %135, %123
  %147 = load i32, ptr %107, align 4, !tbaa !44
  %148 = srem i32 %147, %126
  %149 = sdiv i32 %147, %126
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  tail call fastcc void @omega_problem_has_no_solution() #23
  br label %649

152:                                              ; preds = %146
  store i32 %149, ptr %107, align 4, !tbaa !44
  store i32 1, ptr %125, align 4, !tbaa !44
  %153 = load i32, ptr %81, align 8, !tbaa !56
  %154 = add nsw i32 %153, -1
  store i32 %154, ptr %81, align 8, !tbaa !56
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %91, i32 noundef %109) #23
  br label %645

155:                                              ; preds = %138
  %156 = load i32, ptr %107, align 4, !tbaa !44
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call fastcc void @omega_problem_has_no_solution() #23
  br label %649

159:                                              ; preds = %155
  %160 = load i32, ptr %81, align 8, !tbaa !56
  %161 = add nsw i32 %160, -1
  store i32 %161, ptr %81, align 8, !tbaa !56
  br label %645

162:                                              ; preds = %138
  %163 = tail call i32 @llvm.abs.i32(i32 %140, i1 true)
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, ptr %81, align 8, !tbaa !56
  %167 = add nsw i32 %166, -1
  store i32 %167, ptr %81, align 8, !tbaa !56
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %91, i32 noundef %142) #23
  br label %645

168:                                              ; preds = %162
  %169 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %143) #23, !range !113
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %168
  %172 = load i32, ptr %86, align 4, !tbaa !69
  %173 = add nsw i32 %172, 1
  %174 = icmp eq i32 %173, %142
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = tail call fastcc zeroext i8 @omega_eqn_is_red(ptr noundef %94, i32 noundef %1) #23, !range !113
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i1, ptr @in_approximate_mode, align 1
  %180 = xor i1 %179, true
  br label %181

181:                                              ; preds = %178, %175, %171, %168
  %182 = phi i1 [ false, %175 ], [ false, %171 ], [ false, %168 ], [ %180, %178 ]
  %183 = zext i1 %182 to i8
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %185 = icmp eq ptr %184, null
  br i1 %185, label %193, label %186

186:                                              ; preds = %181
  %187 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %188 = and i32 %187, 8
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, i1 %182, i1 false
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 20, i64 1, ptr nonnull %184)
  br label %193

193:                                              ; preds = %191, %186, %181
  %194 = sext i32 %143 to i64
  br label %195

195:                                              ; preds = %396, %193
  %196 = phi i32 [ %163, %193 ], [ %377, %396 ]
  %197 = phi i8 [ %183, %193 ], [ 0, %396 ]
  %198 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %143) #23, !range !113
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %195
  %201 = icmp eq i32 %196, 1
  br i1 %201, label %374, label %202

202:                                              ; preds = %200, %208
  %203 = phi i64 [ %214, %208 ], [ %194, %200 ]
  %204 = phi i32 [ %213, %208 ], [ %196, %200 ]
  %205 = trunc i64 %203 to i32
  %206 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %205) #23, !range !113
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %202
  %209 = load ptr, ptr %144, align 8, !tbaa !42
  %210 = getelementptr inbounds i32, ptr %209, i64 %203
  %211 = load i32, ptr %210, align 4, !tbaa !44
  %212 = tail call i32 @llvm.abs.i32(i32 %211, i1 true)
  %213 = tail call fastcc i32 @gcd(i32 noundef %212, i32 noundef %204) #23
  %214 = add i64 %203, -1
  %215 = icmp eq i32 %213, 1
  br i1 %215, label %374, label %202, !llvm.loop !183

216:                                              ; preds = %195
  %217 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %142) #23, !range !113
  %218 = icmp eq i8 %217, 0
  %219 = select i1 %218, i32 %196, i32 0
  br label %220

220:                                              ; preds = %202, %216
  %221 = phi i32 [ %196, %216 ], [ %204, %202 ]
  %222 = phi i32 [ %219, %216 ], [ %204, %202 ]
  %223 = phi i32 [ %143, %216 ], [ %205, %202 ]
  %224 = icmp ne i32 %221, 1
  %225 = icmp sgt i32 %223, 0
  %226 = and i1 %224, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %220
  %228 = load ptr, ptr %144, align 8, !tbaa !42
  %229 = zext nneg i32 %223 to i64
  br label %230

230:                                              ; preds = %227, %230
  %231 = phi i64 [ %229, %227 ], [ %237, %230 ]
  %232 = phi i32 [ %221, %227 ], [ %236, %230 ]
  %233 = getelementptr inbounds i32, ptr %228, i64 %231
  %234 = load i32, ptr %233, align 4, !tbaa !44
  %235 = tail call i32 @llvm.abs.i32(i32 %234, i1 true)
  %236 = tail call fastcc i32 @gcd(i32 noundef %235, i32 noundef %232) #23
  %237 = add nsw i64 %231, -1
  %238 = icmp ne i32 %236, 1
  %239 = icmp ugt i64 %231, 1
  %240 = and i1 %238, %239
  br i1 %240, label %230, label %241, !llvm.loop !184

241:                                              ; preds = %230, %220
  %242 = phi i32 [ %221, %220 ], [ %236, %230 ]
  %243 = icmp sgt i32 %242, 1
  br i1 %243, label %244, label %264

244:                                              ; preds = %241
  %245 = load ptr, ptr %144, align 8, !tbaa !42
  %246 = load i32, ptr %245, align 4, !tbaa !44
  %247 = srem i32 %246, %242
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32, ptr %0, align 8, !tbaa !36
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %262, label %253

252:                                              ; preds = %244
  tail call fastcc void @omega_problem_has_no_solution() #23
  br label %649

253:                                              ; preds = %249, %253
  %254 = phi i64 [ %258, %253 ], [ 0, %249 ]
  %255 = getelementptr inbounds i32, ptr %245, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !44
  %257 = sdiv i32 %256, %242
  store i32 %257, ptr %255, align 4, !tbaa !44
  %258 = add nuw nsw i64 %254, 1
  %259 = load i32, ptr %0, align 8, !tbaa !36
  %260 = sext i32 %259 to i64
  %261 = icmp slt i64 %254, %260
  br i1 %261, label %253, label %262, !llvm.loop !185

262:                                              ; preds = %253, %249
  %263 = sdiv i32 %222, %242
  br label %264

264:                                              ; preds = %262, %241
  %265 = phi i32 [ %263, %262 ], [ %222, %241 ]
  %266 = icmp sgt i32 %265, 1
  br i1 %266, label %267, label %374

267:                                              ; preds = %264, %271
  %268 = phi i64 [ %272, %271 ], [ %93, %264 ]
  %269 = trunc i64 %268 to i32
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %267
  %272 = add nsw i64 %268, -1
  %273 = load ptr, ptr %85, align 8, !tbaa !57
  %274 = getelementptr inbounds %struct.eqn_d, ptr %273, i64 %272, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !42
  %276 = getelementptr inbounds i32, ptr %275, i64 %141
  %277 = load i32, ptr %276, align 4, !tbaa !44
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %267, label %374, !llvm.loop !186

279:                                              ; preds = %267
  %280 = icmp eq i32 %269, 0
  br i1 %280, label %281, label %374

281:                                              ; preds = %279
  %282 = load i32, ptr %87, align 4, !tbaa !59
  %283 = zext i32 %282 to i64
  br label %284

284:                                              ; preds = %288, %281
  %285 = phi i64 [ %289, %288 ], [ %283, %281 ]
  %286 = trunc i64 %285 to i32
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %284
  %289 = add nsw i64 %285, -1
  %290 = load ptr, ptr %88, align 8, !tbaa !60
  %291 = getelementptr inbounds %struct.eqn_d, ptr %290, i64 %289, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !42
  %293 = getelementptr inbounds i32, ptr %292, i64 %141
  %294 = load i32, ptr %293, align 4, !tbaa !44
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %284, label %374, !llvm.loop !187

296:                                              ; preds = %284
  %297 = icmp eq i32 %286, 0
  br i1 %297, label %298, label %374

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %300 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %301 = load i32, ptr %299, align 8, !tbaa !62
  %302 = zext i32 %301 to i64
  br label %303

303:                                              ; preds = %307, %298
  %304 = phi i64 [ %308, %307 ], [ %302, %298 ]
  %305 = trunc i64 %304 to i32
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %303
  %308 = add nsw i64 %304, -1
  %309 = load ptr, ptr %300, align 8, !tbaa !63
  %310 = getelementptr inbounds %struct.eqn_d, ptr %309, i64 %308, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !42
  %312 = getelementptr inbounds i32, ptr %311, i64 %141
  %313 = load i32, ptr %312, align 4, !tbaa !44
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %303, label %374, !llvm.loop !188

315:                                              ; preds = %303
  %316 = icmp eq i32 %305, 0
  br i1 %316, label %317, label %374

317:                                              ; preds = %315
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %319 = icmp eq ptr %318, null
  br i1 %319, label %329, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %322 = and i32 %321, 8
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %320
  %325 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 16, i64 1, ptr nonnull %318)
  %326 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_eq(ptr noundef %326, ptr noundef nonnull %0, ptr noundef %94) #23
  %327 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %328 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 2, i64 1, ptr %327)
  br label %329

329:                                              ; preds = %324, %320, %317
  %330 = icmp sgt i32 %142, 0
  %331 = load ptr, ptr %144, align 8, !tbaa !42
  %332 = getelementptr inbounds i32, ptr %331, i64 %141
  %333 = load i32, ptr %332, align 4, !tbaa !44
  %334 = tail call i32 @llvm.abs.i32(i32 %333, i1 true)
  br i1 %330, label %335, label %355

335:                                              ; preds = %329
  %336 = zext i32 %139 to i64
  br label %337

337:                                              ; preds = %335, %349
  %338 = phi i64 [ %351, %349 ], [ %336, %335 ]
  %339 = phi i8 [ %350, %349 ], [ 0, %335 ]
  %340 = getelementptr inbounds i32, ptr %331, i64 %338
  %341 = load i32, ptr %340, align 4, !tbaa !44
  %342 = tail call fastcc i32 @int_mod(i32 noundef %341, i32 noundef %334) #23
  %343 = shl nsw i32 %342, 1
  %344 = icmp slt i32 %343, %334
  %345 = select i1 %344, i32 0, i32 %334
  %346 = sub nsw i32 %342, %345
  %347 = icmp eq i32 %346, %341
  br i1 %347, label %349, label %348

348:                                              ; preds = %337
  store i32 %346, ptr %340, align 4, !tbaa !44
  br label %349

349:                                              ; preds = %348, %337
  %350 = phi i8 [ 1, %348 ], [ %339, %337 ]
  %351 = add nsw i64 %338, -1
  %352 = icmp sgt i64 %338, 0
  br i1 %352, label %337, label %353, !llvm.loop !189

353:                                              ; preds = %349
  %354 = icmp eq i8 %350, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %329, %353
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %357 = icmp eq ptr %356, null
  br i1 %357, label %374, label %358

358:                                              ; preds = %355
  %359 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %360 = and i32 %359, 8
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %374, label %362

362:                                              ; preds = %358
  %363 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 9, i64 1, ptr nonnull %356)
  br label %374

364:                                              ; preds = %353
  tail call fastcc void @omega_name_wild_card(ptr noundef nonnull %0, i32 noundef %142) #23
  %365 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %366 = icmp eq ptr %365, null
  br i1 %366, label %645, label %367

367:                                              ; preds = %364
  %368 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %369 = and i32 %368, 8
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %645, label %371

371:                                              ; preds = %367
  tail call fastcc void @omega_print_eq(ptr noundef nonnull %365, ptr noundef nonnull %0, ptr noundef %94) #23
  %372 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %373 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 2, i64 1, ptr %372)
  br label %645

374:                                              ; preds = %208, %271, %288, %307, %200, %279, %355, %358, %362, %296, %315, %264
  %375 = phi i1 [ false, %264 ], [ %266, %315 ], [ %266, %296 ], [ %266, %362 ], [ %266, %358 ], [ %266, %355 ], [ %266, %279 ], [ false, %200 ], [ %266, %307 ], [ %266, %288 ], [ %266, %271 ], [ false, %208 ]
  %376 = phi i32 [ %265, %264 ], [ %265, %315 ], [ %265, %296 ], [ %265, %362 ], [ %265, %358 ], [ %265, %355 ], [ %265, %279 ], [ 1, %200 ], [ %265, %307 ], [ %265, %288 ], [ %265, %271 ], [ 1, %208 ]
  %377 = phi i32 [ %242, %264 ], [ %242, %315 ], [ %242, %296 ], [ %334, %362 ], [ %334, %358 ], [ %334, %355 ], [ %242, %279 ], [ 1, %200 ], [ %242, %307 ], [ %242, %288 ], [ %242, %271 ], [ 1, %208 ]
  %378 = icmp eq i8 %197, 0
  br i1 %378, label %397, label %379

379:                                              ; preds = %374
  %380 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %381 = icmp eq ptr %380, null
  br i1 %381, label %390, label %382

382:                                              ; preds = %379
  %383 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %384 = and i32 %383, 8
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %390, label %386

386:                                              ; preds = %382
  %387 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %142) #23
  %388 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %380, ptr noundef nonnull @.str.79, ptr noundef nonnull %387) #23
  %389 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_vars(ptr noundef %389, ptr noundef nonnull %0) #23
  br label %390

390:                                              ; preds = %386, %382, %379
  %391 = load i32, ptr %86, align 4, !tbaa !69
  %392 = add nsw i32 %391, 1
  store i32 %392, ptr %86, align 4, !tbaa !69
  %393 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef nonnull %0, i32 noundef %142) #23, !range !113
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  tail call fastcc void @omega_name_wild_card(ptr noundef nonnull %0, i32 noundef %142) #23
  br label %396

396:                                              ; preds = %395, %390
  br label %195

397:                                              ; preds = %374
  %398 = icmp slt i32 %376, 2
  %399 = load i1, ptr @in_approximate_mode, align 1
  %400 = select i1 %398, i1 true, i1 %399
  br i1 %400, label %480, label %401

401:                                              ; preds = %397
  %402 = load ptr, ptr %85, align 8, !tbaa !57
  %403 = sext i32 %91 to i64
  %404 = getelementptr inbounds %struct.eqn_d, ptr %402, i64 %403, i32 2
  %405 = load i32, ptr %404, align 8, !tbaa !47
  %406 = icmp eq i32 %405, 1
  %407 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %408 = icmp eq ptr %407, null
  br i1 %406, label %409, label %419

409:                                              ; preds = %401
  br i1 %408, label %416, label %410

410:                                              ; preds = %409
  %411 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %412 = and i32 %411, 8
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %416, label %414

414:                                              ; preds = %410
  %415 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 22, i64 1, ptr nonnull %407)
  br label %416

416:                                              ; preds = %414, %410, %409
  %417 = load i32, ptr %81, align 8, !tbaa !56
  %418 = add nsw i32 %417, -1
  store i32 %418, ptr %81, align 8, !tbaa !56
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %91, i32 noundef %142) #23
  br label %645

419:                                              ; preds = %401
  br i1 %408, label %434, label %420

420:                                              ; preds = %419
  %421 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %422 = and i32 %421, 8
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %434, label %424

424:                                              ; preds = %420
  %425 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 41, i64 1, ptr nonnull %407)
  %426 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_eq(ptr noundef %426, ptr noundef nonnull %0, ptr noundef %94) #23
  %427 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %428 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 6, i64 1, ptr %427)
  %429 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %429, ptr noundef nonnull %0) #23
  %430 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %431 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 6, i64 1, ptr %430)
  %432 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %433 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 6, i64 1, ptr %432)
  br label %434

434:                                              ; preds = %424, %420, %419
  %435 = tail call fastcc i32 @omega_add_new_wild_card(ptr noundef nonnull %0) #23
  %436 = load i32, ptr %81, align 8, !tbaa !56
  %437 = add nsw i32 %436, 1
  store i32 %437, ptr %81, align 8, !tbaa !56
  %438 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %439 = getelementptr inbounds %struct.param_info, ptr %438, i64 66, i32 1
  %440 = load i32, ptr %439, align 8, !tbaa !83
  %441 = icmp slt i32 %436, %440
  br i1 %441, label %443, label %442

442:                                              ; preds = %434
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3362, ptr noundef nonnull @.str.26) #24
  br label %443

443:                                              ; preds = %434, %442
  %444 = load ptr, ptr %85, align 8, !tbaa !57
  %445 = zext nneg i32 %90 to i64
  %446 = getelementptr inbounds %struct.eqn_d, ptr %444, i64 %445
  %447 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_init_eqn_zero(ptr noundef nonnull %446, i32 noundef %447) #23
  %448 = load ptr, ptr %85, align 8, !tbaa !57
  %449 = getelementptr inbounds %struct.eqn_d, ptr %448, i64 %445
  %450 = load i32, ptr %86, align 4, !tbaa !69
  tail call fastcc void @omega_copy_eqn(ptr noundef nonnull %449, ptr noundef %94, i32 noundef %450) #23
  %451 = load i32, ptr %0, align 8, !tbaa !36
  %452 = icmp sgt i32 %451, -1
  %453 = load ptr, ptr %85, align 8, !tbaa !57
  %454 = getelementptr inbounds %struct.eqn_d, ptr %453, i64 %445, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !42
  br i1 %452, label %456, label %469

456:                                              ; preds = %443
  %457 = zext nneg i32 %451 to i64
  br label %458

458:                                              ; preds = %456, %458
  %459 = phi i64 [ %457, %456 ], [ %467, %458 ]
  %460 = getelementptr inbounds i32, ptr %455, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !44
  %462 = tail call fastcc i32 @int_mod(i32 noundef %461, i32 noundef %376) #23
  %463 = shl nsw i32 %462, 1
  %464 = icmp slt i32 %463, %376
  %465 = select i1 %464, i32 0, i32 %376
  %466 = sub nsw i32 %462, %465
  store i32 %466, ptr %460, align 4, !tbaa !44
  %467 = add nsw i64 %459, -1
  %468 = icmp eq i64 %459, 0
  br i1 %468, label %469, label %458, !llvm.loop !190

469:                                              ; preds = %458, %443
  %470 = sext i32 %435 to i64
  %471 = getelementptr inbounds i32, ptr %455, i64 %470
  store i32 %376, ptr %471, align 4, !tbaa !44
  %472 = add nuw nsw i32 %90, 1
  %473 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %474 = icmp eq ptr %473, null
  br i1 %474, label %645, label %475

475:                                              ; preds = %469
  %476 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %477 = and i32 %476, 8
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %645, label %479

479:                                              ; preds = %475
  tail call void @omega_print_problem(ptr noundef nonnull %473, ptr noundef nonnull %0) #23
  br label %645

480:                                              ; preds = %397
  %481 = load i32, ptr %86, align 4, !tbaa !69
  %482 = icmp eq i32 %376, 0
  %483 = select i1 %482, i32 0, i32 %481
  br i1 %375, label %484, label %517

484:                                              ; preds = %480
  br i1 %399, label %486, label %485

485:                                              ; preds = %484
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3390, ptr noundef nonnull @.str.26) #24
  br label %486

486:                                              ; preds = %484, %485
  %487 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %488 = icmp eq ptr %487, null
  br i1 %488, label %499, label %489

489:                                              ; preds = %486
  %490 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %491 = and i32 %490, 8
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %499, label %493

493:                                              ; preds = %489
  %494 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 23, i64 1, ptr nonnull %487)
  %495 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_eq(ptr noundef %495, ptr noundef nonnull %0, ptr noundef %94) #23
  %496 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %497 = tail call i32 @fputc(i32 10, ptr %496)
  %498 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %498, ptr noundef nonnull %0) #23
  br label %499

499:                                              ; preds = %493, %489, %486
  %500 = load i32, ptr %0, align 8, !tbaa !36
  %501 = icmp sgt i32 %500, %483
  br i1 %501, label %502, label %538

502:                                              ; preds = %499
  %503 = load ptr, ptr %85, align 8, !tbaa !57
  %504 = sext i32 %91 to i64
  %505 = getelementptr inbounds %struct.eqn_d, ptr %503, i64 %504, i32 3
  %506 = load ptr, ptr %505, align 8, !tbaa !42
  %507 = sext i32 %500 to i64
  %508 = sext i32 %483 to i64
  br label %509

509:                                              ; preds = %502, %514
  %510 = phi i64 [ %507, %502 ], [ %515, %514 ]
  %511 = getelementptr inbounds i32, ptr %506, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !44
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %534

514:                                              ; preds = %509
  %515 = add nsw i64 %510, -1
  %516 = icmp sgt i64 %515, %508
  br i1 %516, label %509, label %555, !llvm.loop !191

517:                                              ; preds = %480
  %518 = load i32, ptr %0, align 8, !tbaa !36
  %519 = icmp sgt i32 %518, %483
  br i1 %519, label %520, label %538

520:                                              ; preds = %517
  %521 = load ptr, ptr %85, align 8, !tbaa !57
  %522 = sext i32 %91 to i64
  %523 = getelementptr inbounds %struct.eqn_d, ptr %521, i64 %522, i32 3
  %524 = load ptr, ptr %523, align 8, !tbaa !42
  %525 = sext i32 %518 to i64
  %526 = sext i32 %483 to i64
  br label %527

527:                                              ; preds = %520, %531
  %528 = phi i64 [ %525, %520 ], [ %532, %531 ]
  %529 = getelementptr inbounds i32, ptr %524, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !44
  switch i32 %530, label %531 [
    i32 1, label %536
    i32 -1, label %536
  ]

531:                                              ; preds = %527
  %532 = add nsw i64 %528, -1
  %533 = icmp sgt i64 %532, %526
  br i1 %533, label %527, label %555, !llvm.loop !192

534:                                              ; preds = %509
  %535 = trunc i64 %510 to i32
  br label %538

536:                                              ; preds = %527, %527
  %537 = trunc i64 %528 to i32
  br label %538

538:                                              ; preds = %536, %534, %517, %499
  %539 = phi i32 [ %500, %499 ], [ %518, %517 ], [ %500, %534 ], [ %518, %536 ]
  %540 = phi i32 [ %500, %499 ], [ %518, %517 ], [ %535, %534 ], [ %537, %536 ]
  %541 = icmp sgt i32 %540, %483
  br i1 %541, label %542, label %555

542:                                              ; preds = %538
  %543 = load i32, ptr %81, align 8, !tbaa !56
  %544 = add nsw i32 %543, -1
  store i32 %544, ptr %81, align 8, !tbaa !56
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %91, i32 noundef %540) #23
  %545 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %546 = icmp eq ptr %545, null
  br i1 %546, label %645, label %547

547:                                              ; preds = %542
  %548 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %549 = and i32 %548, 8
  %550 = icmp ne i32 %549, 0
  %551 = and i1 %375, %550
  br i1 %551, label %552, label %645

552:                                              ; preds = %547
  %553 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 33, i64 1, ptr nonnull %545)
  %554 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %554, ptr noundef nonnull %0) #23
  br label %645

555:                                              ; preds = %531, %514, %538
  %556 = phi i32 [ %539, %538 ], [ %500, %514 ], [ %518, %531 ]
  %557 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %558 = icmp eq ptr %557, null
  br i1 %558, label %566, label %559

559:                                              ; preds = %555
  %560 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %561 = and i32 %560, 8
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %559
  %564 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 13, i64 1, ptr nonnull %557)
  %565 = load i32, ptr %0, align 8, !tbaa !36
  br label %566

566:                                              ; preds = %563, %559, %555
  %567 = phi i32 [ %565, %563 ], [ %556, %559 ], [ %556, %555 ]
  %568 = icmp eq i32 %567, %483
  br i1 %568, label %629, label %569

569:                                              ; preds = %566
  %570 = load ptr, ptr %85, align 8, !tbaa !57
  %571 = sext i32 %91 to i64
  %572 = getelementptr inbounds %struct.eqn_d, ptr %570, i64 %571, i32 3
  %573 = load ptr, ptr %572, align 8, !tbaa !42
  %574 = sext i32 %567 to i64
  br label %575

575:                                              ; preds = %569, %593
  %576 = phi i64 [ %574, %569 ], [ %594, %593 ]
  %577 = getelementptr inbounds i32, ptr %573, i64 %576
  %578 = load i32, ptr %577, align 4, !tbaa !44
  %579 = and i32 %578, 1
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %593, label %581

581:                                              ; preds = %575
  %582 = trunc i64 %576 to i32
  br label %583

583:                                              ; preds = %581, %588
  %584 = phi i64 [ %576, %581 ], [ %585, %588 ]
  %585 = add nsw i64 %584, -1
  %586 = trunc i64 %585 to i32
  %587 = icmp eq i32 %483, %586
  br i1 %587, label %597, label %588

588:                                              ; preds = %583
  %589 = getelementptr inbounds i32, ptr %573, i64 %585
  %590 = load i32, ptr %589, align 4, !tbaa !44
  %591 = and i32 %590, 1
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %583, label %597, !llvm.loop !193

593:                                              ; preds = %575
  %594 = add nsw i64 %576, -1
  %595 = trunc i64 %594 to i32
  %596 = icmp eq i32 %483, %595
  br i1 %596, label %602, label %575, !llvm.loop !194

597:                                              ; preds = %583, %588
  %598 = phi i32 [ %483, %583 ], [ %586, %588 ]
  %599 = icmp ne i32 %582, 0
  %600 = icmp eq i32 %598, %483
  %601 = select i1 %599, i1 %600, i1 false
  br i1 %601, label %643, label %602

602:                                              ; preds = %593, %597
  br i1 %568, label %629, label %603

603:                                              ; preds = %602
  %604 = load ptr, ptr %85, align 8, !tbaa !57
  %605 = sext i32 %91 to i64
  %606 = getelementptr inbounds %struct.eqn_d, ptr %604, i64 %605, i32 3
  %607 = load ptr, ptr %606, align 8, !tbaa !42
  %608 = sext i32 %567 to i64
  br label %609

609:                                              ; preds = %603, %623
  %610 = phi i64 [ %608, %603 ], [ %626, %623 ]
  %611 = phi i32 [ 2147483647, %603 ], [ %625, %623 ]
  %612 = phi i32 [ 0, %603 ], [ %624, %623 ]
  %613 = getelementptr inbounds i32, ptr %607, i64 %610
  %614 = load i32, ptr %613, align 4, !tbaa !44
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %623, label %616

616:                                              ; preds = %609
  %617 = tail call i32 @llvm.abs.i32(i32 %614, i1 true)
  %618 = add nuw nsw i32 %617, 1
  %619 = icmp sgt i32 %611, %618
  %620 = trunc i64 %610 to i32
  %621 = select i1 %619, i32 %620, i32 %612
  %622 = tail call i32 @llvm.smin.i32(i32 %611, i32 %618)
  br label %623

623:                                              ; preds = %616, %609
  %624 = phi i32 [ %612, %609 ], [ %621, %616 ]
  %625 = phi i32 [ %611, %609 ], [ %622, %616 ]
  %626 = add nsw i64 %610, -1
  %627 = trunc i64 %626 to i32
  %628 = icmp eq i32 %483, %627
  br i1 %628, label %629, label %609, !llvm.loop !195

629:                                              ; preds = %623, %566, %602
  %630 = phi i32 [ 0, %602 ], [ 0, %566 ], [ %624, %623 ]
  %631 = phi i32 [ 2147483647, %602 ], [ 2147483647, %566 ], [ %625, %623 ]
  %632 = icmp eq i32 %630, %483
  br i1 %632, label %633, label %644

633:                                              ; preds = %629
  %634 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %635 = icmp eq ptr %634, null
  br i1 %635, label %642, label %636

636:                                              ; preds = %633
  %637 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %638 = and i32 %637, 8
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %642, label %640

640:                                              ; preds = %636
  %641 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 25, i64 1, ptr nonnull %634)
  br label %642

642:                                              ; preds = %640, %636, %633
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3461, ptr noundef nonnull @.str.26) #24
  br label %644

643:                                              ; preds = %597
  tail call fastcc void @omega_do_mod(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %91, i32 noundef %582) #23
  br label %645

644:                                              ; preds = %629, %642
  tail call fastcc void @omega_do_mod(ptr noundef nonnull %0, i32 noundef %631, i32 noundef %91, i32 noundef %630) #23
  br label %645

645:                                              ; preds = %371, %367, %364, %643, %644, %552, %547, %542, %469, %475, %479, %416, %165, %159, %152
  %646 = phi i32 [ %91, %152 ], [ %91, %159 ], [ %91, %165 ], [ %90, %643 ], [ %90, %644 ], [ %91, %542 ], [ %91, %547 ], [ %91, %552 ], [ %472, %469 ], [ %472, %475 ], [ %472, %479 ], [ %91, %416 ], [ %90, %364 ], [ %90, %367 ], [ %90, %371 ]
  %647 = icmp sgt i32 %646, 0
  br i1 %647, label %89, label %648, !llvm.loop !196

648:                                              ; preds = %645, %80
  store i32 0, ptr %81, align 8, !tbaa !56
  br label %649

649:                                              ; preds = %158, %151, %252, %648
  %650 = phi i32 [ 2, %648 ], [ 0, %252 ], [ 0, %151 ], [ 0, %158 ]
  ret i32 %650
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_problem_reduced(ptr noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !197 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 70, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @omega_eliminate_redundant(ptr noundef %0, i8 noundef zeroext 1) #23, !range !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %68, label %9

9:                                                ; preds = %6, %1
  store i32 1, ptr @omega_found_reduction, align 4, !tbaa !44
  %10 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call fastcc void @coalesce(ptr noundef %0) #23
  br label %13

13:                                               ; preds = %9, %12
  tail call fastcc void @chain_unprotect(ptr noundef %0) #23
  %14 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef %0, i32 noundef 1) #23, !range !113
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  br label %28

19:                                               ; preds = %28, %13
  %20 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  br label %41

28:                                               ; preds = %16, %28
  %29 = phi i64 [ 1, %16 ], [ %37, %28 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !66
  %31 = load ptr, ptr %18, align 8, !tbaa !52
  %32 = getelementptr inbounds i32, ptr %31, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !44
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %30, i64 %34
  %36 = trunc i64 %29 to i32
  store i32 %36, ptr %35, align 4, !tbaa !44
  %37 = add nuw i64 %29, 1
  %38 = trunc i64 %37 to i32
  %39 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef %0, i32 noundef %38) #23, !range !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %19, label %28, !llvm.loop !198

41:                                               ; preds = %23, %41
  %42 = phi i64 [ 0, %23 ], [ %49, %41 ]
  %43 = trunc i64 %42 to i32
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %struct.eqn_d, ptr %27, i64 %42
  %46 = load i32, ptr %45, align 8, !tbaa !46
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %25, i64 %47
  store i32 %44, ptr %48, align 4, !tbaa !44
  %49 = add nuw nsw i64 %42, 1
  %50 = load i32, ptr %20, align 8, !tbaa !62
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %41, label %53, !llvm.loop !199

53:                                               ; preds = %41, %19
  %54 = load ptr, ptr @omega_when_reduced, align 8, !tbaa !54
  tail call void %54(ptr noundef nonnull %0) #24
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 44, i64 1, ptr nonnull %55)
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %64 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 17, i64 1, ptr %63)
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %65, ptr noundef nonnull %0) #23
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %67 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 44, i64 1, ptr %66)
  br label %68

68:                                               ; preds = %6, %61, %57, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @omega_solve_geq(ptr noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !200 {
  %3 = icmp eq i32 %1, 3
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !69
  br label %7

7:                                                ; preds = %2, %4
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %14 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  br label %15

15:                                               ; preds = %999, %7
  %16 = phi i8 [ 0, %7 ], [ %1000, %999 ]
  %17 = phi i8 [ 0, %7 ], [ %209, %999 ]
  br label %18

18:                                               ; preds = %15, %200
  br i1 %3, label %23, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %8, align 8, !tbaa !62
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3541, ptr noundef nonnull @.str.26) #24
  br label %23

23:                                               ; preds = %18, %19, %22
  %24 = load i32, ptr %9, align 4, !tbaa !59
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 65, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !83
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3544, ptr noundef nonnull @.str.26) #24
  br label %30

30:                                               ; preds = %23, %29
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %31, ptr noundef nonnull @.str.99, i32 noundef %1, i32 noundef %38) #23
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %40, ptr noundef nonnull %0) #23
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %42 = tail call i32 @fputc(i32 10, ptr %41)
  br label %43

43:                                               ; preds = %37, %33, %30
  %44 = load i32, ptr %0, align 8, !tbaa !36
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %194

46:                                               ; preds = %43
  %47 = load i32, ptr %9, align 4, !tbaa !59
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %46
  %50 = load ptr, ptr %13, align 8, !tbaa !60
  %51 = zext nneg i32 %47 to i64
  br label %52

52:                                               ; preds = %49, %104
  %53 = phi i64 [ %51, %49 ], [ %58, %104 ]
  %54 = phi i32 [ 0, %49 ], [ %108, %104 ]
  %55 = phi i32 [ 0, %49 ], [ %107, %104 ]
  %56 = phi i32 [ 134217727, %49 ], [ %106, %104 ]
  %57 = phi i32 [ -134217727, %49 ], [ %105, %104 ]
  %58 = add nsw i64 %53, -1
  %59 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %58, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = getelementptr inbounds i32, ptr %60, i64 1
  %62 = load i32, ptr %61, align 4, !tbaa !44
  %63 = load i32, ptr %60, align 4, !tbaa !44
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = icmp slt i32 %63, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %65
  tail call fastcc void @omega_problem_has_no_solution() #23
  br label %1353

68:                                               ; preds = %52
  %69 = icmp sgt i32 %62, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %68
  %71 = icmp eq i32 %62, 1
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = tail call fastcc i32 @int_div(i32 noundef %63, i32 noundef %62) #23
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %73, %72 ], [ %63, %70 ]
  %76 = sub nsw i32 0, %75
  %77 = icmp slt i32 %57, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = icmp eq i32 %57, %76
  br i1 %79, label %80, label %104

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %58
  %82 = tail call fastcc zeroext i8 @omega_eqn_is_red(ptr noundef %81, i32 noundef %1) #23, !range !113
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %80, %74
  %85 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %58, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !47
  br label %104

87:                                               ; preds = %68
  %88 = icmp eq i32 %62, -1
  br i1 %88, label %92, label %89

89:                                               ; preds = %87
  %90 = sub nsw i32 0, %62
  %91 = tail call fastcc i32 @int_div(i32 noundef %63, i32 noundef %90) #23
  br label %92

92:                                               ; preds = %89, %87
  %93 = phi i32 [ %91, %89 ], [ %63, %87 ]
  %94 = icmp sgt i32 %56, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = icmp eq i32 %56, %93
  br i1 %96, label %97, label %104

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %58
  %99 = tail call fastcc zeroext i8 @omega_eqn_is_red(ptr noundef %98, i32 noundef %1) #23, !range !113
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97, %92
  %102 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %58, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !47
  br label %104

104:                                              ; preds = %65, %95, %97, %101, %78, %80, %84
  %105 = phi i32 [ %57, %65 ], [ %76, %84 ], [ %57, %80 ], [ %57, %78 ], [ %57, %101 ], [ %57, %97 ], [ %57, %95 ]
  %106 = phi i32 [ %56, %65 ], [ %56, %84 ], [ %56, %80 ], [ %56, %78 ], [ %93, %101 ], [ %56, %97 ], [ %56, %95 ]
  %107 = phi i32 [ %55, %65 ], [ %86, %84 ], [ %55, %80 ], [ %55, %78 ], [ %55, %101 ], [ %55, %97 ], [ %55, %95 ]
  %108 = phi i32 [ %54, %65 ], [ %54, %84 ], [ %54, %80 ], [ %54, %78 ], [ %103, %101 ], [ %54, %97 ], [ %54, %95 ]
  %109 = icmp ugt i64 %53, 1
  br i1 %109, label %52, label %110, !llvm.loop !201

110:                                              ; preds = %104, %46
  %111 = phi i32 [ -134217727, %46 ], [ %105, %104 ]
  %112 = phi i32 [ 134217727, %46 ], [ %106, %104 ]
  %113 = phi i32 [ 0, %46 ], [ %107, %104 ]
  %114 = phi i32 [ 0, %46 ], [ %108, %104 ]
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %110
  %118 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %115, ptr noundef nonnull @.str.100, i32 noundef %112) #23
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.101, i32 noundef %111) #23
  br label %125

125:                                              ; preds = %121, %117, %110
  %126 = icmp sgt i32 %111, %112
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  tail call fastcc void @omega_problem_has_no_solution() #23
  br label %1353

128:                                              ; preds = %125
  br i1 %3, label %129, label %176

129:                                              ; preds = %128
  store i32 0, ptr %9, align 4, !tbaa !59
  %130 = load i32, ptr %11, align 4, !tbaa !69
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %174

132:                                              ; preds = %129
  %133 = icmp eq i32 %111, %112
  %134 = icmp eq i32 %114, 0
  %135 = select i1 %133, i1 %134, i1 false
  %136 = icmp eq i32 %113, 0
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = sub nsw i32 0, %111
  %140 = load ptr, ptr %14, align 8, !tbaa !57
  %141 = getelementptr inbounds %struct.eqn_d, ptr %140, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !42
  store i32 %139, ptr %142, align 4, !tbaa !44
  %143 = getelementptr inbounds i32, ptr %142, i64 1
  store i32 1, ptr %143, align 4, !tbaa !44
  %144 = getelementptr inbounds %struct.eqn_d, ptr %140, i64 0, i32 2
  store i32 0, ptr %144, align 8, !tbaa !47
  store i32 1, ptr %12, align 8, !tbaa !56
  %145 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 3) #23
  br label %1353

146:                                              ; preds = %132
  %147 = icmp sgt i32 %111, -134217727
  br i1 %147, label %148, label %156

148:                                              ; preds = %146
  %149 = sub nsw i32 0, %111
  %150 = load ptr, ptr %13, align 8, !tbaa !60
  %151 = getelementptr inbounds %struct.eqn_d, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !42
  store i32 %149, ptr %152, align 4, !tbaa !44
  %153 = getelementptr inbounds i32, ptr %152, i64 1
  store i32 1, ptr %153, align 4, !tbaa !44
  store i32 1, ptr %150, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct.eqn_d, ptr %150, i64 0, i32 2
  store i32 %113, ptr %154, align 8, !tbaa !47
  %155 = getelementptr inbounds %struct.eqn_d, ptr %150, i64 0, i32 1
  store i32 0, ptr %155, align 4, !tbaa !45
  store i32 1, ptr %9, align 4, !tbaa !59
  br label %156

156:                                              ; preds = %148, %146
  %157 = phi i64 [ 1, %148 ], [ 0, %146 ]
  %158 = icmp slt i32 %112, 134217727
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load ptr, ptr %13, align 8, !tbaa !60
  %161 = getelementptr inbounds %struct.eqn_d, ptr %160, i64 %157, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !42
  store i32 %112, ptr %162, align 4, !tbaa !44
  %163 = load i32, ptr %9, align 4, !tbaa !59
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.eqn_d, ptr %160, i64 %164, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !42
  %167 = getelementptr inbounds i32, ptr %166, i64 1
  store i32 -1, ptr %167, align 4, !tbaa !44
  %168 = load i32, ptr %9, align 4, !tbaa !59
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.eqn_d, ptr %160, i64 %169
  store i32 -1, ptr %170, align 8, !tbaa !46
  %171 = getelementptr inbounds %struct.eqn_d, ptr %160, i64 %169, i32 2
  store i32 %114, ptr %171, align 8, !tbaa !47
  %172 = getelementptr inbounds %struct.eqn_d, ptr %160, i64 %169, i32 1
  store i32 0, ptr %172, align 4, !tbaa !45
  %173 = add nsw i32 %168, 1
  store i32 %173, ptr %9, align 4, !tbaa !59
  br label %175

174:                                              ; preds = %129
  store i32 0, ptr %0, align 8, !tbaa !36
  br label %175

175:                                              ; preds = %159, %156, %174
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0) #23
  br label %1353

176:                                              ; preds = %128
  %177 = load ptr, ptr @original_problem, align 8, !tbaa !54
  %178 = icmp ne ptr %177, null
  %179 = icmp eq i32 %113, 0
  %180 = select i1 %178, i1 %179, i1 false
  %181 = icmp eq i32 %114, 0
  %182 = select i1 %180, i1 %181, i1 false
  %183 = load i32, ptr @conservative, align 4
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  %186 = icmp eq i32 %111, %112
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %187, label %188, label %1353

188:                                              ; preds = %176
  %189 = sub nsw i32 0, %111
  %190 = load ptr, ptr %14, align 8, !tbaa !57
  %191 = getelementptr inbounds %struct.eqn_d, ptr %190, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !42
  store i32 %189, ptr %192, align 4, !tbaa !44
  %193 = getelementptr inbounds i32, ptr %192, i64 1
  store i32 1, ptr %193, align 4, !tbaa !44
  store i32 1, ptr %12, align 8, !tbaa !56
  tail call fastcc void @adding_equality_constraint(ptr noundef nonnull %0, i32 noundef 0) #23
  br label %1353

194:                                              ; preds = %43
  %195 = load i8, ptr %10, align 1, !tbaa !120
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  store i8 1, ptr %10, align 1, !tbaa !120
  br i1 %3, label %198, label %200

198:                                              ; preds = %197
  %199 = load i32, ptr %11, align 4, !tbaa !69
  br label %200

200:                                              ; preds = %197, %198
  %201 = phi i32 [ %199, %198 ], [ 0, %197 ]
  tail call fastcc void @omega_free_eliminations(ptr noundef nonnull %0, i32 noundef %201) #23
  %202 = load i32, ptr %0, align 8, !tbaa !36
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %18, label %204

204:                                              ; preds = %200, %194
  %205 = tail call fastcc i32 @normalize_omega_problem(ptr noundef nonnull %0) #23
  switch i32 %205, label %207 [
    i32 0, label %1353
    i32 2, label %208
    i32 1, label %206
  ]

206:                                              ; preds = %204
  br label %208

207:                                              ; preds = %204
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3702, ptr noundef nonnull @.str.26) #24
  br label %208

208:                                              ; preds = %204, %207, %206
  %209 = phi i8 [ %17, %207 ], [ 0, %206 ], [ 1, %204 ]
  %210 = load i32, ptr %0, align 8, !tbaa !36
  %211 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %212 = icmp eq ptr %211, null
  br i1 %212, label %224, label %213

213:                                              ; preds = %208
  %214 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %215 = and i32 %214, 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %213
  %218 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 22, i64 1, ptr nonnull %211)
  %219 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %219, ptr noundef nonnull %0) #23
  %220 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %221 = tail call i32 @fputc(i32 10, ptr %220)
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %223 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 44, i64 1, ptr %222)
  br label %224

224:                                              ; preds = %217, %213, %208
  %225 = icmp eq i8 %209, 0
  br label %226

226:                                              ; preds = %1348, %224
  %227 = phi i8 [ %16, %224 ], [ %1349, %1348 ]
  %228 = phi i32 [ %210, %224 ], [ %1351, %1348 ]
  %229 = load i32, ptr %12, align 8, !tbaa !56
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef %1) #23
  br label %1353

233:                                              ; preds = %226
  br i1 %225, label %234, label %261

234:                                              ; preds = %233
  %235 = load i32, ptr %11, align 4, !tbaa !69
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store i32 0, ptr %9, align 4, !tbaa !59
  br label %258

238:                                              ; preds = %234
  %239 = load i32, ptr %9, align 4, !tbaa !59
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %238
  %242 = zext nneg i32 %239 to i64
  br label %243

243:                                              ; preds = %241, %254
  %244 = phi i64 [ %242, %241 ], [ %245, %254 ]
  %245 = add nsw i64 %244, -1
  %246 = load ptr, ptr %13, align 8, !tbaa !60
  %247 = getelementptr inbounds %struct.eqn_d, ptr %246, i64 %245
  %248 = load i32, ptr %247, align 8, !tbaa !46
  %249 = tail call i32 @llvm.abs.i32(i32 %248, i1 true)
  %250 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %249) #23, !range !113
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %243
  %253 = trunc i64 %245 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %253, i32 noundef %210) #23
  br label %254

254:                                              ; preds = %243, %252
  %255 = icmp ugt i64 %244, 1
  br i1 %255, label %243, label %256, !llvm.loop !202

256:                                              ; preds = %254
  %257 = load i32, ptr %11, align 4, !tbaa !69
  br label %258

258:                                              ; preds = %256, %238, %237
  %259 = phi i32 [ %257, %256 ], [ %235, %238 ], [ 0, %237 ]
  store i32 %259, ptr %0, align 8, !tbaa !36
  br i1 %3, label %260, label %1353

260:                                              ; preds = %258
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0) #23
  br label %1353

261:                                              ; preds = %233
  %262 = load i32, ptr %9, align 4, !tbaa !59
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  br i1 %3, label %265, label %1353

265:                                              ; preds = %264
  %266 = load i32, ptr %11, align 4, !tbaa !69
  store i32 %266, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0) #23
  br label %1353

267:                                              ; preds = %261
  br i1 %3, label %268, label %272

268:                                              ; preds = %267
  %269 = load i32, ptr %11, align 4, !tbaa !69
  %270 = icmp eq i32 %228, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0) #23
  br label %1353

272:                                              ; preds = %268, %267
  %273 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %274 = getelementptr inbounds %struct.param_info, ptr %273, i64 65, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !83
  %276 = add nsw i32 %275, -30
  %277 = icmp sgt i32 %262, %276
  br i1 %277, label %284, label %278

278:                                              ; preds = %272
  %279 = shl nsw i32 %228, 1
  %280 = add i32 %279, 4
  %281 = mul i32 %280, %228
  %282 = add nsw i32 %281, 10
  %283 = icmp sgt i32 %262, %282
  br i1 %283, label %284, label %311

284:                                              ; preds = %278, %272
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %286 = icmp eq ptr %285, null
  br i1 %286, label %293, label %287

287:                                              ; preds = %284
  %288 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %289 = and i32 %288, 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %285, ptr noundef nonnull @.str.104, i32 noundef %262, i32 noundef %228) #23
  br label %293

293:                                              ; preds = %291, %287, %284
  %294 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %0, i8 noundef zeroext 0) #23, !range !85
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %1353, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr %0, align 8, !tbaa !36
  %298 = load i32, ptr %12, align 8, !tbaa !56
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef %1) #23
  br label %1353

302:                                              ; preds = %296
  %303 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %304 = icmp eq ptr %303, null
  br i1 %304, label %311, label %305

305:                                              ; preds = %302
  %306 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %307 = and i32 %306, 8
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  %310 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 39, i64 1, ptr nonnull %303)
  br label %311

311:                                              ; preds = %302, %305, %309, %278
  %312 = phi i32 [ %297, %309 ], [ %297, %305 ], [ %297, %302 ], [ %228, %278 ]
  br i1 %3, label %313, label %315

313:                                              ; preds = %311
  %314 = load i32, ptr %11, align 4, !tbaa !69
  br label %315

315:                                              ; preds = %311, %313
  %316 = phi i32 [ %314, %313 ], [ 0, %311 ]
  %317 = icmp eq i32 %312, %316
  br i1 %317, label %470, label %318

318:                                              ; preds = %315
  %319 = sext i32 %312 to i64
  br label %320

320:                                              ; preds = %318, %459
  %321 = phi i64 [ %319, %318 ], [ %467, %459 ]
  %322 = phi i32 [ 0, %318 ], [ %466, %459 ]
  %323 = phi i32 [ 0, %318 ], [ %372, %459 ]
  %324 = phi i32 [ 0, %318 ], [ %465, %459 ]
  %325 = phi i32 [ 0, %318 ], [ %464, %459 ]
  %326 = phi i32 [ 0, %318 ], [ %463, %459 ]
  %327 = phi i32 [ 2147483647, %318 ], [ %462, %459 ]
  %328 = phi i8 [ 0, %318 ], [ %461, %459 ]
  %329 = phi i8 [ 0, %318 ], [ %460, %459 ]
  %330 = load i32, ptr %9, align 4, !tbaa !59
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %470

332:                                              ; preds = %320
  %333 = load ptr, ptr %13, align 8, !tbaa !60
  %334 = zext nneg i32 %330 to i64
  br label %335

335:                                              ; preds = %332, %368
  %336 = phi i64 [ %334, %332 ], [ %344, %368 ]
  %337 = phi i32 [ 0, %332 ], [ %375, %368 ]
  %338 = phi i32 [ 0, %332 ], [ %374, %368 ]
  %339 = phi i32 [ 0, %332 ], [ %373, %368 ]
  %340 = phi i32 [ %323, %332 ], [ %372, %368 ]
  %341 = phi i32 [ 0, %332 ], [ %371, %368 ]
  %342 = phi i32 [ -2, %332 ], [ %370, %368 ]
  %343 = phi i32 [ -2, %332 ], [ %369, %368 ]
  %344 = add nsw i64 %336, -1
  %345 = getelementptr inbounds %struct.eqn_d, ptr %333, i64 %344, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !42
  %347 = getelementptr inbounds i32, ptr %346, i64 %321
  %348 = load i32, ptr %347, align 4, !tbaa !44
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %335
  %351 = tail call i32 @llvm.smin.i32(i32 %337, i32 %348)
  %352 = add nsw i32 %341, 1
  %353 = icmp eq i32 %348, -1
  br i1 %353, label %368, label %354

354:                                              ; preds = %350
  %355 = icmp eq i32 %343, -2
  %356 = trunc i64 %344 to i32
  %357 = select i1 %355, i32 %356, i32 -1
  br label %368

358:                                              ; preds = %335
  %359 = icmp eq i32 %348, 0
  br i1 %359, label %368, label %360

360:                                              ; preds = %358
  %361 = tail call i32 @llvm.smax.i32(i32 %338, i32 %348)
  %362 = add nsw i32 %339, 1
  %363 = icmp eq i32 %348, 1
  %364 = trunc i64 %344 to i32
  br i1 %363, label %368, label %365

365:                                              ; preds = %360
  %366 = icmp eq i32 %342, -2
  %367 = select i1 %366, i32 %364, i32 -1
  br label %368

368:                                              ; preds = %365, %354, %350, %360, %358
  %369 = phi i32 [ %343, %350 ], [ %343, %360 ], [ %343, %358 ], [ %357, %354 ], [ %343, %365 ]
  %370 = phi i32 [ %342, %350 ], [ %342, %360 ], [ %342, %358 ], [ %342, %354 ], [ %367, %365 ]
  %371 = phi i32 [ %352, %350 ], [ %341, %360 ], [ %341, %358 ], [ %352, %354 ], [ %341, %365 ]
  %372 = phi i32 [ %340, %350 ], [ %364, %360 ], [ %340, %358 ], [ %340, %354 ], [ %364, %365 ]
  %373 = phi i32 [ %339, %350 ], [ %362, %360 ], [ %339, %358 ], [ %339, %354 ], [ %362, %365 ]
  %374 = phi i32 [ %338, %350 ], [ %361, %360 ], [ %338, %358 ], [ %338, %354 ], [ %361, %365 ]
  %375 = phi i32 [ %351, %350 ], [ %337, %360 ], [ %337, %358 ], [ %351, %354 ], [ %337, %365 ]
  %376 = icmp ugt i64 %336, 1
  br i1 %376, label %335, label %377, !llvm.loop !203

377:                                              ; preds = %368
  %378 = icmp eq i32 %373, 0
  %379 = icmp eq i32 %371, 0
  %380 = select i1 %378, i1 true, i1 %379
  br i1 %380, label %470, label %381

381:                                              ; preds = %377
  %382 = icmp sgt i32 %369, -1
  %383 = icmp sgt i32 %370, -1
  %384 = select i1 %382, i1 %383, i1 false
  br i1 %384, label %385, label %414

385:                                              ; preds = %381
  %386 = load ptr, ptr %13, align 8, !tbaa !60
  %387 = zext nneg i32 %370 to i64
  %388 = getelementptr inbounds %struct.eqn_d, ptr %386, i64 %387
  %389 = load i32, ptr %388, align 8, !tbaa !46
  %390 = zext nneg i32 %369 to i64
  %391 = getelementptr inbounds %struct.eqn_d, ptr %386, i64 %390
  %392 = load i32, ptr %391, align 8, !tbaa !46
  %393 = sub nsw i32 0, %392
  %394 = icmp eq i32 %389, %393
  br i1 %394, label %395, label %414

395:                                              ; preds = %385
  %396 = getelementptr inbounds %struct.eqn_d, ptr %386, i64 %387, i32 3
  %397 = load ptr, ptr %396, align 8, !tbaa !42
  %398 = getelementptr inbounds i32, ptr %397, i64 %321
  %399 = load i32, ptr %398, align 4, !tbaa !44
  %400 = getelementptr inbounds %struct.eqn_d, ptr %386, i64 %390, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !42
  %402 = getelementptr inbounds i32, ptr %401, i64 %321
  %403 = load i32, ptr %402, align 4, !tbaa !44
  %404 = load i32, ptr %401, align 4, !tbaa !44
  %405 = mul nsw i32 %404, %399
  %406 = load i32, ptr %397, align 4, !tbaa !44
  %407 = mul i32 %406, %403
  %408 = sub i32 %405, %407
  %409 = xor i32 %403, -1
  %410 = add nsw i32 %399, -1
  %411 = mul nsw i32 %410, %409
  %412 = icmp sge i32 %408, %411
  %413 = zext i1 %412 to i8
  br label %414

414:                                              ; preds = %395, %385, %381
  %415 = phi i8 [ %413, %395 ], [ 0, %385 ], [ 0, %381 ]
  %416 = icmp eq i32 %374, 1
  %417 = icmp eq i32 %375, -1
  %418 = select i1 %416, i1 true, i1 %417
  %419 = zext nneg i8 %415 to i32
  %420 = icmp ne i8 %415, 0
  %421 = select i1 %418, i1 true, i1 %420
  %422 = load i1, ptr @in_approximate_mode, align 1
  %423 = select i1 %421, i1 true, i1 %422
  %424 = trunc i64 %321 to i32
  br i1 %423, label %425, label %443

425:                                              ; preds = %414
  %426 = mul nsw i32 %373, %371
  %427 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %428 = icmp eq ptr %427, null
  br i1 %428, label %437, label %429

429:                                              ; preds = %425
  %430 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %431 = and i32 %430, 8
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %437, label %433

433:                                              ; preds = %429
  %434 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %424) #23
  %435 = zext i1 %422 to i32
  %436 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %427, ptr noundef nonnull @.str.106, ptr noundef nonnull %434, i32 noundef %371, i32 noundef %373, i32 noundef %375, i32 noundef %374, i32 noundef %419, i32 noundef %435) #23
  br label %437

437:                                              ; preds = %433, %429, %425
  %438 = icmp eq i8 %329, 0
  %439 = icmp slt i32 %426, %327
  %440 = select i1 %438, i1 true, i1 %439
  br i1 %440, label %441, label %459

441:                                              ; preds = %437
  %442 = icmp eq i32 %426, 1
  br i1 %442, label %473, label %459

443:                                              ; preds = %414
  %444 = icmp eq i8 %329, 0
  br i1 %444, label %445, label %459

445:                                              ; preds = %443
  %446 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %447 = icmp eq ptr %446, null
  br i1 %447, label %455, label %448

448:                                              ; preds = %445
  %449 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %450 = and i32 %449, 8
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %448
  %453 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %424) #23
  %454 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %446, ptr noundef nonnull @.str.107, ptr noundef nonnull %453, i32 noundef %371, i32 noundef %373, i32 noundef %375, i32 noundef %374) #23
  br label %455

455:                                              ; preds = %452, %448, %445
  %456 = sub nsw i32 %374, %375
  %457 = icmp sgt i32 %327, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  br label %459

459:                                              ; preds = %437, %443, %458, %455, %441
  %460 = phi i8 [ 1, %441 ], [ 1, %437 ], [ 0, %455 ], [ 0, %458 ], [ 1, %443 ]
  %461 = phi i8 [ %415, %441 ], [ %328, %437 ], [ %328, %455 ], [ %328, %458 ], [ %328, %443 ]
  %462 = phi i32 [ %426, %441 ], [ %327, %437 ], [ %327, %455 ], [ %456, %458 ], [ %327, %443 ]
  %463 = phi i32 [ %424, %441 ], [ %326, %437 ], [ %326, %455 ], [ %424, %458 ], [ %326, %443 ]
  %464 = phi i32 [ %372, %441 ], [ %325, %437 ], [ %325, %455 ], [ %372, %458 ], [ %325, %443 ]
  %465 = phi i32 [ %373, %441 ], [ %324, %437 ], [ %324, %455 ], [ %373, %458 ], [ %324, %443 ]
  %466 = phi i32 [ %375, %441 ], [ %322, %437 ], [ %322, %455 ], [ %375, %458 ], [ %322, %443 ]
  %467 = add nsw i64 %321, -1
  %468 = trunc i64 %467 to i32
  %469 = icmp eq i32 %316, %468
  br i1 %469, label %473, label %320, !llvm.loop !204

470:                                              ; preds = %320, %377, %315
  %471 = load i32, ptr %11, align 4, !tbaa !69
  tail call fastcc void @omega_free_eliminations(ptr noundef nonnull %0, i32 noundef %471) #23
  %472 = load i32, ptr %0, align 8, !tbaa !36
  br label %1348

473:                                              ; preds = %441, %459
  %474 = phi i32 [ %466, %459 ], [ %375, %441 ]
  %475 = phi i32 [ %465, %459 ], [ %373, %441 ]
  %476 = phi i32 [ %464, %459 ], [ %372, %441 ]
  %477 = phi i32 [ %463, %459 ], [ %424, %441 ]
  %478 = phi i8 [ %461, %459 ], [ %415, %441 ]
  %479 = phi i8 [ %460, %459 ], [ 1, %441 ]
  %480 = load i32, ptr %9, align 4, !tbaa !59
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %510

482:                                              ; preds = %473
  %483 = sext i32 %477 to i64
  %484 = sub nsw i32 0, %474
  %485 = xor i32 %474, -1
  %486 = zext nneg i32 %480 to i64
  br label %487

487:                                              ; preds = %482, %507
  %488 = phi i64 [ %486, %482 ], [ %490, %507 ]
  %489 = phi i32 [ 1, %482 ], [ %508, %507 ]
  %490 = add nsw i64 %488, -1
  %491 = load ptr, ptr %13, align 8, !tbaa !60
  %492 = getelementptr inbounds %struct.eqn_d, ptr %491, i64 %490, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !42
  %494 = getelementptr inbounds i32, ptr %493, i64 %483
  %495 = load i32, ptr %494, align 4, !tbaa !44
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %507

497:                                              ; preds = %487
  %498 = icmp eq i32 %495, %484
  br i1 %498, label %499, label %501

499:                                              ; preds = %497
  %500 = add nsw i32 %489, %485
  br label %507

501:                                              ; preds = %497
  %502 = add nsw i32 %495, -1
  %503 = tail call fastcc i32 @check_pos_mul(i32 noundef %502, i32 noundef %485) #23
  %504 = sdiv i32 %503, %484
  %505 = add i32 %489, 1
  %506 = add i32 %505, %504
  br label %507

507:                                              ; preds = %487, %501, %499
  %508 = phi i32 [ %500, %499 ], [ %506, %501 ], [ %489, %487 ]
  %509 = icmp ugt i64 %488, 1
  br i1 %509, label %487, label %510, !llvm.loop !205

510:                                              ; preds = %507, %473
  %511 = phi i32 [ 1, %473 ], [ %508, %507 ]
  %512 = icmp ne i8 %479, 0
  %513 = icmp ne i8 %227, 0
  %514 = select i1 %512, i1 true, i1 %513
  br i1 %514, label %517, label %515

515:                                              ; preds = %510
  %516 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %0, i8 noundef zeroext 0) #23, !range !85
  br label %1348

517:                                              ; preds = %510
  br i1 %512, label %520, label %518

518:                                              ; preds = %517
  %519 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %0, i8 noundef zeroext 0) #23, !range !85
  br label %999

520:                                              ; preds = %517
  %521 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %522 = icmp eq ptr %521, null
  br i1 %522, label %540, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %525 = and i32 %524, 8
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %540, label %527

527:                                              ; preds = %523
  %528 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %477) #23
  %529 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %521, ptr noundef nonnull @.str.109, ptr noundef nonnull %528, i32 noundef %477, i32 noundef %474, i32 noundef %475) #23
  %530 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %530, ptr noundef nonnull %0) #23
  %531 = icmp eq i8 %478, 0
  %532 = load ptr, ptr @dump_file, align 8, !tbaa !54
  br i1 %531, label %535, label %533

533:                                              ; preds = %527
  %534 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 28, i64 1, ptr %532)
  br label %537

535:                                              ; preds = %527
  %536 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 23, i64 1, ptr %532)
  br label %537

537:                                              ; preds = %535, %533
  %538 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %539 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %538, ptr noundef nonnull @.str.112, i32 noundef %511) #23
  br label %540

540:                                              ; preds = %537, %523, %520
  %541 = icmp sgt i32 %511, 0
  br i1 %541, label %543, label %542

542:                                              ; preds = %540
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 4015, ptr noundef nonnull @.str.26) #24
  br label %543

543:                                              ; preds = %542, %540
  %544 = icmp eq i32 %477, %312
  br i1 %544, label %616, label %545

545:                                              ; preds = %543
  %546 = load i32, ptr %0, align 8, !tbaa !36
  %547 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %548 = icmp eq ptr %547, null
  br i1 %548, label %556, label %549

549:                                              ; preds = %545
  %550 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %551 = and i32 %550, 8
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %556, label %553

553:                                              ; preds = %549
  %554 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %547, ptr noundef nonnull @.str.113, i32 noundef %477, i32 noundef %546) #23
  %555 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %555, ptr noundef nonnull %0) #23
  br label %556

556:                                              ; preds = %553, %549, %545
  %557 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %558 = load ptr, ptr %557, align 8, !tbaa !52
  %559 = sext i32 %477 to i64
  %560 = getelementptr inbounds i32, ptr %558, i64 %559
  %561 = sext i32 %546 to i64
  %562 = getelementptr inbounds i32, ptr %558, i64 %561
  tail call fastcc void @swap(ptr noundef %560, ptr noundef %562) #23
  %563 = load i32, ptr %9, align 4, !tbaa !59
  %564 = icmp sgt i32 %563, 0
  br i1 %564, label %565, label %584

565:                                              ; preds = %556
  %566 = load ptr, ptr %13, align 8, !tbaa !60
  %567 = zext nneg i32 %563 to i64
  br label %568

568:                                              ; preds = %565, %582
  %569 = phi i64 [ %567, %565 ], [ %570, %582 ]
  %570 = add nsw i64 %569, -1
  %571 = getelementptr inbounds %struct.eqn_d, ptr %566, i64 %570, i32 3
  %572 = load ptr, ptr %571, align 8, !tbaa !42
  %573 = getelementptr inbounds i32, ptr %572, i64 %559
  %574 = load i32, ptr %573, align 4, !tbaa !44
  %575 = getelementptr inbounds i32, ptr %572, i64 %561
  %576 = load i32, ptr %575, align 4, !tbaa !44
  %577 = icmp eq i32 %574, %576
  br i1 %577, label %582, label %578

578:                                              ; preds = %568
  %579 = getelementptr inbounds %struct.eqn_d, ptr %566, i64 %570, i32 1
  store i32 1, ptr %579, align 4, !tbaa !45
  %580 = load i32, ptr %573, align 4, !tbaa !44
  %581 = load i32, ptr %575, align 4, !tbaa !44
  store i32 %581, ptr %573, align 4, !tbaa !44
  store i32 %580, ptr %575, align 4, !tbaa !44
  br label %582

582:                                              ; preds = %568, %578
  %583 = icmp ugt i64 %569, 1
  br i1 %583, label %568, label %584, !llvm.loop !206

584:                                              ; preds = %582, %556
  %585 = load i32, ptr %8, align 8, !tbaa !62
  %586 = icmp sgt i32 %585, 0
  br i1 %586, label %587, label %604

587:                                              ; preds = %584
  %588 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %589 = load ptr, ptr %588, align 8, !tbaa !63
  %590 = zext nneg i32 %585 to i64
  br label %591

591:                                              ; preds = %587, %602
  %592 = phi i64 [ %590, %587 ], [ %593, %602 ]
  %593 = add nsw i64 %592, -1
  %594 = getelementptr inbounds %struct.eqn_d, ptr %589, i64 %593, i32 3
  %595 = load ptr, ptr %594, align 8, !tbaa !42
  %596 = getelementptr inbounds i32, ptr %595, i64 %559
  %597 = load i32, ptr %596, align 4, !tbaa !44
  %598 = getelementptr inbounds i32, ptr %595, i64 %561
  %599 = load i32, ptr %598, align 4, !tbaa !44
  %600 = icmp eq i32 %597, %599
  br i1 %600, label %602, label %601

601:                                              ; preds = %591
  store i32 %599, ptr %596, align 4, !tbaa !44
  store i32 %597, ptr %598, align 4, !tbaa !44
  br label %602

602:                                              ; preds = %591, %601
  %603 = icmp ugt i64 %592, 1
  br i1 %603, label %591, label %604, !llvm.loop !207

604:                                              ; preds = %602, %584
  %605 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %606 = icmp eq ptr %605, null
  br i1 %606, label %626, label %607

607:                                              ; preds = %604
  %608 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %609 = and i32 %608, 8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %626, label %611

611:                                              ; preds = %607
  %612 = tail call i64 @fwrite(ptr nonnull @.str.114, i64 19, i64 1, ptr nonnull %605)
  %613 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %613, ptr noundef nonnull %0) #23
  %614 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %615 = tail call i32 @fputc(i32 10, ptr %614)
  br label %626

616:                                              ; preds = %543
  %617 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %618 = icmp eq ptr %617, null
  br i1 %618, label %626, label %619

619:                                              ; preds = %616
  %620 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %621 = and i32 %620, 8
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %619
  %624 = tail call i64 @fwrite(ptr nonnull @.str.115, i64 15, i64 1, ptr nonnull %617)
  %625 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %625, ptr noundef nonnull %0) #23
  br label %626

626:                                              ; preds = %604, %607, %611, %616, %619, %623
  %627 = phi i32 [ %312, %623 ], [ %312, %619 ], [ %312, %616 ], [ %546, %611 ], [ %546, %607 ], [ %546, %604 ]
  %628 = load i32, ptr %0, align 8, !tbaa !36
  %629 = add nsw i32 %628, -1
  store i32 %629, ptr %0, align 8, !tbaa !36
  %630 = icmp eq i32 %629, 1
  br i1 %630, label %631, label %1029

631:                                              ; preds = %626
  %632 = load i32, ptr %9, align 4, !tbaa !59
  %633 = sext i32 %627 to i64
  %634 = icmp sgt i32 %632, 0
  br i1 %634, label %635, label %886

635:                                              ; preds = %631
  %636 = add nsw i32 %632, -1
  %637 = zext nneg i32 %636 to i64
  br label %638

638:                                              ; preds = %635, %879
  %639 = phi i64 [ %637, %635 ], [ %884, %879 ]
  %640 = phi i32 [ 0, %635 ], [ %883, %879 ]
  %641 = phi i32 [ 0, %635 ], [ %882, %879 ]
  %642 = phi i32 [ -134217727, %635 ], [ %881, %879 ]
  %643 = phi i32 [ 134217727, %635 ], [ %880, %879 ]
  %644 = load ptr, ptr %13, align 8, !tbaa !60
  %645 = getelementptr inbounds %struct.eqn_d, ptr %644, i64 %639
  %646 = getelementptr inbounds %struct.eqn_d, ptr %644, i64 %639, i32 3
  %647 = load ptr, ptr %646, align 8, !tbaa !42
  %648 = getelementptr inbounds i32, ptr %647, i64 %633
  %649 = load i32, ptr %648, align 4, !tbaa !44
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %713

651:                                              ; preds = %638
  %652 = getelementptr inbounds i32, ptr %647, i64 1
  %653 = load i32, ptr %652, align 4, !tbaa !44
  %654 = icmp eq i32 %653, 1
  %655 = load i32, ptr %647, align 4, !tbaa !44
  br i1 %654, label %656, label %685

656:                                              ; preds = %651
  %657 = sub nsw i32 0, %655
  %658 = icmp slt i32 %642, %657
  br i1 %658, label %664, label %659

659:                                              ; preds = %656
  %660 = icmp eq i32 %642, %657
  br i1 %660, label %661, label %667

661:                                              ; preds = %659
  %662 = tail call fastcc zeroext i8 @omega_eqn_is_red(ptr noundef nonnull %645, i32 noundef %1) #23, !range !113
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %661, %656
  %665 = getelementptr inbounds %struct.eqn_d, ptr %644, i64 %639, i32 2
  %666 = load i32, ptr %665, align 8, !tbaa !47
  br label %667

667:                                              ; preds = %664, %661, %659
  %668 = phi i32 [ %657, %664 ], [ %642, %661 ], [ %642, %659 ]
  %669 = phi i32 [ %666, %664 ], [ %640, %661 ], [ %640, %659 ]
  %670 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %671 = icmp eq ptr %670, null
  br i1 %671, label %879, label %672

672:                                              ; preds = %667
  %673 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %674 = and i32 %673, 8
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %879, label %676

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.eqn_d, ptr %644, i64 %639, i32 2
  %678 = load i32, ptr %677, align 8, !tbaa !47
  %679 = icmp eq i32 %678, 0
  %680 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef 1) #23
  br i1 %679, label %681, label %683

681:                                              ; preds = %676
  %682 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %670, ptr noundef nonnull @.str.116, ptr noundef nonnull %680, i32 noundef %657) #23
  br label %879

683:                                              ; preds = %676
  %684 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %670, ptr noundef nonnull @.str.117, ptr noundef nonnull %680, i32 noundef %657) #23
  br label %879

685:                                              ; preds = %651
  %686 = icmp slt i32 %655, %643
  br i1 %686, label %692, label %687

687:                                              ; preds = %685
  %688 = icmp eq i32 %655, %643
  br i1 %688, label %689, label %695

689:                                              ; preds = %687
  %690 = tail call fastcc zeroext i8 @omega_eqn_is_red(ptr noundef nonnull %645, i32 noundef %1) #23, !range !113
  %691 = icmp eq i8 %690, 0
  br i1 %691, label %692, label %695

692:                                              ; preds = %689, %685
  %693 = getelementptr inbounds %struct.eqn_d, ptr %644, i64 %639, i32 2
  %694 = load i32, ptr %693, align 8, !tbaa !47
  br label %695

695:                                              ; preds = %692, %689, %687
  %696 = phi i32 [ %655, %692 ], [ %643, %689 ], [ %643, %687 ]
  %697 = phi i32 [ %694, %692 ], [ %641, %689 ], [ %641, %687 ]
  %698 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %699 = icmp eq ptr %698, null
  br i1 %699, label %879, label %700

700:                                              ; preds = %695
  %701 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %702 = and i32 %701, 8
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %879, label %704

704:                                              ; preds = %700
  %705 = getelementptr inbounds %struct.eqn_d, ptr %644, i64 %639, i32 2
  %706 = load i32, ptr %705, align 8, !tbaa !47
  %707 = icmp eq i32 %706, 0
  %708 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef 1) #23
  br i1 %707, label %709, label %711

709:                                              ; preds = %704
  %710 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %698, ptr noundef nonnull @.str.118, ptr noundef nonnull %708, i32 noundef %655) #23
  br label %879

711:                                              ; preds = %704
  %712 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %698, ptr noundef nonnull @.str.119, ptr noundef nonnull %708, i32 noundef %655) #23
  br label %879

713:                                              ; preds = %638
  %714 = icmp sgt i32 %649, 0
  br i1 %714, label %715, label %879

715:                                              ; preds = %713, %872
  %716 = phi i64 [ %877, %872 ], [ %637, %713 ]
  %717 = phi i32 [ %876, %872 ], [ %640, %713 ]
  %718 = phi i32 [ %875, %872 ], [ %641, %713 ]
  %719 = phi i32 [ %874, %872 ], [ %642, %713 ]
  %720 = phi i32 [ %873, %872 ], [ %643, %713 ]
  %721 = load ptr, ptr %13, align 8, !tbaa !60
  %722 = getelementptr inbounds %struct.eqn_d, ptr %721, i64 %716
  %723 = getelementptr inbounds %struct.eqn_d, ptr %721, i64 %716, i32 3
  %724 = load ptr, ptr %723, align 8, !tbaa !42
  %725 = getelementptr inbounds i32, ptr %724, i64 %633
  %726 = load i32, ptr %725, align 4, !tbaa !44
  %727 = icmp slt i32 %726, 0
  br i1 %727, label %728, label %872

728:                                              ; preds = %715
  %729 = getelementptr inbounds %struct.eqn_d, ptr %721, i64 %639
  %730 = load i32, ptr %729, align 8, !tbaa !46
  %731 = load i32, ptr %722, align 8, !tbaa !46
  %732 = sub nsw i32 0, %731
  %733 = icmp eq i32 %730, %732
  br i1 %733, label %872, label %734

734:                                              ; preds = %728
  %735 = sub nsw i32 0, %726
  %736 = getelementptr inbounds i32, ptr %724, i64 1
  %737 = load i32, ptr %736, align 4, !tbaa !44
  %738 = mul nsw i32 %737, %649
  %739 = getelementptr inbounds %struct.eqn_d, ptr %721, i64 %639, i32 3
  %740 = load ptr, ptr %739, align 8, !tbaa !42
  %741 = getelementptr inbounds i32, ptr %740, i64 1
  %742 = load i32, ptr %741, align 4, !tbaa !44
  %743 = mul nsw i32 %742, %735
  %744 = add nsw i32 %743, %738
  %745 = load i32, ptr %724, align 4, !tbaa !44
  %746 = mul nsw i32 %745, %649
  %747 = load i32, ptr %740, align 4, !tbaa !44
  %748 = mul nsw i32 %747, %735
  %749 = add nsw i32 %748, %746
  %750 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %751 = icmp eq ptr %750, null
  br i1 %751, label %764, label %752

752:                                              ; preds = %734
  %753 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %754 = and i32 %753, 8
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %764, label %756

756:                                              ; preds = %752
  tail call fastcc void @omega_print_geq_extra(ptr noundef nonnull %750, ptr noundef nonnull %0, ptr noundef nonnull %722) #23
  %757 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %758 = tail call i32 @fputc(i32 10, ptr %757)
  %759 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %760 = load ptr, ptr %13, align 8, !tbaa !60
  %761 = getelementptr inbounds %struct.eqn_d, ptr %760, i64 %639
  tail call fastcc void @omega_print_geq_extra(ptr noundef %759, ptr noundef nonnull %0, ptr noundef %761) #23
  %762 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %763 = tail call i32 @fputc(i32 10, ptr %762)
  br label %764

764:                                              ; preds = %756, %752, %734
  %765 = icmp sgt i32 %744, 0
  br i1 %765, label %766, label %820

766:                                              ; preds = %764
  %767 = tail call fastcc i32 @int_div(i32 noundef %749, i32 noundef %744) #23
  %768 = sub nsw i32 0, %767
  %769 = icmp slt i32 %719, %768
  br i1 %769, label %770, label %772

770:                                              ; preds = %766
  %771 = load ptr, ptr %13, align 8, !tbaa !60
  br label %784

772:                                              ; preds = %766
  %773 = icmp eq i32 %719, %768
  br i1 %773, label %774, label %796

774:                                              ; preds = %772
  %775 = load ptr, ptr %13, align 8, !tbaa !60
  br i1 %3, label %776, label %784

776:                                              ; preds = %774
  %777 = getelementptr inbounds %struct.eqn_d, ptr %775, i64 %716, i32 2
  %778 = load i32, ptr %777, align 8, !tbaa !47
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %796

780:                                              ; preds = %776
  %781 = getelementptr inbounds %struct.eqn_d, ptr %775, i64 %639, i32 2
  %782 = load i32, ptr %781, align 8, !tbaa !47
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %796

784:                                              ; preds = %770, %780, %774
  %785 = phi ptr [ %771, %770 ], [ %775, %780 ], [ %775, %774 ]
  %786 = getelementptr inbounds %struct.eqn_d, ptr %785, i64 %716, i32 2
  %787 = load i32, ptr %786, align 8, !tbaa !47
  %788 = icmp eq i32 %787, 1
  br i1 %788, label %793, label %789

789:                                              ; preds = %784
  %790 = getelementptr inbounds %struct.eqn_d, ptr %785, i64 %639, i32 2
  %791 = load i32, ptr %790, align 8, !tbaa !47
  %792 = icmp eq i32 %791, 1
  br label %793

793:                                              ; preds = %789, %784
  %794 = phi i1 [ true, %784 ], [ %792, %789 ]
  %795 = zext i1 %794 to i32
  br label %796

796:                                              ; preds = %793, %780, %776, %772
  %797 = phi i32 [ %768, %793 ], [ %719, %780 ], [ %719, %776 ], [ %719, %772 ]
  %798 = phi i32 [ %795, %793 ], [ %717, %780 ], [ %717, %776 ], [ %717, %772 ]
  %799 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %800 = icmp eq ptr %799, null
  br i1 %800, label %872, label %801

801:                                              ; preds = %796
  %802 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %803 = and i32 %802, 8
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %872, label %805

805:                                              ; preds = %801
  %806 = load ptr, ptr %13, align 8, !tbaa !60
  %807 = getelementptr inbounds %struct.eqn_d, ptr %806, i64 %716, i32 2
  %808 = load i32, ptr %807, align 8, !tbaa !47
  %809 = icmp eq i32 %808, 1
  br i1 %809, label %814, label %810

810:                                              ; preds = %805
  %811 = getelementptr inbounds %struct.eqn_d, ptr %806, i64 %639, i32 2
  %812 = load i32, ptr %811, align 8, !tbaa !47
  %813 = icmp eq i32 %812, 1
  br i1 %813, label %814, label %817

814:                                              ; preds = %810, %805
  %815 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef 1) #23
  %816 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %799, ptr noundef nonnull @.str.120, ptr noundef nonnull %815, i32 noundef %768) #23
  br label %872

817:                                              ; preds = %810
  %818 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef 1) #23
  %819 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %799, ptr noundef nonnull @.str.121, ptr noundef nonnull %818, i32 noundef %768) #23
  br label %872

820:                                              ; preds = %764
  %821 = sub nsw i32 0, %744
  %822 = tail call fastcc i32 @int_div(i32 noundef %749, i32 noundef %821) #23
  %823 = icmp slt i32 %822, %720
  br i1 %823, label %835, label %824

824:                                              ; preds = %820
  %825 = icmp eq i32 %822, %720
  br i1 %825, label %826, label %848

826:                                              ; preds = %824
  %827 = load ptr, ptr %13, align 8, !tbaa !60
  %828 = getelementptr inbounds %struct.eqn_d, ptr %827, i64 %716, i32 2
  %829 = load i32, ptr %828, align 8, !tbaa !47
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %848

831:                                              ; preds = %826
  %832 = getelementptr inbounds %struct.eqn_d, ptr %827, i64 %639, i32 2
  %833 = load i32, ptr %832, align 8, !tbaa !47
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %840, label %848

835:                                              ; preds = %820
  %836 = load ptr, ptr %13, align 8, !tbaa !60
  %837 = getelementptr inbounds %struct.eqn_d, ptr %836, i64 %716, i32 2
  %838 = load i32, ptr %837, align 8, !tbaa !47
  %839 = icmp eq i32 %838, 1
  br i1 %839, label %845, label %840

840:                                              ; preds = %831, %835
  %841 = phi ptr [ %836, %835 ], [ %827, %831 ]
  %842 = getelementptr inbounds %struct.eqn_d, ptr %841, i64 %639, i32 2
  %843 = load i32, ptr %842, align 8, !tbaa !47
  %844 = icmp eq i32 %843, 1
  br label %845

845:                                              ; preds = %840, %835
  %846 = phi i1 [ true, %835 ], [ %844, %840 ]
  %847 = zext i1 %846 to i32
  br label %848

848:                                              ; preds = %845, %831, %826, %824
  %849 = phi i32 [ %822, %845 ], [ %720, %831 ], [ %720, %826 ], [ %720, %824 ]
  %850 = phi i32 [ %847, %845 ], [ %718, %831 ], [ %718, %826 ], [ %718, %824 ]
  %851 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %852 = icmp eq ptr %851, null
  br i1 %852, label %872, label %853

853:                                              ; preds = %848
  %854 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %855 = and i32 %854, 8
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %872, label %857

857:                                              ; preds = %853
  %858 = load ptr, ptr %13, align 8, !tbaa !60
  %859 = getelementptr inbounds %struct.eqn_d, ptr %858, i64 %716, i32 2
  %860 = load i32, ptr %859, align 8, !tbaa !47
  %861 = icmp eq i32 %860, 1
  br i1 %861, label %866, label %862

862:                                              ; preds = %857
  %863 = getelementptr inbounds %struct.eqn_d, ptr %858, i64 %639, i32 2
  %864 = load i32, ptr %863, align 8, !tbaa !47
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %866, label %869

866:                                              ; preds = %862, %857
  %867 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef 1) #23
  %868 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %851, ptr noundef nonnull @.str.122, ptr noundef nonnull %867, i32 noundef %822) #23
  br label %872

869:                                              ; preds = %862
  %870 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef 1) #23
  %871 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %851, ptr noundef nonnull @.str.123, ptr noundef nonnull %870, i32 noundef %822) #23
  br label %872

872:                                              ; preds = %814, %817, %801, %796, %866, %869, %853, %848, %715, %728
  %873 = phi i32 [ %720, %728 ], [ %720, %715 ], [ %720, %814 ], [ %720, %817 ], [ %720, %801 ], [ %720, %796 ], [ %849, %866 ], [ %849, %869 ], [ %849, %853 ], [ %849, %848 ]
  %874 = phi i32 [ %719, %728 ], [ %719, %715 ], [ %797, %814 ], [ %797, %817 ], [ %797, %801 ], [ %797, %796 ], [ %719, %866 ], [ %719, %869 ], [ %719, %853 ], [ %719, %848 ]
  %875 = phi i32 [ %718, %728 ], [ %718, %715 ], [ %718, %814 ], [ %718, %817 ], [ %718, %801 ], [ %718, %796 ], [ %850, %866 ], [ %850, %869 ], [ %850, %853 ], [ %850, %848 ]
  %876 = phi i32 [ %717, %728 ], [ %717, %715 ], [ %798, %814 ], [ %798, %817 ], [ %798, %801 ], [ %798, %796 ], [ %717, %866 ], [ %717, %869 ], [ %717, %853 ], [ %717, %848 ]
  %877 = add nsw i64 %716, -1
  %878 = icmp sgt i64 %716, 0
  br i1 %878, label %715, label %879, !llvm.loop !208

879:                                              ; preds = %872, %695, %700, %711, %709, %667, %672, %683, %681, %713
  %880 = phi i32 [ %643, %713 ], [ %643, %681 ], [ %643, %683 ], [ %643, %672 ], [ %643, %667 ], [ %696, %709 ], [ %696, %711 ], [ %696, %700 ], [ %696, %695 ], [ %873, %872 ]
  %881 = phi i32 [ %642, %713 ], [ %668, %681 ], [ %668, %683 ], [ %668, %672 ], [ %668, %667 ], [ %642, %709 ], [ %642, %711 ], [ %642, %700 ], [ %642, %695 ], [ %874, %872 ]
  %882 = phi i32 [ %641, %713 ], [ %641, %681 ], [ %641, %683 ], [ %641, %672 ], [ %641, %667 ], [ %697, %709 ], [ %697, %711 ], [ %697, %700 ], [ %697, %695 ], [ %875, %872 ]
  %883 = phi i32 [ %640, %713 ], [ %669, %681 ], [ %669, %683 ], [ %669, %672 ], [ %669, %667 ], [ %640, %709 ], [ %640, %711 ], [ %640, %700 ], [ %640, %695 ], [ %876, %872 ]
  %884 = add nsw i64 %639, -1
  %885 = icmp sgt i64 %639, 0
  br i1 %885, label %638, label %886, !llvm.loop !209

886:                                              ; preds = %879, %631
  %887 = phi i32 [ 134217727, %631 ], [ %880, %879 ]
  %888 = phi i32 [ -134217727, %631 ], [ %881, %879 ]
  %889 = phi i32 [ 0, %631 ], [ %882, %879 ]
  %890 = phi i32 [ 0, %631 ], [ %883, %879 ]
  store i32 0, ptr %9, align 4, !tbaa !59
  %891 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %892 = icmp eq ptr %891, null
  br i1 %892, label %910, label %893

893:                                              ; preds = %886
  %894 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %895 = and i32 %894, 8
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %910, label %897

897:                                              ; preds = %893
  %898 = icmp eq i32 %890, 1
  %899 = select i1 %898, i32 91, i32 32
  %900 = icmp eq i32 %889, 0
  %901 = select i1 %898, i1 %900, i1 false
  %902 = select i1 %901, i32 93, i32 32
  %903 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef 1) #23
  %904 = icmp eq i32 %890, 0
  %905 = icmp eq i32 %889, 1
  %906 = and i1 %905, %904
  %907 = select i1 %906, i32 91, i32 32
  %908 = select i1 %905, i32 93, i32 32
  %909 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %891, ptr noundef nonnull @.str.124, i32 noundef %899, i32 noundef %888, i32 noundef %902, ptr noundef nonnull %903, i32 noundef %907, i32 noundef %887, i32 noundef %908) #23
  br label %910

910:                                              ; preds = %897, %893, %886
  %911 = icmp sgt i32 %888, %887
  br i1 %911, label %1353, label %912

912:                                              ; preds = %910
  %913 = load i32, ptr %11, align 4, !tbaa !69
  %914 = icmp eq i32 %913, 1
  br i1 %914, label %915, label %968

915:                                              ; preds = %912
  %916 = icmp ne i32 %887, %888
  %917 = icmp eq i32 %889, 1
  %918 = select i1 %916, i1 true, i1 %917
  %919 = icmp eq i32 %890, 1
  %920 = select i1 %918, i1 true, i1 %919
  %921 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4
  %922 = icmp ne i32 %921, 0
  %923 = select i1 %920, i1 true, i1 %922
  br i1 %923, label %937, label %924

924:                                              ; preds = %915
  %925 = load i32, ptr %12, align 8, !tbaa !56
  %926 = add nsw i32 %925, 1
  store i32 %926, ptr %12, align 8, !tbaa !56
  %927 = load ptr, ptr %14, align 8, !tbaa !57
  %928 = getelementptr inbounds %struct.eqn_d, ptr %927, i64 0, i32 3
  %929 = load ptr, ptr %928, align 8, !tbaa !42
  %930 = getelementptr inbounds i32, ptr %929, i64 1
  store i32 -1, ptr %930, align 4, !tbaa !44
  store i32 %887, ptr %929, align 4, !tbaa !44
  br i1 %3, label %931, label %937

931:                                              ; preds = %924
  %932 = getelementptr inbounds %struct.eqn_d, ptr %927, i64 0, i32 2
  %933 = load i32, ptr %932, align 8, !tbaa !47
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %937

935:                                              ; preds = %931
  %936 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 3) #23
  br label %1353

937:                                              ; preds = %924, %931, %915
  %938 = icmp eq i32 %887, 134217727
  br i1 %938, label %948, label %939

939:                                              ; preds = %937
  %940 = load ptr, ptr %13, align 8, !tbaa !60
  %941 = getelementptr inbounds %struct.eqn_d, ptr %940, i64 0, i32 3
  %942 = load ptr, ptr %941, align 8, !tbaa !42
  %943 = getelementptr inbounds i32, ptr %942, i64 1
  store i32 -1, ptr %943, align 4, !tbaa !44
  store i32 %887, ptr %942, align 4, !tbaa !44
  %944 = getelementptr inbounds %struct.eqn_d, ptr %940, i64 0, i32 2
  store i32 %889, ptr %944, align 8, !tbaa !47
  store i32 -1, ptr %940, align 8, !tbaa !46
  %945 = getelementptr inbounds %struct.eqn_d, ptr %940, i64 0, i32 1
  store i32 0, ptr %945, align 4, !tbaa !45
  %946 = load i32, ptr %9, align 4, !tbaa !59
  %947 = add nsw i32 %946, 1
  store i32 %947, ptr %9, align 4, !tbaa !59
  br label %948

948:                                              ; preds = %939, %937
  %949 = icmp eq i32 %888, -134217727
  br i1 %949, label %968, label %950

950:                                              ; preds = %948
  %951 = load ptr, ptr %13, align 8, !tbaa !60
  %952 = load i32, ptr %9, align 4, !tbaa !59
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds %struct.eqn_d, ptr %951, i64 %953, i32 3
  %955 = load ptr, ptr %954, align 8, !tbaa !42
  %956 = getelementptr inbounds i32, ptr %955, i64 1
  store i32 1, ptr %956, align 4, !tbaa !44
  %957 = sub nsw i32 0, %888
  %958 = load i32, ptr %9, align 4, !tbaa !59
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds %struct.eqn_d, ptr %951, i64 %959, i32 3
  %961 = load ptr, ptr %960, align 8, !tbaa !42
  store i32 %957, ptr %961, align 4, !tbaa !44
  %962 = load i32, ptr %9, align 4, !tbaa !59
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds %struct.eqn_d, ptr %951, i64 %963, i32 2
  store i32 %890, ptr %964, align 8, !tbaa !47
  %965 = getelementptr inbounds %struct.eqn_d, ptr %951, i64 %963
  store i32 1, ptr %965, align 8, !tbaa !46
  %966 = getelementptr inbounds %struct.eqn_d, ptr %951, i64 %963, i32 1
  store i32 0, ptr %966, align 4, !tbaa !45
  %967 = add nsw i32 %962, 1
  store i32 %967, ptr %9, align 4, !tbaa !59
  br label %968

968:                                              ; preds = %948, %950, %912
  br i1 %3, label %969, label %970

969:                                              ; preds = %968
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0) #23
  br label %1353

970:                                              ; preds = %968
  %971 = load i32, ptr @conservative, align 4, !tbaa !44
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %1353

973:                                              ; preds = %970
  %974 = load ptr, ptr @original_problem, align 8, !tbaa !54
  %975 = icmp ne ptr %974, null
  %976 = icmp eq i32 %888, %887
  %977 = select i1 %975, i1 %976, i1 false
  br i1 %977, label %978, label %1353

978:                                              ; preds = %973
  %979 = load i32, ptr %974, align 8, !tbaa !36
  %980 = icmp sgt i32 %979, -1
  br i1 %980, label %981, label %1001

981:                                              ; preds = %978
  %982 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %983 = getelementptr inbounds %struct.omega_pb_d, ptr %974, i64 0, i32 8
  %984 = load ptr, ptr %983, align 8, !tbaa !52
  %985 = load ptr, ptr %982, align 8, !tbaa !52
  %986 = getelementptr inbounds i32, ptr %985, i64 1
  %987 = load i32, ptr %986, align 4, !tbaa !44
  br label %988

988:                                              ; preds = %981, %994
  %989 = phi i32 [ %979, %981 ], [ %995, %994 ]
  %990 = zext nneg i32 %989 to i64
  %991 = getelementptr inbounds i32, ptr %984, i64 %990
  %992 = load i32, ptr %991, align 4, !tbaa !44
  %993 = icmp eq i32 %992, %987
  br i1 %993, label %997, label %994

994:                                              ; preds = %988
  %995 = add nsw i32 %989, -1
  %996 = icmp sgt i32 %989, 0
  br i1 %996, label %988, label %1004, !llvm.loop !210

997:                                              ; preds = %988
  %998 = icmp eq i32 %989, 0
  br i1 %998, label %999, label %1001

999:                                              ; preds = %1348, %997, %518
  %1000 = phi i8 [ 1, %518 ], [ 0, %997 ], [ %1349, %1348 ]
  br label %15

1001:                                             ; preds = %978, %997
  %1002 = phi i32 [ %989, %997 ], [ %979, %978 ]
  %1003 = sext i32 %1002 to i64
  br label %1004

1004:                                             ; preds = %994, %1001
  %1005 = phi i64 [ %1003, %1001 ], [ -1, %994 ]
  %1006 = getelementptr inbounds %struct.omega_pb_d, ptr %974, i64 0, i32 2
  %1007 = load i32, ptr %1006, align 8, !tbaa !56
  %1008 = add nsw i32 %1007, 1
  store i32 %1008, ptr %1006, align 8, !tbaa !56
  %1009 = getelementptr inbounds %struct.omega_pb_d, ptr %974, i64 0, i32 11
  %1010 = load ptr, ptr %1009, align 8, !tbaa !57
  %1011 = sext i32 %1007 to i64
  %1012 = getelementptr inbounds %struct.eqn_d, ptr %1010, i64 %1011
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %1012, i32 noundef %979) #23
  %1013 = load ptr, ptr @original_problem, align 8, !tbaa !54
  %1014 = getelementptr inbounds %struct.omega_pb_d, ptr %1013, i64 0, i32 11
  %1015 = load ptr, ptr %1014, align 8, !tbaa !57
  %1016 = getelementptr inbounds %struct.eqn_d, ptr %1015, i64 %1011, i32 3
  %1017 = load ptr, ptr %1016, align 8, !tbaa !42
  %1018 = getelementptr inbounds i32, ptr %1017, i64 %1005
  store i32 -1, ptr %1018, align 4, !tbaa !44
  store i32 %887, ptr %1017, align 4, !tbaa !44
  %1019 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1353, label %1021

1021:                                             ; preds = %1004
  %1022 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1023 = and i32 %1022, 8
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1353, label %1025

1025:                                             ; preds = %1021
  %1026 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1019, ptr noundef nonnull @.str.125, i32 noundef %1007) #23
  %1027 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1028 = load ptr, ptr @original_problem, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %1027, ptr noundef %1028) #23
  br label %1353

1029:                                             ; preds = %626
  %1030 = icmp eq i32 %475, 1
  br i1 %1030, label %1031, label %1120

1031:                                             ; preds = %1029
  %1032 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef 1) #23
  %1033 = load ptr, ptr %13, align 8, !tbaa !60
  %1034 = zext nneg i32 %476 to i64
  %1035 = getelementptr inbounds %struct.eqn_d, ptr %1033, i64 %1034, i32 3
  %1036 = load ptr, ptr %1035, align 8, !tbaa !42
  %1037 = sext i32 %627 to i64
  %1038 = getelementptr inbounds i32, ptr %1036, i64 %1037
  %1039 = load i32, ptr %1038, align 4, !tbaa !44
  %1040 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1041 = icmp eq ptr %1040, null
  br i1 %1041, label %1049, label %1042

1042:                                             ; preds = %1031
  %1043 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1044 = and i32 %1043, 8
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1049, label %1046

1046:                                             ; preds = %1042
  %1047 = tail call i64 @fwrite(ptr nonnull @.str.126, i64 23, i64 1, ptr nonnull %1040)
  %1048 = load ptr, ptr %13, align 8, !tbaa !60
  br label %1049

1049:                                             ; preds = %1046, %1042, %1031
  %1050 = phi ptr [ %1048, %1046 ], [ %1033, %1042 ], [ %1033, %1031 ]
  %1051 = getelementptr inbounds %struct.eqn_d, ptr %1050, i64 %1034
  tail call fastcc void @omega_copy_eqn(ptr noundef %1032, ptr noundef %1051, i32 noundef %628) #23
  tail call fastcc void @omega_delete_geq_extra(ptr noundef nonnull %0, i32 noundef %476, i32 noundef %628) #23
  %1052 = load i32, ptr %9, align 4, !tbaa !59
  %1053 = icmp sgt i32 %1052, 0
  br i1 %1053, label %1054, label %1118

1054:                                             ; preds = %1049
  %1055 = getelementptr inbounds %struct.eqn_d, ptr %1032, i64 0, i32 2
  %1056 = icmp sgt i32 %628, 0
  %1057 = getelementptr inbounds %struct.eqn_d, ptr %1032, i64 0, i32 3
  %1058 = zext nneg i32 %1052 to i64
  %1059 = zext nneg i32 %628 to i64
  br label %1060

1060:                                             ; preds = %1054, %1115
  %1061 = phi i64 [ %1058, %1054 ], [ %1063, %1115 ]
  %1062 = phi i8 [ 1, %1054 ], [ %1116, %1115 ]
  %1063 = add nsw i64 %1061, -1
  %1064 = load ptr, ptr %13, align 8, !tbaa !60
  %1065 = getelementptr inbounds %struct.eqn_d, ptr %1064, i64 %1063, i32 3
  %1066 = load ptr, ptr %1065, align 8, !tbaa !42
  %1067 = getelementptr inbounds i32, ptr %1066, i64 %1037
  %1068 = load i32, ptr %1067, align 4, !tbaa !44
  %1069 = icmp slt i32 %1068, 0
  br i1 %1069, label %1070, label %1115

1070:                                             ; preds = %1060
  %1071 = getelementptr inbounds %struct.eqn_d, ptr %1064, i64 %1063
  %1072 = load i32, ptr %1032, align 8, !tbaa !46
  %1073 = load i32, ptr %1071, align 8, !tbaa !46
  %1074 = sub nsw i32 0, %1073
  %1075 = icmp eq i32 %1072, %1074
  br i1 %1075, label %1076, label %1078

1076:                                             ; preds = %1070
  %1077 = trunc i64 %1063 to i32
  tail call fastcc void @omega_delete_geq_extra(ptr noundef nonnull %0, i32 noundef %1077, i32 noundef %628) #23
  br label %1115

1078:                                             ; preds = %1070
  %1079 = sub nsw i32 0, %1068
  %1080 = getelementptr inbounds %struct.eqn_d, ptr %1064, i64 %1063, i32 1
  store i32 1, ptr %1080, align 4, !tbaa !45
  %1081 = load i32, ptr %1055, align 8, !tbaa !47
  %1082 = icmp eq i32 %1081, 1
  br i1 %1082, label %1083, label %1085

1083:                                             ; preds = %1078
  %1084 = getelementptr inbounds %struct.eqn_d, ptr %1064, i64 %1063, i32 2
  store i32 1, ptr %1084, align 8, !tbaa !47
  br label %1085

1085:                                             ; preds = %1083, %1078
  br i1 %1056, label %1086, label %1103

1086:                                             ; preds = %1085, %1086
  %1087 = phi ptr [ %1099, %1086 ], [ %1066, %1085 ]
  %1088 = phi i64 [ %1101, %1086 ], [ 0, %1085 ]
  %1089 = getelementptr inbounds i32, ptr %1087, i64 %1088
  %1090 = load i32, ptr %1089, align 4, !tbaa !44
  %1091 = tail call fastcc i32 @check_mul(i32 noundef %1090, i32 noundef %1039) #23
  %1092 = load ptr, ptr %1057, align 8, !tbaa !42
  %1093 = getelementptr inbounds i32, ptr %1092, i64 %1088
  %1094 = load i32, ptr %1093, align 4, !tbaa !44
  %1095 = tail call fastcc i32 @check_mul(i32 noundef %1094, i32 noundef %1079) #23
  %1096 = add nsw i32 %1095, %1091
  %1097 = load ptr, ptr %13, align 8, !tbaa !60
  %1098 = getelementptr inbounds %struct.eqn_d, ptr %1097, i64 %1063, i32 3
  %1099 = load ptr, ptr %1098, align 8, !tbaa !42
  %1100 = getelementptr inbounds i32, ptr %1099, i64 %1088
  store i32 %1096, ptr %1100, align 4, !tbaa !44
  %1101 = add nuw nsw i64 %1088, 1
  %1102 = icmp eq i64 %1101, %1059
  br i1 %1102, label %1103, label %1086, !llvm.loop !211

1103:                                             ; preds = %1086, %1085
  %1104 = phi ptr [ %1064, %1085 ], [ %1097, %1086 ]
  %1105 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1115, label %1107

1107:                                             ; preds = %1103
  %1108 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1109 = and i32 %1108, 8
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1115, label %1111

1111:                                             ; preds = %1107
  %1112 = getelementptr inbounds %struct.eqn_d, ptr %1104, i64 %1063
  tail call fastcc void @omega_print_geq(ptr noundef nonnull %1105, ptr noundef nonnull %0, ptr noundef %1112) #23
  %1113 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1114 = tail call i32 @fputc(i32 10, ptr %1113)
  br label %1115

1115:                                             ; preds = %1103, %1107, %1111, %1060, %1076
  %1116 = phi i8 [ %1062, %1076 ], [ %1062, %1060 ], [ 0, %1111 ], [ 0, %1107 ], [ 0, %1103 ]
  %1117 = icmp sgt i64 %1061, 1
  br i1 %1117, label %1060, label %1118, !llvm.loop !212

1118:                                             ; preds = %1115, %1049
  %1119 = phi i8 [ 1, %1049 ], [ %1116, %1115 ]
  tail call fastcc void @omega_free_eqns(ptr noundef %1032) #23
  br label %1348

1120:                                             ; preds = %1029
  %1121 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %1122 = getelementptr inbounds %struct.param_info, ptr %1121, i64 65, i32 1
  %1123 = load i32, ptr %1122, align 8, !tbaa !83
  %1124 = sext i32 %1123 to i64
  %1125 = shl nsw i64 %1124, 2
  %1126 = tail call ptr @xmalloc(i64 noundef %1125) #24
  %1127 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %1128 = getelementptr inbounds %struct.param_info, ptr %1127, i64 65, i32 1
  %1129 = load i32, ptr %1128, align 8, !tbaa !83
  %1130 = sext i32 %1129 to i64
  %1131 = tail call ptr @xmalloc(i64 noundef %1130) #24
  %1132 = load i32, ptr %9, align 4, !tbaa !59
  %1133 = add i32 %1132, -1
  %1134 = add nsw i32 %475, -1
  %1135 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1143, label %1137

1137:                                             ; preds = %1120
  %1138 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1139 = and i32 %1138, 8
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1143, label %1141

1141:                                             ; preds = %1137
  %1142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1135, ptr noundef nonnull @.str.127, i32 noundef %1134) #23
  br label %1143

1143:                                             ; preds = %1141, %1137, %1120
  %1144 = icmp sgt i32 %1132, 0
  br i1 %1144, label %1145, label %1313

1145:                                             ; preds = %1143
  %1146 = sext i32 %627 to i64
  %1147 = icmp sgt i32 %628, 0
  %1148 = sext i32 %628 to i64
  %1149 = zext i32 %629 to i64
  %1150 = zext nneg i32 %1133 to i64
  br label %1151

1151:                                             ; preds = %1145, %1307
  %1152 = phi i64 [ %1150, %1145 ], [ %1311, %1307 ]
  %1153 = phi i8 [ 1, %1145 ], [ %1310, %1307 ]
  %1154 = phi i32 [ 0, %1145 ], [ %1309, %1307 ]
  %1155 = phi i32 [ %1134, %1145 ], [ %1308, %1307 ]
  %1156 = load ptr, ptr %13, align 8, !tbaa !60
  %1157 = getelementptr inbounds %struct.eqn_d, ptr %1156, i64 %1152, i32 3
  %1158 = load ptr, ptr %1157, align 8, !tbaa !42
  %1159 = getelementptr inbounds i32, ptr %1158, i64 %1146
  %1160 = load i32, ptr %1159, align 4, !tbaa !44
  %1161 = icmp sgt i32 %1160, 0
  br i1 %1161, label %1162, label %1307

1162:                                             ; preds = %1151
  %1163 = icmp eq i32 %1155, 0
  %1164 = trunc i64 %1152 to i32
  br label %1165

1165:                                             ; preds = %1162, %1288
  %1166 = phi i64 [ %1150, %1162 ], [ %1291, %1288 ]
  %1167 = phi i8 [ %1153, %1162 ], [ %1290, %1288 ]
  %1168 = phi i32 [ %1154, %1162 ], [ %1289, %1288 ]
  %1169 = load ptr, ptr %13, align 8, !tbaa !60
  %1170 = getelementptr inbounds %struct.eqn_d, ptr %1169, i64 %1166, i32 3
  %1171 = load ptr, ptr %1170, align 8, !tbaa !42
  %1172 = getelementptr inbounds i32, ptr %1171, i64 %1146
  %1173 = load i32, ptr %1172, align 4, !tbaa !44
  %1174 = icmp slt i32 %1173, 0
  br i1 %1174, label %1175, label %1288

1175:                                             ; preds = %1165
  %1176 = getelementptr inbounds %struct.eqn_d, ptr %1169, i64 %1166
  %1177 = getelementptr inbounds %struct.eqn_d, ptr %1169, i64 %1152
  %1178 = load i32, ptr %1177, align 8, !tbaa !46
  %1179 = load i32, ptr %1176, align 8, !tbaa !46
  %1180 = sub nsw i32 0, %1179
  %1181 = icmp eq i32 %1178, %1180
  br i1 %1181, label %1272, label %1182

1182:                                             ; preds = %1175
  %1183 = sub nsw i32 0, %1173
  %1184 = icmp eq i32 %1168, 0
  br i1 %1184, label %1185, label %1188

1185:                                             ; preds = %1182
  %1186 = load i32, ptr %9, align 4, !tbaa !59
  %1187 = add nsw i32 %1186, 1
  store i32 %1187, ptr %9, align 4, !tbaa !59
  br label %1193

1188:                                             ; preds = %1182
  %1189 = add nsw i32 %1168, -1
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds i32, ptr %1126, i64 %1190
  %1192 = load i32, ptr %1191, align 4, !tbaa !44
  br label %1193

1193:                                             ; preds = %1188, %1185
  %1194 = phi i32 [ %1186, %1185 ], [ %1192, %1188 ]
  %1195 = phi i32 [ 0, %1185 ], [ %1189, %1188 ]
  %1196 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %1197 = getelementptr inbounds %struct.param_info, ptr %1196, i64 65, i32 1
  %1198 = load i32, ptr %1197, align 8, !tbaa !83
  %1199 = icmp slt i32 %1194, %1198
  br i1 %1199, label %1201, label %1200

1200:                                             ; preds = %1193
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 4390, ptr noundef nonnull @.str.26) #24
  br label %1201

1201:                                             ; preds = %1193, %1200
  %1202 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1203 = icmp eq ptr %1202, null
  br i1 %1203, label %1221, label %1204

1204:                                             ; preds = %1201
  %1205 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1206 = and i32 %1205, 8
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1221, label %1208

1208:                                             ; preds = %1204
  %1209 = trunc i64 %1166 to i32
  %1210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1202, ptr noundef nonnull @.str.128, i32 noundef %1164, i32 noundef %1209, i32 noundef %1194) #23
  %1211 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1212 = load ptr, ptr %13, align 8, !tbaa !60
  %1213 = getelementptr inbounds %struct.eqn_d, ptr %1212, i64 %1152
  tail call fastcc void @omega_print_geq_extra(ptr noundef %1211, ptr noundef nonnull %0, ptr noundef %1213) #23
  %1214 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1215 = tail call i32 @fputc(i32 10, ptr %1214)
  %1216 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1217 = load ptr, ptr %13, align 8, !tbaa !60
  %1218 = getelementptr inbounds %struct.eqn_d, ptr %1217, i64 %1166
  tail call fastcc void @omega_print_geq_extra(ptr noundef %1216, ptr noundef nonnull %0, ptr noundef %1218) #23
  %1219 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1220 = tail call i32 @fputc(i32 10, ptr %1219)
  br label %1221

1221:                                             ; preds = %1208, %1204, %1201
  %1222 = load ptr, ptr %13, align 8, !tbaa !60
  %1223 = sext i32 %1194 to i64
  br i1 %1147, label %1224, label %1245

1224:                                             ; preds = %1221, %1224
  %1225 = phi ptr [ %1239, %1224 ], [ %1222, %1221 ]
  %1226 = phi i64 [ %1243, %1224 ], [ %1149, %1221 ]
  %1227 = getelementptr inbounds %struct.eqn_d, ptr %1225, i64 %1166, i32 3
  %1228 = load ptr, ptr %1227, align 8, !tbaa !42
  %1229 = getelementptr inbounds i32, ptr %1228, i64 %1226
  %1230 = load i32, ptr %1229, align 4, !tbaa !44
  %1231 = tail call fastcc i32 @check_mul(i32 noundef %1230, i32 noundef %1160) #23
  %1232 = load ptr, ptr %13, align 8, !tbaa !60
  %1233 = getelementptr inbounds %struct.eqn_d, ptr %1232, i64 %1152, i32 3
  %1234 = load ptr, ptr %1233, align 8, !tbaa !42
  %1235 = getelementptr inbounds i32, ptr %1234, i64 %1226
  %1236 = load i32, ptr %1235, align 4, !tbaa !44
  %1237 = tail call fastcc i32 @check_mul(i32 noundef %1236, i32 noundef %1183) #23
  %1238 = add nsw i32 %1237, %1231
  %1239 = load ptr, ptr %13, align 8, !tbaa !60
  %1240 = getelementptr inbounds %struct.eqn_d, ptr %1239, i64 %1223, i32 3
  %1241 = load ptr, ptr %1240, align 8, !tbaa !42
  %1242 = getelementptr inbounds i32, ptr %1241, i64 %1226
  store i32 %1238, ptr %1242, align 4, !tbaa !44
  %1243 = add nsw i64 %1226, -1
  %1244 = icmp sgt i64 %1226, 0
  br i1 %1244, label %1224, label %1245, !llvm.loop !213

1245:                                             ; preds = %1224, %1221
  %1246 = phi ptr [ %1222, %1221 ], [ %1239, %1224 ]
  %1247 = getelementptr inbounds %struct.eqn_d, ptr %1246, i64 %1223, i32 3
  %1248 = load ptr, ptr %1247, align 8, !tbaa !42
  %1249 = getelementptr inbounds i32, ptr %1248, i64 %1148
  store i32 0, ptr %1249, align 4, !tbaa !44
  %1250 = getelementptr inbounds %struct.eqn_d, ptr %1246, i64 %1223, i32 1
  store i32 1, ptr %1250, align 4, !tbaa !45
  %1251 = getelementptr inbounds %struct.eqn_d, ptr %1246, i64 %1166, i32 2
  %1252 = load i32, ptr %1251, align 8, !tbaa !47
  %1253 = icmp eq i32 %1252, 1
  br i1 %1253, label %1259, label %1254

1254:                                             ; preds = %1245
  %1255 = getelementptr inbounds %struct.eqn_d, ptr %1246, i64 %1152, i32 2
  %1256 = load i32, ptr %1255, align 8, !tbaa !47
  %1257 = icmp eq i32 %1256, 1
  %1258 = zext i1 %1257 to i32
  br label %1259

1259:                                             ; preds = %1254, %1245
  %1260 = phi i32 [ 1, %1245 ], [ %1258, %1254 ]
  %1261 = getelementptr inbounds %struct.eqn_d, ptr %1246, i64 %1223, i32 2
  store i32 %1260, ptr %1261, align 8, !tbaa !47
  %1262 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1263 = icmp eq ptr %1262, null
  br i1 %1263, label %1272, label %1264

1264:                                             ; preds = %1259
  %1265 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1266 = and i32 %1265, 8
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1272, label %1268

1268:                                             ; preds = %1264
  %1269 = getelementptr inbounds %struct.eqn_d, ptr %1246, i64 %1223
  tail call fastcc void @omega_print_geq(ptr noundef nonnull %1262, ptr noundef nonnull %0, ptr noundef %1269) #23
  %1270 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1271 = tail call i32 @fputc(i32 10, ptr %1270)
  br label %1272

1272:                                             ; preds = %1259, %1264, %1268, %1175
  %1273 = phi i32 [ %1168, %1175 ], [ %1195, %1268 ], [ %1195, %1264 ], [ %1195, %1259 ]
  %1274 = phi i8 [ %1167, %1175 ], [ 0, %1268 ], [ 0, %1264 ], [ 0, %1259 ]
  br i1 %1163, label %1275, label %1288

1275:                                             ; preds = %1272
  %1276 = add nsw i32 %1273, 1
  %1277 = sext i32 %1273 to i64
  %1278 = getelementptr inbounds i32, ptr %1126, i64 %1277
  %1279 = trunc i64 %1166 to i32
  store i32 %1279, ptr %1278, align 4, !tbaa !44
  %1280 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1281 = icmp eq ptr %1280, null
  br i1 %1281, label %1288, label %1282

1282:                                             ; preds = %1275
  %1283 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1284 = and i32 %1283, 8
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1288, label %1286

1286:                                             ; preds = %1282
  %1287 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1280, ptr noundef nonnull @.str.129, i32 noundef %1279) #23
  br label %1288

1288:                                             ; preds = %1165, %1275, %1282, %1286, %1272
  %1289 = phi i32 [ %1276, %1286 ], [ %1276, %1282 ], [ %1276, %1275 ], [ %1273, %1272 ], [ %1168, %1165 ]
  %1290 = phi i8 [ %1274, %1286 ], [ %1274, %1282 ], [ %1274, %1275 ], [ %1274, %1272 ], [ %1167, %1165 ]
  %1291 = add nsw i64 %1166, -1
  %1292 = icmp sgt i64 %1166, 0
  br i1 %1292, label %1165, label %1293, !llvm.loop !214

1293:                                             ; preds = %1288
  %1294 = add nsw i32 %1155, -1
  %1295 = add nsw i32 %1289, 1
  %1296 = sext i32 %1289 to i64
  %1297 = getelementptr inbounds i32, ptr %1126, i64 %1296
  %1298 = trunc i64 %1152 to i32
  store i32 %1298, ptr %1297, align 4, !tbaa !44
  %1299 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1307, label %1301

1301:                                             ; preds = %1293
  %1302 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %1303 = and i32 %1302, 8
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1307, label %1305

1305:                                             ; preds = %1301
  %1306 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1299, ptr noundef nonnull @.str.129, i32 noundef %1298) #23
  br label %1307

1307:                                             ; preds = %1293, %1301, %1305, %1151
  %1308 = phi i32 [ %1155, %1151 ], [ %1294, %1305 ], [ %1294, %1301 ], [ %1294, %1293 ]
  %1309 = phi i32 [ %1154, %1151 ], [ %1295, %1305 ], [ %1295, %1301 ], [ %1295, %1293 ]
  %1310 = phi i8 [ %1153, %1151 ], [ %1290, %1305 ], [ %1290, %1301 ], [ %1290, %1293 ]
  %1311 = add nsw i64 %1152, -1
  %1312 = icmp sgt i64 %1152, 0
  br i1 %1312, label %1151, label %1313, !llvm.loop !215

1313:                                             ; preds = %1307, %1143
  %1314 = phi i32 [ 0, %1143 ], [ %1309, %1307 ]
  %1315 = phi i8 [ 1, %1143 ], [ %1310, %1307 ]
  %1316 = load i32, ptr %9, align 4, !tbaa !59
  %1317 = icmp sgt i32 %1316, 0
  br i1 %1317, label %1318, label %1320

1318:                                             ; preds = %1313
  %1319 = zext nneg i32 %1316 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1131, i8 0, i64 %1319, i1 false), !tbaa !87
  br label %1320

1320:                                             ; preds = %1318, %1313
  %1321 = icmp sgt i32 %1314, 0
  br i1 %1321, label %1322, label %1332

1322:                                             ; preds = %1320
  %1323 = zext nneg i32 %1314 to i64
  br label %1324

1324:                                             ; preds = %1322, %1324
  %1325 = phi i64 [ %1323, %1322 ], [ %1326, %1324 ]
  %1326 = add nsw i64 %1325, -1
  %1327 = getelementptr inbounds i32, ptr %1126, i64 %1326
  %1328 = load i32, ptr %1327, align 4, !tbaa !44
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds i8, ptr %1131, i64 %1329
  store i8 1, ptr %1330, align 1, !tbaa !87
  %1331 = icmp ugt i64 %1325, 1
  br i1 %1331, label %1324, label %1332, !llvm.loop !216

1332:                                             ; preds = %1324, %1320
  %1333 = load i32, ptr %9, align 4, !tbaa !59
  %1334 = icmp sgt i32 %1333, 0
  br i1 %1334, label %1335, label %1347

1335:                                             ; preds = %1332
  %1336 = zext nneg i32 %1333 to i64
  br label %1337

1337:                                             ; preds = %1335, %1345
  %1338 = phi i64 [ %1336, %1335 ], [ %1339, %1345 ]
  %1339 = add nsw i64 %1338, -1
  %1340 = getelementptr inbounds i8, ptr %1131, i64 %1339
  %1341 = load i8, ptr %1340, align 1, !tbaa !87
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1345, label %1343

1343:                                             ; preds = %1337
  %1344 = trunc i64 %1339 to i32
  tail call fastcc void @omega_delete_geq_extra(ptr noundef nonnull %0, i32 noundef %1344, i32 noundef %628) #23
  br label %1345

1345:                                             ; preds = %1337, %1343
  %1346 = icmp ugt i64 %1338, 1
  br i1 %1346, label %1337, label %1347, !llvm.loop !217

1347:                                             ; preds = %1345, %1332
  tail call void @free(ptr noundef %1126) #23
  tail call void @free(ptr noundef %1131) #23
  br label %1348

1348:                                             ; preds = %470, %1118, %1347, %515
  %1349 = phi i8 [ 1, %515 ], [ 0, %1347 ], [ 0, %1118 ], [ %227, %470 ]
  %1350 = phi i8 [ 1, %515 ], [ %1315, %1347 ], [ %1119, %1118 ], [ 1, %470 ]
  %1351 = phi i32 [ %312, %515 ], [ %629, %1347 ], [ %629, %1118 ], [ %472, %470 ]
  %1352 = icmp eq i8 %1350, 0
  br i1 %1352, label %999, label %226, !llvm.loop !218

1353:                                             ; preds = %970, %973, %910, %204, %293, %1025, %1021, %1004, %935, %969, %264, %258, %260, %300, %271, %265, %231, %67, %127, %138, %175, %188, %176
  %1354 = phi i32 [ 0, %127 ], [ %145, %138 ], [ 0, %175 ], [ 1, %188 ], [ 1, %176 ], [ 0, %67 ], [ 1, %1025 ], [ 1, %1021 ], [ 1, %1004 ], [ %936, %935 ], [ 0, %969 ], [ 1, %264 ], [ 1, %258 ], [ 0, %260 ], [ %301, %300 ], [ 0, %271 ], [ 0, %265 ], [ %232, %231 ], [ 0, %293 ], [ 0, %910 ], [ 1, %973 ], [ 1, %970 ], [ %205, %204 ]
  ret i32 %1354
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @omega_alloc_eqns(i32 noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !219 {
  %2 = sext i32 %0 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 24) #24
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = zext nneg i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %6, %5 ], [ %9, %7 ]
  %9 = add nsw i64 %8, -1
  %10 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.param_info, ptr %10, i64 64, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !83
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 4) #24
  %16 = getelementptr inbounds %struct.eqn_d, ptr %3, i64 %9
  %17 = getelementptr inbounds %struct.eqn_d, ptr %3, i64 %9, i32 3
  store ptr %15, ptr %17, align 8, !tbaa !42
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %16, i32 noundef 0) #23
  %18 = icmp ugt i64 %8, 1
  br i1 %18, label %7, label %19, !llvm.loop !220

19:                                               ; preds = %7, %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @omega_free_eqns(ptr nocapture noundef %0) unnamed_addr #18 !prof !35 !PGOFuncName !221 {
  %2 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void @free(ptr noundef %3) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_problem_has_no_solution() unnamed_addr #1 !prof !35 !PGOFuncName !222 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 29, i64 1, ptr nonnull %1)
  br label %9

9:                                                ; preds = %7, %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_do_elimination(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !prof !35 !PGOFuncName !223 {
  %4 = alloca i8, align 1
  %5 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef 1) #23
  %6 = load i32, ptr %0, align 8, !tbaa !36
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %2) #23
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.87, ptr noundef nonnull %14) #23
  %16 = load i32, ptr %0, align 8, !tbaa !36
  br label %17

17:                                               ; preds = %13, %9, %3
  %18 = phi i32 [ %16, %13 ], [ %6, %9 ], [ %6, %3 ]
  %19 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.eqn_d, ptr %20, i64 %21
  tail call fastcc void @omega_copy_eqn(ptr noundef %5, ptr noundef %22, i32 noundef %18) #23
  %23 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !44
  store i32 0, ptr %26, align 4, !tbaa !44
  switch i32 %27, label %40 [
    i32 -1, label %28
    i32 1, label %28
  ]

28:                                               ; preds = %17, %17
  %29 = load ptr, ptr %19, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %21, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !47
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  call fastcc void @omega_substitute_red(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %27, ptr noundef nonnull %4) #23
  %34 = load i8, ptr %4, align 1, !tbaa !87
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @omega_convert_eq_to_geqs(ptr noundef nonnull %0, i32 noundef %1) #23
  br label %38

37:                                               ; preds = %33
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %2) #23
  br label %38

38:                                               ; preds = %37, %36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  br label %208

39:                                               ; preds = %28
  tail call fastcc void @omega_substitute(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %27) #23
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %2) #23
  br label %208

40:                                               ; preds = %17
  %41 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.88, i32 noundef %27) #23
  br label %50

50:                                               ; preds = %48, %44, %40
  %51 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !56
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %50
  %55 = load ptr, ptr %19, align 8, !tbaa !57
  %56 = icmp sgt i32 %6, -1
  %57 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 2
  %58 = zext i32 %6 to i64
  %59 = zext nneg i32 %52 to i64
  br label %60

60:                                               ; preds = %54, %98
  %61 = phi i64 [ %59, %54 ], [ %62, %98 ]
  %62 = add nsw i64 %61, -1
  %63 = getelementptr inbounds %struct.eqn_d, ptr %55, i64 %62, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = getelementptr inbounds i32, ptr %64, i64 %25
  %66 = load i32, ptr %65, align 4, !tbaa !44
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %60
  br i1 %56, label %69, label %78

69:                                               ; preds = %68, %69
  %70 = phi i64 [ %74, %69 ], [ %58, %68 ]
  %71 = getelementptr inbounds i32, ptr %64, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !44
  %73 = mul nsw i32 %72, %41
  store i32 %73, ptr %71, align 4, !tbaa !44
  %74 = add nsw i64 %70, -1
  %75 = icmp sgt i64 %70, 0
  br i1 %75, label %69, label %76, !llvm.loop !224

76:                                               ; preds = %69
  %77 = load i32, ptr %65, align 4, !tbaa !44
  br label %78

78:                                               ; preds = %76, %68
  %79 = phi i32 [ %77, %76 ], [ %66, %68 ]
  store i32 0, ptr %65, align 4, !tbaa !44
  %80 = load i32, ptr %57, align 8, !tbaa !47
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.eqn_d, ptr %55, i64 %62, i32 2
  store i32 1, ptr %83, align 8, !tbaa !47
  br label %84

84:                                               ; preds = %82, %78
  br i1 %56, label %85, label %98

85:                                               ; preds = %84
  %86 = load ptr, ptr %23, align 8, !tbaa !42
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi i64 [ %58, %85 ], [ %96, %87 ]
  %89 = getelementptr inbounds i32, ptr %86, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !44
  %91 = mul nsw i32 %90, %79
  %92 = sdiv i32 %91, %27
  %93 = getelementptr inbounds i32, ptr %64, i64 %88
  %94 = load i32, ptr %93, align 4, !tbaa !44
  %95 = sub nsw i32 %94, %92
  store i32 %95, ptr %93, align 4, !tbaa !44
  %96 = add nsw i64 %88, -1
  %97 = icmp sgt i64 %88, 0
  br i1 %97, label %87, label %98, !llvm.loop !225

98:                                               ; preds = %87, %84, %60
  %99 = icmp sgt i64 %61, 1
  br i1 %99, label %60, label %100, !llvm.loop !226

100:                                              ; preds = %98, %50
  %101 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %102 = load i32, ptr %101, align 4, !tbaa !59
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %152

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !60
  %107 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 2
  %108 = icmp sgt i32 %6, -1
  %109 = zext i32 %6 to i64
  %110 = zext nneg i32 %102 to i64
  br label %111

111:                                              ; preds = %104, %150
  %112 = phi i64 [ %110, %104 ], [ %113, %150 ]
  %113 = add nsw i64 %112, -1
  %114 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %113, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !42
  %116 = getelementptr inbounds i32, ptr %115, i64 %25
  %117 = load i32, ptr %116, align 4, !tbaa !44
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %111
  %120 = load i32, ptr %107, align 8, !tbaa !47
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %113, i32 2
  store i32 1, ptr %123, align 8, !tbaa !47
  br label %124

124:                                              ; preds = %122, %119
  br i1 %108, label %127, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %113, i32 1
  store i32 1, ptr %126, align 4, !tbaa !45
  store i32 0, ptr %116, align 4, !tbaa !44
  br label %150

127:                                              ; preds = %124, %127
  %128 = phi i64 [ %132, %127 ], [ %109, %124 ]
  %129 = getelementptr inbounds i32, ptr %115, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !44
  %131 = mul nsw i32 %130, %41
  store i32 %131, ptr %129, align 4, !tbaa !44
  %132 = add nsw i64 %128, -1
  %133 = icmp sgt i64 %128, 0
  br i1 %133, label %127, label %134, !llvm.loop !227

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %113, i32 1
  store i32 1, ptr %135, align 4, !tbaa !45
  %136 = load i32, ptr %116, align 4, !tbaa !44
  store i32 0, ptr %116, align 4, !tbaa !44
  br i1 %108, label %137, label %150

137:                                              ; preds = %134
  %138 = load ptr, ptr %23, align 8, !tbaa !42
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi i64 [ %109, %137 ], [ %148, %139 ]
  %141 = getelementptr inbounds i32, ptr %138, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !44
  %143 = mul nsw i32 %142, %136
  %144 = sdiv i32 %143, %27
  %145 = getelementptr inbounds i32, ptr %115, i64 %140
  %146 = load i32, ptr %145, align 4, !tbaa !44
  %147 = sub nsw i32 %146, %144
  store i32 %147, ptr %145, align 4, !tbaa !44
  %148 = add nsw i64 %140, -1
  %149 = icmp sgt i64 %140, 0
  br i1 %149, label %139, label %150, !llvm.loop !228

150:                                              ; preds = %139, %125, %134, %111
  %151 = icmp sgt i64 %112, 1
  br i1 %151, label %111, label %152, !llvm.loop !229

152:                                              ; preds = %150, %100
  %153 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !62
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %204

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %158 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 2
  %159 = icmp sgt i32 %6, -1
  %160 = zext i32 %6 to i64
  %161 = zext nneg i32 %154 to i64
  br label %162

162:                                              ; preds = %156, %202
  %163 = phi i64 [ %161, %156 ], [ %164, %202 ]
  %164 = add nsw i64 %163, -1
  %165 = load ptr, ptr %157, align 8, !tbaa !63
  %166 = getelementptr inbounds %struct.eqn_d, ptr %165, i64 %164, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !42
  %168 = getelementptr inbounds i32, ptr %167, i64 %25
  %169 = load i32, ptr %168, align 4, !tbaa !44
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %202, label %171

171:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3082, ptr noundef nonnull @.str.26) #24
  %172 = load i32, ptr %158, align 8, !tbaa !47
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3083, ptr noundef nonnull @.str.26) #24
  br label %175

175:                                              ; preds = %171, %174
  %176 = load ptr, ptr %166, align 8, !tbaa !42
  br i1 %159, label %179, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds i32, ptr %176, i64 %25
  store i32 0, ptr %178, align 4, !tbaa !44
  br label %202

179:                                              ; preds = %175, %179
  %180 = phi i64 [ %184, %179 ], [ %160, %175 ]
  %181 = getelementptr inbounds i32, ptr %176, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !44
  %183 = mul nsw i32 %182, %41
  store i32 %183, ptr %181, align 4, !tbaa !44
  %184 = add nsw i64 %180, -1
  %185 = icmp sgt i64 %180, 0
  br i1 %185, label %179, label %186, !llvm.loop !230

186:                                              ; preds = %179
  %187 = getelementptr inbounds i32, ptr %176, i64 %25
  %188 = load i32, ptr %187, align 4, !tbaa !44
  store i32 0, ptr %187, align 4, !tbaa !44
  br i1 %159, label %189, label %202

189:                                              ; preds = %186
  %190 = load ptr, ptr %23, align 8, !tbaa !42
  br label %191

191:                                              ; preds = %189, %191
  %192 = phi i64 [ %160, %189 ], [ %200, %191 ]
  %193 = getelementptr inbounds i32, ptr %190, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !44
  %195 = mul nsw i32 %194, %188
  %196 = sdiv i32 %195, %27
  %197 = getelementptr inbounds i32, ptr %176, i64 %192
  %198 = load i32, ptr %197, align 4, !tbaa !44
  %199 = sub nsw i32 %198, %196
  store i32 %199, ptr %197, align 4, !tbaa !44
  %200 = add nsw i64 %192, -1
  %201 = icmp sgt i64 %192, 0
  br i1 %201, label %191, label %202, !llvm.loop !231

202:                                              ; preds = %191, %177, %186, %162
  %203 = icmp sgt i64 %163, 1
  br i1 %203, label %162, label %204, !llvm.loop !232

204:                                              ; preds = %202, %152
  %205 = load i1, ptr @in_approximate_mode, align 1
  br i1 %205, label %206, label %207

206:                                              ; preds = %204
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %2) #23
  br label %208

207:                                              ; preds = %204
  tail call void @omega_convert_eq_to_geqs(ptr noundef nonnull %0, i32 noundef %1) #23
  br label %208

208:                                              ; preds = %206, %207, %38, %39
  tail call fastcc void @omega_free_eqns(ptr noundef %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @omega_eqn_is_red(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #19 !prof !35 !PGOFuncName !233 {
  %3 = icmp eq i32 %1, 3
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = icmp eq i32 %6, 1
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i8 [ 0, %2 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @int_mod(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !234 {
  %3 = tail call fastcc i32 @int_div(i32 noundef %0, i32 noundef %1) #23
  %4 = mul nsw i32 %3, %1
  %5 = sub nsw i32 %0, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_name_wild_card(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !235 {
  %3 = load i32, ptr @next_wild_card, align 4, !tbaa !44
  %4 = add nsw i32 %3, -1
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 67, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = sub nsw i32 0, %7
  %9 = icmp sgt i32 %3, %8
  %10 = select i1 %9, i32 %4, i32 -1
  store i32 %10, ptr @next_wild_card, align 4
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 %10, ptr %14, align 4, !tbaa !44
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @omega_add_new_wild_card(ptr nocapture noundef %0) unnamed_addr #10 !prof !35 !PGOFuncName !236 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !69
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !69
  %5 = load i32, ptr %0, align 8, !tbaa !36
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %0, align 8, !tbaa !36
  %7 = icmp eq i32 %5, %3
  br i1 %7, label %85, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = sext i32 %4 to i64
  %16 = zext nneg i32 %10 to i64
  br label %17

17:                                               ; preds = %12, %28
  %18 = phi i64 [ %16, %12 ], [ %19, %28 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %19, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds i32, ptr %21, i64 %15
  %23 = load i32, ptr %22, align 4, !tbaa !44
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %19, i32 1
  store i32 1, ptr %26, align 4, !tbaa !45
  %27 = load i32, ptr %22, align 4, !tbaa !44
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi i32 [ %27, %25 ], [ 0, %17 ]
  %30 = load i32, ptr %0, align 8, !tbaa !36
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %21, i64 %31
  store i32 %29, ptr %32, align 4, !tbaa !44
  %33 = icmp ugt i64 %18, 1
  br i1 %33, label %17, label %34, !llvm.loop !237

34:                                               ; preds = %28, %8
  %35 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = sext i32 %4 to i64
  %42 = zext nneg i32 %36 to i64
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %42, %38 ], [ %45, %43 ]
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds %struct.eqn_d, ptr %40, i64 %45, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds i32, ptr %47, i64 %41
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = load i32, ptr %0, align 8, !tbaa !36
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %47, i64 %51
  store i32 %49, ptr %52, align 4, !tbaa !44
  %53 = icmp ugt i64 %44, 1
  br i1 %53, label %43, label %54, !llvm.loop !238

54:                                               ; preds = %43, %34
  %55 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !62
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = sext i32 %4 to i64
  br label %76

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = sext i32 %4 to i64
  %64 = zext nneg i32 %56 to i64
  br label %65

65:                                               ; preds = %60, %65
  %66 = phi i64 [ %64, %60 ], [ %67, %65 ]
  %67 = add nsw i64 %66, -1
  %68 = getelementptr inbounds %struct.eqn_d, ptr %62, i64 %67, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = getelementptr inbounds i32, ptr %69, i64 %63
  %71 = load i32, ptr %70, align 4, !tbaa !44
  %72 = load i32, ptr %0, align 8, !tbaa !36
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %69, i64 %73
  store i32 %71, ptr %74, align 4, !tbaa !44
  %75 = icmp ugt i64 %66, 1
  br i1 %75, label %65, label %76, !llvm.loop !239

76:                                               ; preds = %65, %58
  %77 = phi i64 [ %59, %58 ], [ %63, %65 ]
  %78 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !52
  %80 = getelementptr inbounds i32, ptr %79, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !44
  %82 = load i32, ptr %0, align 8, !tbaa !36
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %79, i64 %83
  store i32 %81, ptr %84, align 4, !tbaa !44
  br label %85

85:                                               ; preds = %76, %1
  %86 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !59
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %91 = load ptr, ptr %90, align 8, !tbaa !60
  %92 = sext i32 %4 to i64
  %93 = zext nneg i32 %87 to i64
  br label %94

94:                                               ; preds = %89, %94
  %95 = phi i64 [ %93, %89 ], [ %96, %94 ]
  %96 = add nsw i64 %95, -1
  %97 = getelementptr inbounds %struct.eqn_d, ptr %91, i64 %96, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !42
  %99 = getelementptr inbounds i32, ptr %98, i64 %92
  store i32 0, ptr %99, align 4, !tbaa !44
  %100 = icmp ugt i64 %95, 1
  br i1 %100, label %94, label %101, !llvm.loop !240

101:                                              ; preds = %94, %85
  %102 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !56
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  %108 = sext i32 %4 to i64
  %109 = zext nneg i32 %103 to i64
  br label %110

110:                                              ; preds = %105, %110
  %111 = phi i64 [ %109, %105 ], [ %112, %110 ]
  %112 = add nsw i64 %111, -1
  %113 = getelementptr inbounds %struct.eqn_d, ptr %107, i64 %112, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !42
  %115 = getelementptr inbounds i32, ptr %114, i64 %108
  store i32 0, ptr %115, align 4, !tbaa !44
  %116 = icmp ugt i64 %111, 1
  br i1 %116, label %110, label %117, !llvm.loop !241

117:                                              ; preds = %110, %101
  %118 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %119 = load i32, ptr %118, align 8, !tbaa !62
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  %124 = sext i32 %4 to i64
  %125 = zext nneg i32 %119 to i64
  br label %126

126:                                              ; preds = %121, %126
  %127 = phi i64 [ %125, %121 ], [ %128, %126 ]
  %128 = add nsw i64 %127, -1
  %129 = getelementptr inbounds %struct.eqn_d, ptr %123, i64 %128, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !42
  %131 = getelementptr inbounds i32, ptr %130, i64 %124
  store i32 0, ptr %131, align 4, !tbaa !44
  %132 = icmp ugt i64 %127, 1
  br i1 %132, label %126, label %133, !llvm.loop !242

133:                                              ; preds = %126, %117
  tail call fastcc void @omega_name_wild_card(ptr noundef nonnull %0, i32 noundef %4) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_do_mod(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 !prof !35 !PGOFuncName !243 {
  %5 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef 1) #23
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.eqn_d, ptr %7, i64 %8
  %10 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %5, ptr noundef %9, i32 noundef %10) #23
  %11 = load i32, ptr %0, align 8, !tbaa !36
  %12 = icmp sgt i32 %11, -1
  %13 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %28

15:                                               ; preds = %4
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %16, %15 ], [ %26, %17 ]
  %19 = getelementptr inbounds i32, ptr %14, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !44
  %21 = tail call fastcc i32 @int_mod(i32 noundef %20, i32 noundef %1) #23
  %22 = shl nsw i32 %21, 1
  %23 = icmp slt i32 %22, %1
  %24 = select i1 %23, i32 0, i32 %1
  %25 = sub nsw i32 %21, %24
  store i32 %25, ptr %19, align 4, !tbaa !44
  %26 = add nsw i64 %18, -1
  %27 = icmp eq i64 %18, 0
  br i1 %27, label %28, label %17, !llvm.loop !244

28:                                               ; preds = %17, %4
  %29 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 3
  %30 = sext i32 %3 to i64
  %31 = getelementptr inbounds i32, ptr %14, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !44
  %33 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %3) #23, !range !113
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef nonnull %0, i32 noundef %3) #23, !range !113
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @omega_add_new_wild_card(ptr noundef nonnull %0) #23
  %40 = load ptr, ptr %29, align 8, !tbaa !42
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, ptr %40, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !44
  %44 = load i32, ptr %0, align 8, !tbaa !36
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %40, i64 %45
  store i32 %43, ptr %46, align 4, !tbaa !44
  %47 = getelementptr inbounds i32, ptr %40, i64 %30
  store i32 0, ptr %47, align 4, !tbaa !44
  %48 = sub nsw i32 0, %1
  store i32 %48, ptr %42, align 4, !tbaa !44
  br label %56

49:                                               ; preds = %35, %28
  %50 = sub nsw i32 0, %1
  %51 = load ptr, ptr %29, align 8, !tbaa !42
  %52 = getelementptr inbounds i32, ptr %51, i64 %30
  store i32 %50, ptr %52, align 4, !tbaa !44
  %53 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef nonnull %0, i32 noundef %3) #23, !range !113
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  tail call fastcc void @omega_name_wild_card(ptr noundef nonnull %0, i32 noundef %3) #23
  br label %56

56:                                               ; preds = %49, %55, %38
  %57 = phi i1 [ true, %49 ], [ true, %55 ], [ false, %38 ]
  tail call fastcc void @omega_substitute(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %32) #23
  %58 = load i32, ptr %0, align 8, !tbaa !36
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load ptr, ptr %6, align 8, !tbaa !57
  %62 = getelementptr inbounds %struct.eqn_d, ptr %61, i64 %8, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !42
  %64 = zext nneg i32 %58 to i64
  br label %65

65:                                               ; preds = %60, %65
  %66 = phi i64 [ %64, %60 ], [ %70, %65 ]
  %67 = getelementptr inbounds i32, ptr %63, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = sdiv i32 %68, %1
  store i32 %69, ptr %67, align 4, !tbaa !44
  %70 = add nsw i64 %66, -1
  %71 = icmp eq i64 %66, 0
  br i1 %71, label %72, label %65, !llvm.loop !245

72:                                               ; preds = %65, %56
  br i1 %57, label %74, label %73

73:                                               ; preds = %72
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %3) #23
  br label %74

74:                                               ; preds = %73, %72
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 34, i64 1, ptr nonnull %75)
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %83, ptr noundef nonnull %0) #23
  br label %84

84:                                               ; preds = %81, %77, %74
  tail call fastcc void @omega_free_eqns(ptr noundef %5) #23
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_substitute_red(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #7 !prof !35 !PGOFuncName !246 {
  %6 = load i32, ptr %0, align 8, !tbaa !36
  %7 = tail call fastcc i32 @setup_packing(ptr noundef %1, i32 noundef %6) #23
  store i8 0, ptr %4, align 1, !tbaa !87
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !47
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call i32 @fputc(i32 91, ptr nonnull %8)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %20, %18 ], [ %8, %14 ]
  %23 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %2) #23
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.89, ptr noundef nonnull %23) #23
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %26 = sub nsw i32 0, %3
  tail call fastcc void @omega_print_term(ptr noundef %25, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %26) #23
  %27 = load i32, ptr %15, align 8, !tbaa !47
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %31 = tail call i32 @fputc(i32 93, ptr %30)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %34 = tail call i32 @fputc(i32 10, ptr %33)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_vars(ptr noundef %35, ptr noundef nonnull %0) #23
  br label %36

36:                                               ; preds = %32, %10, %5
  %37 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !56
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %42 = zext nneg i32 %38 to i64
  br label %43

43:                                               ; preds = %40, %57
  %44 = phi i64 [ %42, %40 ], [ %45, %57 ]
  %45 = add nsw i64 %44, -1
  %46 = load ptr, ptr %41, align 8, !tbaa !57
  %47 = getelementptr inbounds %struct.eqn_d, ptr %46, i64 %45
  tail call fastcc void @omega_substitute_red_1(ptr noundef %47, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %7) #23
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  tail call fastcc void @omega_print_eq(ptr noundef nonnull %48, ptr noundef nonnull %0, ptr noundef %47) #23
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %56 = tail call i32 @fputc(i32 10, ptr %55)
  br label %57

57:                                               ; preds = %54, %50, %43
  %58 = icmp ugt i64 %44, 1
  br i1 %58, label %43, label %59, !llvm.loop !247

59:                                               ; preds = %57, %36
  %60 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !59
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %65 = sext i32 %2 to i64
  %66 = zext nneg i32 %61 to i64
  br label %67

67:                                               ; preds = %63, %93
  %68 = phi i64 [ %66, %63 ], [ %69, %93 ]
  %69 = add nsw i64 %68, -1
  %70 = load ptr, ptr %64, align 8, !tbaa !60
  %71 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %69
  tail call fastcc void @omega_substitute_red_1(ptr noundef %71, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %7) #23
  %72 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %69, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = getelementptr inbounds i32, ptr %73, i64 %65
  %75 = load i32, ptr %74, align 4, !tbaa !44
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %69, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !47
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %69, i32 1
  store i32 1, ptr %82, align 4, !tbaa !45
  br label %83

83:                                               ; preds = %81, %77, %67
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %85 = icmp eq ptr %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %88 = and i32 %87, 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  tail call fastcc void @omega_print_geq(ptr noundef nonnull %84, ptr noundef nonnull %0, ptr noundef nonnull %71) #23
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %92 = tail call i32 @fputc(i32 10, ptr %91)
  br label %93

93:                                               ; preds = %90, %86, %83
  %94 = icmp ugt i64 %68, 1
  br i1 %94, label %67, label %95, !llvm.loop !248

95:                                               ; preds = %93, %59
  %96 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %97 = load i32, ptr %96, align 8, !tbaa !62
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %101 = zext nneg i32 %97 to i64
  br label %102

102:                                              ; preds = %99, %120
  %103 = phi i64 [ %101, %99 ], [ %104, %120 ]
  %104 = add nsw i64 %103, -1
  %105 = load ptr, ptr %100, align 8, !tbaa !63
  %106 = getelementptr inbounds %struct.eqn_d, ptr %105, i64 %104
  tail call fastcc void @omega_substitute_red_1(ptr noundef %106, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %7) #23
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %108 = icmp eq ptr %107, null
  br i1 %108, label %120, label %109

109:                                              ; preds = %102
  %110 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %106, align 8, !tbaa !46
  %115 = tail call fastcc ptr @omega_var_to_str(i32 noundef %114) #23
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %107, ptr noundef nonnull @.str.16, ptr noundef nonnull %115) #23
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_term(ptr noundef %117, ptr noundef nonnull %0, ptr noundef nonnull %106, i32 noundef 1) #23
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %119 = tail call i32 @fputc(i32 10, ptr %118)
  br label %120

120:                                              ; preds = %113, %109, %102
  %121 = icmp ugt i64 %103, 1
  br i1 %121, label %102, label %122, !llvm.loop !249

122:                                              ; preds = %120, %95
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %127 = and i32 %126, 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 5, i64 1, ptr nonnull %123)
  br label %131

131:                                              ; preds = %129, %125, %122
  %132 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i8 1, ptr %4, align 1, !tbaa !87
  br label %138

138:                                              ; preds = %137, %134, %131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_delete_variable(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !250 {
  %3 = load i32, ptr %0, align 8, !tbaa !36
  %4 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %1) #23, !range !113
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %90, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = sext i32 %8 to i64
  %16 = sext i32 %1 to i64
  %17 = sext i32 %3 to i64
  %18 = zext nneg i32 %10 to i64
  br label %19

19:                                               ; preds = %12, %19
  %20 = phi i64 [ %18, %12 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %21, i32 1
  store i32 1, ptr %22, align 4, !tbaa !45
  %23 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %21, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds i32, ptr %24, i64 %15
  %26 = load i32, ptr %25, align 4, !tbaa !44
  %27 = getelementptr inbounds i32, ptr %24, i64 %16
  store i32 %26, ptr %27, align 4, !tbaa !44
  %28 = getelementptr inbounds i32, ptr %24, i64 %17
  %29 = load i32, ptr %28, align 4, !tbaa !44
  store i32 %29, ptr %25, align 4, !tbaa !44
  %30 = icmp ugt i64 %20, 1
  br i1 %30, label %19, label %31, !llvm.loop !251

31:                                               ; preds = %19, %6
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = sext i32 %8 to i64
  %39 = sext i32 %1 to i64
  %40 = sext i32 %3 to i64
  %41 = zext nneg i32 %33 to i64
  br label %42

42:                                               ; preds = %35, %42
  %43 = phi i64 [ %41, %35 ], [ %44, %42 ]
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 %44, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = getelementptr inbounds i32, ptr %46, i64 %38
  %48 = load i32, ptr %47, align 4, !tbaa !44
  %49 = getelementptr inbounds i32, ptr %46, i64 %39
  store i32 %48, ptr %49, align 4, !tbaa !44
  %50 = getelementptr inbounds i32, ptr %46, i64 %40
  %51 = load i32, ptr %50, align 4, !tbaa !44
  store i32 %51, ptr %47, align 4, !tbaa !44
  %52 = icmp ugt i64 %43, 1
  br i1 %52, label %42, label %53, !llvm.loop !252

53:                                               ; preds = %42, %31
  %54 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !62
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = sext i32 %8 to i64
  %59 = sext i32 %1 to i64
  %60 = sext i32 %3 to i64
  br label %79

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !63
  %64 = sext i32 %8 to i64
  %65 = sext i32 %1 to i64
  %66 = sext i32 %3 to i64
  %67 = zext nneg i32 %55 to i64
  br label %68

68:                                               ; preds = %61, %68
  %69 = phi i64 [ %67, %61 ], [ %70, %68 ]
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds %struct.eqn_d, ptr %63, i64 %70, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !42
  %73 = getelementptr inbounds i32, ptr %72, i64 %64
  %74 = load i32, ptr %73, align 4, !tbaa !44
  %75 = getelementptr inbounds i32, ptr %72, i64 %65
  store i32 %74, ptr %75, align 4, !tbaa !44
  %76 = getelementptr inbounds i32, ptr %72, i64 %66
  %77 = load i32, ptr %76, align 4, !tbaa !44
  store i32 %77, ptr %73, align 4, !tbaa !44
  %78 = icmp ugt i64 %69, 1
  br i1 %78, label %68, label %79, !llvm.loop !253

79:                                               ; preds = %68, %57
  %80 = phi i64 [ %60, %57 ], [ %66, %68 ]
  %81 = phi i64 [ %59, %57 ], [ %65, %68 ]
  %82 = phi i64 [ %58, %57 ], [ %64, %68 ]
  %83 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = getelementptr inbounds i32, ptr %84, i64 %82
  %86 = load i32, ptr %85, align 4, !tbaa !44
  %87 = getelementptr inbounds i32, ptr %84, i64 %81
  store i32 %86, ptr %87, align 4, !tbaa !44
  %88 = getelementptr inbounds i32, ptr %84, i64 %80
  %89 = load i32, ptr %88, align 4, !tbaa !44
  store i32 %89, ptr %85, align 4, !tbaa !44
  br label %164

90:                                               ; preds = %2
  %91 = icmp sgt i32 %3, %1
  br i1 %91, label %92, label %164

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !59
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !60
  %99 = sext i32 %3 to i64
  %100 = sext i32 %1 to i64
  %101 = zext nneg i32 %94 to i64
  br label %102

102:                                              ; preds = %96, %113
  %103 = phi i64 [ %101, %96 ], [ %104, %113 ]
  %104 = add nsw i64 %103, -1
  %105 = getelementptr inbounds %struct.eqn_d, ptr %98, i64 %104, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !42
  %107 = getelementptr inbounds i32, ptr %106, i64 %99
  %108 = load i32, ptr %107, align 4, !tbaa !44
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds i32, ptr %106, i64 %100
  store i32 %108, ptr %111, align 4, !tbaa !44
  %112 = getelementptr inbounds %struct.eqn_d, ptr %98, i64 %104, i32 1
  store i32 1, ptr %112, align 4, !tbaa !45
  br label %113

113:                                              ; preds = %102, %110
  %114 = icmp ugt i64 %103, 1
  br i1 %114, label %102, label %115, !llvm.loop !254

115:                                              ; preds = %113, %92
  %116 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !56
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !57
  %122 = sext i32 %3 to i64
  %123 = sext i32 %1 to i64
  %124 = zext nneg i32 %117 to i64
  br label %125

125:                                              ; preds = %119, %125
  %126 = phi i64 [ %124, %119 ], [ %127, %125 ]
  %127 = add nsw i64 %126, -1
  %128 = getelementptr inbounds %struct.eqn_d, ptr %121, i64 %127, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !42
  %130 = getelementptr inbounds i32, ptr %129, i64 %122
  %131 = load i32, ptr %130, align 4, !tbaa !44
  %132 = getelementptr inbounds i32, ptr %129, i64 %123
  store i32 %131, ptr %132, align 4, !tbaa !44
  %133 = icmp ugt i64 %126, 1
  br i1 %133, label %125, label %134, !llvm.loop !255

134:                                              ; preds = %125, %115
  %135 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %136 = load i32, ptr %135, align 8, !tbaa !62
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = sext i32 %3 to i64
  %140 = sext i32 %1 to i64
  br label %156

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %143 = load ptr, ptr %142, align 8, !tbaa !63
  %144 = sext i32 %3 to i64
  %145 = sext i32 %1 to i64
  %146 = zext nneg i32 %136 to i64
  br label %147

147:                                              ; preds = %141, %147
  %148 = phi i64 [ %146, %141 ], [ %149, %147 ]
  %149 = add nsw i64 %148, -1
  %150 = getelementptr inbounds %struct.eqn_d, ptr %143, i64 %149, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !42
  %152 = getelementptr inbounds i32, ptr %151, i64 %144
  %153 = load i32, ptr %152, align 4, !tbaa !44
  %154 = getelementptr inbounds i32, ptr %151, i64 %145
  store i32 %153, ptr %154, align 4, !tbaa !44
  %155 = icmp ugt i64 %148, 1
  br i1 %155, label %147, label %156, !llvm.loop !256

156:                                              ; preds = %147, %138
  %157 = phi i64 [ %140, %138 ], [ %145, %147 ]
  %158 = phi i64 [ %139, %138 ], [ %144, %147 ]
  %159 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %160 = load ptr, ptr %159, align 8, !tbaa !52
  %161 = getelementptr inbounds i32, ptr %160, i64 %158
  %162 = load i32, ptr %161, align 4, !tbaa !44
  %163 = getelementptr inbounds i32, ptr %160, i64 %157
  store i32 %162, ptr %163, align 4, !tbaa !44
  br label %164

164:                                              ; preds = %90, %156, %79
  %165 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %1) #23, !range !113
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !69
  %170 = add nsw i32 %169, -1
  store i32 %170, ptr %168, align 4, !tbaa !69
  br label %171

171:                                              ; preds = %167, %164
  %172 = load i32, ptr %0, align 8, !tbaa !36
  %173 = add nsw i32 %172, -1
  store i32 %173, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_substitute(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 !prof !35 !PGOFuncName !257 {
  %5 = load i32, ptr %0, align 8, !tbaa !36
  %6 = tail call fastcc i32 @setup_packing(ptr noundef %1, i32 noundef %5) #23
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %2) #23
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.89, ptr noundef nonnull %14) #23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %17 = sub nsw i32 0, %3
  tail call fastcc void @omega_print_term(ptr noundef %16, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %17) #23
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_vars(ptr noundef %20, ptr noundef nonnull %0) #23
  br label %21

21:                                               ; preds = %13, %9, %4
  %22 = icmp slt i32 %6, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !56
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = sext i32 %2 to i64
  %31 = zext nneg i32 %25 to i64
  br label %32

32:                                               ; preds = %27, %32
  %33 = phi i64 [ %31, %27 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %34, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !42
  %37 = getelementptr inbounds i32, ptr %36, i64 %30
  store i32 0, ptr %37, align 4, !tbaa !44
  %38 = icmp ugt i64 %33, 1
  br i1 %38, label %32, label %39, !llvm.loop !258

39:                                               ; preds = %32, %23
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !59
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = sext i32 %2 to i64
  %47 = zext nneg i32 %41 to i64
  br label %48

48:                                               ; preds = %43, %58
  %49 = phi i64 [ %47, %43 ], [ %50, %58 ]
  %50 = add nsw i64 %49, -1
  %51 = getelementptr inbounds %struct.eqn_d, ptr %45, i64 %50, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds i32, ptr %52, i64 %46
  %54 = load i32, ptr %53, align 4, !tbaa !44
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.eqn_d, ptr %45, i64 %50, i32 1
  store i32 1, ptr %57, align 4, !tbaa !45
  store i32 0, ptr %53, align 4, !tbaa !44
  br label %58

58:                                               ; preds = %48, %56
  %59 = icmp ugt i64 %49, 1
  br i1 %59, label %48, label %60, !llvm.loop !259

60:                                               ; preds = %58, %39
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !62
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !63
  %67 = sext i32 %2 to i64
  %68 = zext nneg i32 %62 to i64
  br label %69

69:                                               ; preds = %64, %69
  %70 = phi i64 [ %68, %64 ], [ %71, %69 ]
  %71 = add nsw i64 %70, -1
  %72 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %71, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = getelementptr inbounds i32, ptr %73, i64 %67
  store i32 0, ptr %74, align 4, !tbaa !44
  %75 = icmp ugt i64 %70, 1
  br i1 %75, label %69, label %76, !llvm.loop !260

76:                                               ; preds = %69, %60
  %77 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %429, label %79

79:                                               ; preds = %76
  %80 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %429

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !63
  %85 = load i32, ptr %61, align 8, !tbaa !62
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %61, align 8, !tbaa !62
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.eqn_d, ptr %84, i64 %87
  %89 = load i32, ptr %0, align 8, !tbaa !36
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.eqn_d, ptr %84, i64 %87, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !42
  %94 = add nuw i32 %89, 1
  %95 = zext i32 %94 to i64
  %96 = shl nuw nsw i64 %95, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %93, i8 0, i64 %96, i1 false), !tbaa !44
  br label %97

97:                                               ; preds = %91, %82
  %98 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !52
  %100 = sext i32 %2 to i64
  %101 = getelementptr inbounds i32, ptr %99, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !44
  store i32 %102, ptr %88, align 8, !tbaa !46
  %103 = getelementptr inbounds %struct.eqn_d, ptr %84, i64 %87, i32 2
  store i32 0, ptr %103, align 8, !tbaa !47
  br label %429

104:                                              ; preds = %21
  %105 = icmp eq i32 %6, 0
  br i1 %105, label %106, label %223

106:                                              ; preds = %104
  %107 = load ptr, ptr @packing, align 8, !tbaa !54
  %108 = load i32, ptr %107, align 4, !tbaa !44
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %223

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !42
  %113 = load i32, ptr %112, align 4, !tbaa !44
  %114 = mul i32 %113, %3
  %115 = sub i32 0, %114
  %116 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !56
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !57
  %122 = sext i32 %2 to i64
  %123 = zext nneg i32 %117 to i64
  br label %124

124:                                              ; preds = %119, %124
  %125 = phi i64 [ %123, %119 ], [ %126, %124 ]
  %126 = add nsw i64 %125, -1
  %127 = getelementptr inbounds %struct.eqn_d, ptr %121, i64 %126, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !42
  %129 = getelementptr inbounds i32, ptr %128, i64 %122
  %130 = load i32, ptr %129, align 4, !tbaa !44
  %131 = mul nsw i32 %130, %115
  %132 = load i32, ptr %128, align 4, !tbaa !44
  %133 = add nsw i32 %132, %131
  store i32 %133, ptr %128, align 4, !tbaa !44
  store i32 0, ptr %129, align 4, !tbaa !44
  %134 = icmp ugt i64 %125, 1
  br i1 %134, label %124, label %135, !llvm.loop !261

135:                                              ; preds = %124, %110
  %136 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !59
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %141 = load ptr, ptr %140, align 8, !tbaa !60
  %142 = sext i32 %2 to i64
  %143 = zext nneg i32 %137 to i64
  br label %144

144:                                              ; preds = %139, %157
  %145 = phi i64 [ %143, %139 ], [ %146, %157 ]
  %146 = add nsw i64 %145, -1
  %147 = getelementptr inbounds %struct.eqn_d, ptr %141, i64 %146, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !42
  %149 = getelementptr inbounds i32, ptr %148, i64 %142
  %150 = load i32, ptr %149, align 4, !tbaa !44
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %144
  %153 = mul nsw i32 %150, %115
  %154 = load i32, ptr %148, align 4, !tbaa !44
  %155 = add nsw i32 %154, %153
  store i32 %155, ptr %148, align 4, !tbaa !44
  store i32 0, ptr %149, align 4, !tbaa !44
  %156 = getelementptr inbounds %struct.eqn_d, ptr %141, i64 %146, i32 1
  store i32 1, ptr %156, align 4, !tbaa !45
  br label %157

157:                                              ; preds = %144, %152
  %158 = icmp ugt i64 %145, 1
  br i1 %158, label %144, label %159, !llvm.loop !262

159:                                              ; preds = %157, %135
  %160 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !62
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %165 = load ptr, ptr %164, align 8, !tbaa !63
  %166 = sext i32 %2 to i64
  %167 = zext nneg i32 %161 to i64
  br label %168

168:                                              ; preds = %163, %168
  %169 = phi i64 [ %167, %163 ], [ %170, %168 ]
  %170 = add nsw i64 %169, -1
  %171 = getelementptr inbounds %struct.eqn_d, ptr %165, i64 %170, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !42
  %173 = getelementptr inbounds i32, ptr %172, i64 %166
  %174 = load i32, ptr %173, align 4, !tbaa !44
  %175 = mul nsw i32 %174, %115
  %176 = load i32, ptr %172, align 4, !tbaa !44
  %177 = add nsw i32 %176, %175
  store i32 %177, ptr %172, align 4, !tbaa !44
  store i32 0, ptr %173, align 4, !tbaa !44
  %178 = icmp ugt i64 %169, 1
  br i1 %178, label %168, label %179, !llvm.loop !263

179:                                              ; preds = %168, %159
  %180 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %211, label %182

182:                                              ; preds = %179
  %183 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %187 = load ptr, ptr %186, align 8, !tbaa !63
  %188 = load i32, ptr %160, align 8, !tbaa !62
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %160, align 8, !tbaa !62
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds %struct.eqn_d, ptr %187, i64 %190
  %192 = load i32, ptr %0, align 8, !tbaa !36
  %193 = icmp sgt i32 %192, 0
  %194 = getelementptr inbounds %struct.eqn_d, ptr %187, i64 %190, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !42
  br i1 %193, label %196, label %204

196:                                              ; preds = %185
  %197 = zext nneg i32 %192 to i64
  %198 = shl nuw nsw i64 %197, 2
  %199 = add nsw i32 %192, -1
  %200 = zext nneg i32 %199 to i64
  %201 = sub nsw i64 %197, %200
  %202 = shl nsw i64 %201, 2
  %203 = getelementptr i8, ptr %195, i64 %202
  tail call void @llvm.memset.p0.i64(ptr align 4 %203, i8 0, i64 %198, i1 false), !tbaa !44
  br label %204

204:                                              ; preds = %185, %196
  store i32 %115, ptr %195, align 4, !tbaa !44
  %205 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %206 = load ptr, ptr %205, align 8, !tbaa !52
  %207 = sext i32 %2 to i64
  %208 = getelementptr inbounds i32, ptr %206, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !44
  store i32 %209, ptr %191, align 8, !tbaa !46
  %210 = getelementptr inbounds %struct.eqn_d, ptr %187, i64 %190, i32 2
  store i32 0, ptr %210, align 8, !tbaa !47
  br label %211

211:                                              ; preds = %204, %182, %179
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %213 = icmp eq ptr %212, null
  br i1 %213, label %429, label %214

214:                                              ; preds = %211
  %215 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %216 = and i32 %215, 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %429, label %218

218:                                              ; preds = %214
  %219 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 5, i64 1, ptr nonnull %212)
  %220 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %220, ptr noundef nonnull %0) #23
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %222 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 5, i64 1, ptr %221)
  br label %429

223:                                              ; preds = %106, %104
  %224 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %225 = load i32, ptr %224, align 8, !tbaa !56
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %273

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %229 = sext i32 %2 to i64
  %230 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %231 = zext nneg i32 %6 to i64
  %232 = zext nneg i32 %225 to i64
  br label %233

233:                                              ; preds = %227, %271
  %234 = phi i64 [ %232, %227 ], [ %235, %271 ]
  %235 = add nsw i64 %234, -1
  %236 = load ptr, ptr %228, align 8, !tbaa !57
  %237 = getelementptr inbounds %struct.eqn_d, ptr %236, i64 %235
  %238 = getelementptr inbounds %struct.eqn_d, ptr %236, i64 %235, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !42
  %240 = getelementptr inbounds i32, ptr %239, i64 %229
  %241 = load i32, ptr %240, align 4, !tbaa !44
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %261, label %243

243:                                              ; preds = %233
  %244 = mul nsw i32 %241, %3
  store i32 0, ptr %240, align 4, !tbaa !44
  %245 = load ptr, ptr @packing, align 8, !tbaa !54
  %246 = load ptr, ptr %230, align 8, !tbaa !42
  br label %247

247:                                              ; preds = %243, %247
  %248 = phi i64 [ %231, %243 ], [ %258, %247 ]
  %249 = getelementptr inbounds i32, ptr %245, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !44
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %246, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !44
  %254 = mul nsw i32 %244, %253
  %255 = getelementptr inbounds i32, ptr %239, i64 %251
  %256 = load i32, ptr %255, align 4, !tbaa !44
  %257 = sub nsw i32 %256, %254
  store i32 %257, ptr %255, align 4, !tbaa !44
  %258 = add nsw i64 %248, -1
  %259 = trunc i64 %248 to i32
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %247, label %261, !llvm.loop !264

261:                                              ; preds = %247, %233
  %262 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %263 = icmp eq ptr %262, null
  br i1 %263, label %271, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %266 = and i32 %265, 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %264
  tail call fastcc void @omega_print_eq(ptr noundef nonnull %262, ptr noundef nonnull %0, ptr noundef %237) #23
  %269 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %270 = tail call i32 @fputc(i32 10, ptr %269)
  br label %271

271:                                              ; preds = %268, %264, %261
  %272 = icmp sgt i64 %234, 1
  br i1 %272, label %233, label %273, !llvm.loop !265

273:                                              ; preds = %271, %223
  %274 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %275 = load i32, ptr %274, align 4, !tbaa !59
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %324

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %279 = sext i32 %2 to i64
  %280 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %281 = zext nneg i32 %6 to i64
  %282 = zext nneg i32 %275 to i64
  br label %283

283:                                              ; preds = %277, %322
  %284 = phi i64 [ %282, %277 ], [ %285, %322 ]
  %285 = add nsw i64 %284, -1
  %286 = load ptr, ptr %278, align 8, !tbaa !60
  %287 = getelementptr inbounds %struct.eqn_d, ptr %286, i64 %285
  %288 = getelementptr inbounds %struct.eqn_d, ptr %286, i64 %285, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !42
  %290 = getelementptr inbounds i32, ptr %289, i64 %279
  %291 = load i32, ptr %290, align 4, !tbaa !44
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %312, label %293

293:                                              ; preds = %283
  %294 = mul nsw i32 %291, %3
  %295 = getelementptr inbounds %struct.eqn_d, ptr %286, i64 %285, i32 1
  store i32 1, ptr %295, align 4, !tbaa !45
  store i32 0, ptr %290, align 4, !tbaa !44
  %296 = load ptr, ptr @packing, align 8, !tbaa !54
  %297 = load ptr, ptr %280, align 8, !tbaa !42
  br label %298

298:                                              ; preds = %293, %298
  %299 = phi i64 [ %281, %293 ], [ %309, %298 ]
  %300 = getelementptr inbounds i32, ptr %296, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !44
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, ptr %297, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !44
  %305 = mul nsw i32 %294, %304
  %306 = getelementptr inbounds i32, ptr %289, i64 %302
  %307 = load i32, ptr %306, align 4, !tbaa !44
  %308 = sub nsw i32 %307, %305
  store i32 %308, ptr %306, align 4, !tbaa !44
  %309 = add nsw i64 %299, -1
  %310 = trunc i64 %299 to i32
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %298, label %312, !llvm.loop !266

312:                                              ; preds = %298, %283
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %314 = icmp eq ptr %313, null
  br i1 %314, label %322, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %317 = and i32 %316, 8
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %315
  tail call fastcc void @omega_print_geq(ptr noundef nonnull %313, ptr noundef nonnull %0, ptr noundef %287) #23
  %320 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %321 = tail call i32 @fputc(i32 10, ptr %320)
  br label %322

322:                                              ; preds = %319, %315, %312
  %323 = icmp sgt i64 %284, 1
  br i1 %323, label %283, label %324, !llvm.loop !267

324:                                              ; preds = %322, %273
  %325 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %326 = load i32, ptr %325, align 8, !tbaa !62
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %378

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %330 = sext i32 %2 to i64
  %331 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %332 = zext nneg i32 %6 to i64
  %333 = zext nneg i32 %326 to i64
  br label %334

334:                                              ; preds = %328, %376
  %335 = phi i64 [ %333, %328 ], [ %336, %376 ]
  %336 = add nsw i64 %335, -1
  %337 = load ptr, ptr %329, align 8, !tbaa !63
  %338 = getelementptr inbounds %struct.eqn_d, ptr %337, i64 %336
  %339 = getelementptr inbounds %struct.eqn_d, ptr %337, i64 %336, i32 3
  %340 = load ptr, ptr %339, align 8, !tbaa !42
  %341 = getelementptr inbounds i32, ptr %340, i64 %330
  %342 = load i32, ptr %341, align 4, !tbaa !44
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %362, label %344

344:                                              ; preds = %334
  %345 = mul nsw i32 %342, %3
  store i32 0, ptr %341, align 4, !tbaa !44
  %346 = load ptr, ptr @packing, align 8, !tbaa !54
  %347 = load ptr, ptr %331, align 8, !tbaa !42
  br label %348

348:                                              ; preds = %344, %348
  %349 = phi i64 [ %332, %344 ], [ %359, %348 ]
  %350 = getelementptr inbounds i32, ptr %346, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !44
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, ptr %347, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !44
  %355 = mul nsw i32 %345, %354
  %356 = getelementptr inbounds i32, ptr %340, i64 %352
  %357 = load i32, ptr %356, align 4, !tbaa !44
  %358 = sub nsw i32 %357, %355
  store i32 %358, ptr %356, align 4, !tbaa !44
  %359 = add nsw i64 %349, -1
  %360 = trunc i64 %349 to i32
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %348, label %362, !llvm.loop !268

362:                                              ; preds = %348, %334
  %363 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %364 = icmp eq ptr %363, null
  br i1 %364, label %376, label %365

365:                                              ; preds = %362
  %366 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %367 = and i32 %366, 8
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %376, label %369

369:                                              ; preds = %365
  %370 = load i32, ptr %338, align 8, !tbaa !46
  %371 = tail call fastcc ptr @omega_var_to_str(i32 noundef %370) #23
  %372 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %363, ptr noundef nonnull @.str.16, ptr noundef nonnull %371) #23
  %373 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call fastcc void @omega_print_term(ptr noundef %373, ptr noundef nonnull %0, ptr noundef nonnull %338, i32 noundef 1) #23
  %374 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %375 = tail call i32 @fputc(i32 10, ptr %374)
  br label %376

376:                                              ; preds = %369, %365, %362
  %377 = icmp sgt i64 %335, 1
  br i1 %377, label %334, label %378, !llvm.loop !269

378:                                              ; preds = %376, %324
  %379 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %380 = icmp eq ptr %379, null
  br i1 %380, label %390, label %381

381:                                              ; preds = %378
  %382 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %383 = and i32 %382, 8
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %390, label %385

385:                                              ; preds = %381
  %386 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 5, i64 1, ptr nonnull %379)
  %387 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %387, ptr noundef nonnull %0) #23
  %388 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %389 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 5, i64 1, ptr %388)
  br label %390

390:                                              ; preds = %385, %381, %378
  %391 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %429, label %393

393:                                              ; preds = %390
  %394 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef nonnull %0, i32 noundef %2) #23, !range !113
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %396, label %429

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %398 = load ptr, ptr %397, align 8, !tbaa !63
  %399 = load i32, ptr %325, align 8, !tbaa !62
  %400 = add nsw i32 %399, 1
  store i32 %400, ptr %325, align 8, !tbaa !62
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds %struct.eqn_d, ptr %398, i64 %401
  %403 = load i32, ptr %0, align 8, !tbaa !36
  %404 = icmp sgt i32 %403, -1
  br i1 %404, label %405, label %420

405:                                              ; preds = %396
  %406 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !42
  %408 = getelementptr inbounds %struct.eqn_d, ptr %398, i64 %401, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !42
  %410 = zext nneg i32 %403 to i64
  br label %411

411:                                              ; preds = %405, %411
  %412 = phi i64 [ %410, %405 ], [ %418, %411 ]
  %413 = getelementptr inbounds i32, ptr %407, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !44
  %415 = mul i32 %414, %3
  %416 = sub i32 0, %415
  %417 = getelementptr inbounds i32, ptr %409, i64 %412
  store i32 %416, ptr %417, align 4, !tbaa !44
  %418 = add nsw i64 %412, -1
  %419 = icmp eq i64 %412, 0
  br i1 %419, label %420, label %411, !llvm.loop !270

420:                                              ; preds = %411, %396
  %421 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %422 = load ptr, ptr %421, align 8, !tbaa !52
  %423 = sext i32 %2 to i64
  %424 = getelementptr inbounds i32, ptr %422, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !44
  store i32 %425, ptr %402, align 8, !tbaa !46
  %426 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 2
  %427 = load i32, ptr %426, align 8, !tbaa !47
  %428 = getelementptr inbounds %struct.eqn_d, ptr %398, i64 %401, i32 2
  store i32 %427, ptr %428, align 8, !tbaa !47
  br label %429

429:                                              ; preds = %218, %214, %211, %420, %393, %390, %76, %79, %97
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @setup_packing(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !35 !PGOFuncName !271 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr @packing, align 8
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %4, %20
  %10 = phi i64 [ %8, %4 ], [ %22, %20 ]
  %11 = phi i32 [ 0, %4 ], [ %21, %20 ]
  %12 = getelementptr inbounds i32, ptr %6, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = add nsw i32 %11, 1
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = trunc i64 %10 to i32
  store i32 %19, ptr %18, align 4, !tbaa !44
  br label %20

20:                                               ; preds = %9, %15
  %21 = phi i32 [ %16, %15 ], [ %11, %9 ]
  %22 = add nsw i64 %10, -1
  %23 = icmp sgt i64 %10, 0
  br i1 %23, label %9, label %24, !llvm.loop !272

24:                                               ; preds = %20, %2
  %25 = phi i32 [ 0, %2 ], [ %21, %20 ]
  ret i32 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_substitute_red_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #10 !prof !35 !PGOFuncName !273 {
  %7 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8 1, ptr %4, align 1, !tbaa !87
  br label %39

18:                                               ; preds = %13
  store i32 0, ptr %10, align 4, !tbaa !44
  %19 = icmp sgt i32 %5, -1
  br i1 %19, label %20, label %39

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = load ptr, ptr @packing, align 8, !tbaa !54
  %24 = mul i32 %11, %3
  %25 = zext nneg i32 %5 to i64
  br label %26

26:                                               ; preds = %20, %26
  %27 = phi i64 [ %25, %20 ], [ %37, %26 ]
  %28 = getelementptr inbounds i32, ptr %23, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %22, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !44
  %33 = mul i32 %24, %32
  %34 = getelementptr inbounds i32, ptr %8, i64 %30
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = sub nsw i32 %35, %33
  store i32 %36, ptr %34, align 4, !tbaa !44
  %37 = add nsw i64 %27, -1
  %38 = icmp eq i64 %27, 0
  br i1 %38, label %39, label %26, !llvm.loop !274

39:                                               ; preds = %26, %18, %17, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @coalesce(ptr nocapture noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !275 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %150

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %5 ], [ %16, %9 ]
  %12 = getelementptr inbounds %struct.eqn_d, ptr %7, i64 %10, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %9, !llvm.loop !276

19:                                               ; preds = %9
  %20 = icmp ult i32 %16, 2
  br i1 %20, label %150, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 65, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !83
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xmalloc(i64 noundef %25) #24
  %27 = load i32, ptr %2, align 4, !tbaa !59
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %35, label %136

29:                                               ; preds = %35
  %30 = icmp sgt i32 %39, 0
  br i1 %30, label %31, label %136

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  br label %46

35:                                               ; preds = %21, %35
  %36 = phi i64 [ %38, %35 ], [ 0, %21 ]
  %37 = getelementptr inbounds i8, ptr %26, i64 %36
  store i8 0, ptr %37, align 1, !tbaa !87
  %38 = add nuw nsw i64 %36, 1
  %39 = load i32, ptr %2, align 4, !tbaa !59
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %35, label %29, !llvm.loop !277

42:                                               ; preds = %118
  %43 = icmp sgt i32 %119, 0
  br i1 %43, label %44, label %136

44:                                               ; preds = %42
  %45 = zext nneg i32 %119 to i64
  br label %125

46:                                               ; preds = %31, %118
  %47 = phi i32 [ %39, %31 ], [ %119, %118 ]
  %48 = phi i64 [ 0, %31 ], [ %121, %118 ]
  %49 = phi i64 [ 1, %31 ], [ %124, %118 ]
  %50 = phi i32 [ 0, %31 ], [ %120, %118 ]
  %51 = load ptr, ptr %32, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct.eqn_d, ptr %51, i64 %48, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !47
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %118

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.eqn_d, ptr %51, i64 %48, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !45
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %118

59:                                               ; preds = %55
  %60 = add nuw nsw i64 %48, 1
  %61 = sext i32 %47 to i64
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %118

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %26, i64 %48
  br label %65

65:                                               ; preds = %63, %111
  %66 = phi i32 [ %47, %63 ], [ %112, %111 ]
  %67 = phi i32 [ %47, %63 ], [ %113, %111 ]
  %68 = phi i64 [ %49, %63 ], [ %115, %111 ]
  %69 = phi i32 [ %50, %63 ], [ %114, %111 ]
  %70 = load ptr, ptr %32, align 8, !tbaa !60
  %71 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %68, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !45
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %68
  %76 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %48
  %77 = load i32, ptr %76, align 8, !tbaa !46
  %78 = load i32, ptr %75, align 8, !tbaa !46
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %48, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !42
  %84 = load i32, ptr %83, align 4, !tbaa !44
  %85 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %68, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  %87 = load i32, ptr %86, align 4, !tbaa !44
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.eqn_d, ptr %70, i64 %68, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !47
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load ptr, ptr %33, align 8, !tbaa !57
  %96 = load i32, ptr %34, align 8, !tbaa !56
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %34, align 8, !tbaa !56
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.eqn_d, ptr %95, i64 %98
  %100 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %99, ptr noundef nonnull %76, i32 noundef %100) #23
  %101 = load i32, ptr %34, align 8, !tbaa !56
  %102 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %103 = getelementptr inbounds %struct.param_info, ptr %102, i64 66, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !83
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 2481, ptr noundef nonnull @.str.26) #24
  br label %107

107:                                              ; preds = %94, %106
  %108 = add nsw i32 %69, 1
  store i8 1, ptr %64, align 1, !tbaa !87
  %109 = getelementptr inbounds i8, ptr %26, i64 %68
  store i8 1, ptr %109, align 1, !tbaa !87
  %110 = load i32, ptr %2, align 4, !tbaa !59
  br label %111

111:                                              ; preds = %65, %74, %81, %90, %107
  %112 = phi i32 [ %66, %65 ], [ %110, %107 ], [ %66, %90 ], [ %66, %81 ], [ %66, %74 ]
  %113 = phi i32 [ %67, %65 ], [ %110, %107 ], [ %67, %90 ], [ %67, %81 ], [ %67, %74 ]
  %114 = phi i32 [ %69, %65 ], [ %108, %107 ], [ %69, %90 ], [ %69, %81 ], [ %69, %74 ]
  %115 = add nuw nsw i64 %68, 1
  %116 = trunc i64 %115 to i32
  %117 = icmp sgt i32 %113, %116
  br i1 %117, label %65, label %118, !llvm.loop !278

118:                                              ; preds = %111, %59, %46, %55
  %119 = phi i32 [ %47, %55 ], [ %47, %46 ], [ %47, %59 ], [ %112, %111 ]
  %120 = phi i32 [ %50, %55 ], [ %50, %46 ], [ %50, %59 ], [ %114, %111 ]
  %121 = add nuw nsw i64 %48, 1
  %122 = sext i32 %119 to i64
  %123 = icmp slt i64 %121, %122
  %124 = add nuw nsw i64 %49, 1
  br i1 %123, label %46, label %42, !llvm.loop !279

125:                                              ; preds = %44, %134
  %126 = phi i64 [ %45, %44 ], [ %127, %134 ]
  %127 = add nsw i64 %126, -1
  %128 = getelementptr inbounds i8, ptr %26, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !87
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = load i32, ptr %0, align 8, !tbaa !36
  %133 = trunc i64 %127 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %133, i32 noundef %132) #23
  br label %134

134:                                              ; preds = %125, %131
  %135 = icmp ugt i64 %126, 1
  br i1 %135, label %125, label %136, !llvm.loop !280

136:                                              ; preds = %134, %21, %29, %42
  %137 = phi i32 [ %120, %42 ], [ 0, %29 ], [ 0, %21 ], [ %120, %134 ]
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %142 = and i32 %141, 8
  %143 = icmp ne i32 %142, 0
  %144 = icmp ne i32 %137, 0
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %138, ptr noundef nonnull @.str.95, i32 noundef %137) #23
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %148, ptr noundef %0) #23
  br label %149

149:                                              ; preds = %146, %140, %136
  tail call void @free(ptr noundef %26) #23
  br label %150

150:                                              ; preds = %1, %19, %149
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @chain_unprotect(ptr nocapture noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !281 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 64, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #24
  %8 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef %0, i32 noundef 1) #23, !range !113
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  br label %13

13:                                               ; preds = %10, %34
  %14 = phi i64 [ 1, %10 ], [ %35, %34 ]
  %15 = trunc i64 %14 to i32
  %16 = tail call fastcc zeroext i8 @omega_wildcard_p(ptr noundef %0, i32 noundef %15) #23, !range !113
  %17 = getelementptr inbounds i8, ptr %7, i64 %14
  store i8 %16, ptr %17, align 1, !tbaa !87
  %18 = load i32, ptr %11, align 8, !tbaa !62
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = zext nneg i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %32
  %23 = phi i64 [ %21, %20 ], [ %24, %32 ]
  %24 = add nsw i64 %23, -1
  %25 = load ptr, ptr %12, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %24, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds i32, ptr %27, i64 %14
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i8 0, ptr %17, align 1, !tbaa !87
  br label %32

32:                                               ; preds = %22, %31
  %33 = icmp ugt i64 %23, 1
  br i1 %33, label %22, label %34, !llvm.loop !282

34:                                               ; preds = %32, %13
  %35 = add nuw i64 %14, 1
  %36 = trunc i64 %35 to i32
  %37 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef nonnull %0, i32 noundef %36) #23, !range !113
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %13, !llvm.loop !283

39:                                               ; preds = %34, %1
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 34, i64 1, ptr nonnull %40)
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %48, ptr noundef %0) #23
  %49 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef %0, i32 noundef 1) #23, !range !113
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %46, %61
  %52 = phi i64 [ %62, %61 ], [ 1, %46 ]
  %53 = getelementptr inbounds i8, ptr %7, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !87
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %58 = trunc i64 %52 to i32
  %59 = tail call fastcc ptr @omega_variable_to_str(ptr noundef %0, i32 noundef %58) #23
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.97, ptr noundef nonnull %59) #23
  br label %61

61:                                               ; preds = %51, %56
  %62 = add nuw i64 %52, 1
  %63 = trunc i64 %62 to i32
  %64 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef %0, i32 noundef %63) #23, !range !113
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %51, !llvm.loop !284

66:                                               ; preds = %61, %46, %42, %39
  store i32 1, ptr %2, align 4, !tbaa !44
  %67 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef %0, i32 noundef 1) #23, !range !113
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %66, %77
  %70 = phi i32 [ %79, %77 ], [ 1, %66 ]
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %7, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !87
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  call fastcc void @omega_unprotect_1(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %7) #23
  %76 = load i32, ptr %2, align 4, !tbaa !44
  br label %77

77:                                               ; preds = %69, %75
  %78 = phi i32 [ %70, %69 ], [ %76, %75 ]
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %2, align 4, !tbaa !44
  %80 = tail call fastcc zeroext i8 @omega_safe_var_p(ptr noundef %0, i32 noundef %79) #23, !range !113
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %69, !llvm.loop !285

82:                                               ; preds = %77, %66
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 22, i64 1, ptr nonnull %83)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %91, ptr noundef %0) #23
  br label %92

92:                                               ; preds = %89, %85, %82
  tail call void @free(ptr noundef %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_free_eliminations(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !286 {
  %3 = load i32, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %10 = sext i32 %1 to i64
  br label %13

11:                                               ; preds = %141
  %12 = icmp eq i8 %142, 0
  br i1 %12, label %146, label %13, !llvm.loop !287

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %3, %2 ], [ %143, %11 ]
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %146

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %141
  %19 = phi i64 [ %17, %16 ], [ %144, %141 ]
  %20 = phi i32 [ %14, %16 ], [ %143, %141 ]
  %21 = phi i8 [ 0, %16 ], [ %142, %141 ]
  %22 = load i32, ptr %4, align 4, !tbaa !59
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %29, %18
  %25 = phi i64 [ %26, %29 ], [ %23, %18 ]
  %26 = add nsw i64 %25, -1
  %27 = trunc i64 %25 to i32
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %26, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = getelementptr inbounds i32, ptr %32, i64 %19
  %34 = load i32, ptr %33, align 4, !tbaa !44
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %24, label %36, !llvm.loop !288

36:                                               ; preds = %29
  %37 = and i64 %26, 4294967295
  %38 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %37, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds i32, ptr %39, i64 %19
  %41 = load i32, ptr %40, align 4, !tbaa !44
  %42 = icmp sgt i32 %41, 0
  %43 = icmp eq i32 %27, 1
  br i1 %42, label %44, label %58

44:                                               ; preds = %36
  br i1 %43, label %72, label %45

45:                                               ; preds = %44
  %46 = add nsw i32 %27, -2
  br label %50

47:                                               ; preds = %50
  %48 = add nsw i32 %51, -1
  %49 = icmp sgt i32 %51, 0
  br i1 %49, label %50, label %72, !llvm.loop !289

50:                                               ; preds = %45, %47
  %51 = phi i32 [ %48, %47 ], [ %46, %45 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %52, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = getelementptr inbounds i32, ptr %54, i64 %19
  %56 = load i32, ptr %55, align 4, !tbaa !44
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %141, label %47

58:                                               ; preds = %36
  br i1 %43, label %72, label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %27, -2
  br label %64

61:                                               ; preds = %64
  %62 = add nsw i32 %65, -1
  %63 = icmp sgt i32 %65, 0
  br i1 %63, label %64, label %72, !llvm.loop !290

64:                                               ; preds = %59, %61
  %65 = phi i32 [ %62, %61 ], [ %60, %59 ]
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %66, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !42
  %69 = getelementptr inbounds i32, ptr %68, i64 %19
  %70 = load i32, ptr %69, align 4, !tbaa !44
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %141, label %61

72:                                               ; preds = %24, %61, %47, %58, %44
  %73 = trunc i64 %26 to i32
  %74 = load i32, ptr %6, align 8, !tbaa !62
  %75 = zext i32 %74 to i64
  br label %76

76:                                               ; preds = %80, %72
  %77 = phi i64 [ %81, %80 ], [ %75, %72 ]
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = add nsw i64 %77, -1
  %82 = load ptr, ptr %7, align 8, !tbaa !63
  %83 = getelementptr inbounds %struct.eqn_d, ptr %82, i64 %81, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !42
  %85 = getelementptr inbounds i32, ptr %84, i64 %19
  %86 = load i32, ptr %85, align 4, !tbaa !44
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %76, label %141, !llvm.loop !291

88:                                               ; preds = %76
  %89 = load i32, ptr %8, align 8, !tbaa !56
  %90 = zext i32 %89 to i64
  br label %91

91:                                               ; preds = %95, %88
  %92 = phi i64 [ %96, %95 ], [ %90, %88 ]
  %93 = trunc i64 %92 to i32
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = add nsw i64 %92, -1
  %97 = load ptr, ptr %9, align 8, !tbaa !57
  %98 = getelementptr inbounds %struct.eqn_d, ptr %97, i64 %96, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  %100 = getelementptr inbounds i32, ptr %99, i64 %19
  %101 = load i32, ptr %100, align 4, !tbaa !44
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %91, label %141, !llvm.loop !292

103:                                              ; preds = %91
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = trunc i64 %19 to i32
  %112 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %111) #23
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %104, ptr noundef nonnull @.str.142, ptr noundef nonnull %112) #23
  br label %114

114:                                              ; preds = %110, %106, %103
  br i1 %28, label %115, label %137

115:                                              ; preds = %114
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %73, i32 noundef %20) #23
  %116 = icmp eq i32 %27, 1
  br i1 %116, label %133, label %117

117:                                              ; preds = %115
  %118 = add i64 %25, 4294967294
  %119 = and i64 %118, 4294967295
  br label %120

120:                                              ; preds = %117, %130
  %121 = phi i64 [ %119, %117 ], [ %131, %130 ]
  %122 = load ptr, ptr %5, align 8, !tbaa !60
  %123 = getelementptr inbounds %struct.eqn_d, ptr %122, i64 %121, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !42
  %125 = getelementptr inbounds i32, ptr %124, i64 %19
  %126 = load i32, ptr %125, align 4, !tbaa !44
  %127 = icmp eq i32 %126, 0
  %128 = trunc i64 %121 to i32
  br i1 %127, label %130, label %129

129:                                              ; preds = %120
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %128, i32 noundef %20) #23
  br label %130

130:                                              ; preds = %120, %129
  %131 = add nsw i64 %121, -1
  %132 = icmp sgt i32 %128, 0
  br i1 %132, label %120, label %133, !llvm.loop !293

133:                                              ; preds = %130, %115
  %134 = sext i32 %20 to i64
  %135 = icmp slt i64 %19, %134
  %136 = zext i1 %135 to i8
  br label %137

137:                                              ; preds = %133, %114
  %138 = phi i8 [ %136, %133 ], [ %21, %114 ]
  %139 = trunc i64 %19 to i32
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %139) #23
  %140 = load i32, ptr %0, align 8, !tbaa !36
  br label %141

141:                                              ; preds = %64, %50, %80, %95, %137
  %142 = phi i8 [ %138, %137 ], [ %21, %95 ], [ %21, %80 ], [ %21, %50 ], [ %21, %64 ]
  %143 = phi i32 [ %140, %137 ], [ %20, %95 ], [ %20, %80 ], [ %20, %50 ], [ %20, %64 ]
  %144 = add nsw i64 %19, -1
  %145 = icmp sgt i64 %144, %10
  br i1 %145, label %18, label %11, !llvm.loop !294

146:                                              ; preds = %13, %11
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %148 = icmp eq ptr %147, null
  br i1 %148, label %158, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = tail call i64 @fwrite(ptr nonnull @.str.143, i64 26, i64 1, ptr nonnull %147)
  %155 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %155, ptr noundef nonnull %0) #23
  %156 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %157 = tail call i32 @fputc(i32 10, ptr %156)
  br label %158

158:                                              ; preds = %153, %149, %146
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @check_pos_mul(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !295 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = sdiv i32 2147483647, %0
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 123, ptr noundef nonnull @.str.26) #24
  br label %8

8:                                                ; preds = %7, %4, %2
  %9 = mul nsw i32 %1, %0
  ret i32 %9
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_print_geq_extra(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !35 !PGOFuncName !296 {
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, i32 noundef 1) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @omega_delete_geq_extra(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !35 !PGOFuncName !297 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.146, i32 noundef %1) #23
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %15
  tail call fastcc void @omega_print_geq_extra(ptr noundef %12, ptr noundef %0, ptr noundef %16) #23
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %10, %6, %3
  %20 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !59
  %22 = add nsw i32 %21, -1
  %23 = icmp sgt i32 %22, %1
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %27
  %29 = zext nneg i32 %22 to i64
  %30 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %29
  tail call fastcc void @omega_copy_eqn(ptr noundef %28, ptr noundef %30, i32 noundef %2) #23
  %31 = load i32, ptr %20, align 4, !tbaa !59
  %32 = add nsw i32 %31, -1
  br label %33

33:                                               ; preds = %24, %19
  %34 = phi i32 [ %32, %24 ], [ %22, %19 ]
  store i32 %34, ptr %20, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @check_mul(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !298 {
  %3 = icmp sgt i32 %0, -1
  %4 = icmp sgt i32 %1, -1
  br i1 %3, label %5, label %12

5:                                                ; preds = %2
  br i1 %4, label %6, label %8

6:                                                ; preds = %5
  %7 = tail call fastcc i32 @check_pos_mul(i32 noundef %0, i32 noundef %1) #23
  br label %20

8:                                                ; preds = %5
  %9 = sub nsw i32 0, %1
  %10 = tail call fastcc i32 @check_pos_mul(i32 noundef %0, i32 noundef %9) #23
  %11 = sub nsw i32 0, %10
  br label %20

12:                                               ; preds = %2
  %13 = sub nsw i32 0, %0
  br i1 %4, label %14, label %17

14:                                               ; preds = %12
  %15 = tail call fastcc i32 @check_pos_mul(i32 noundef %13, i32 noundef %1) #23
  %16 = sub nsw i32 0, %15
  br label %20

17:                                               ; preds = %12
  %18 = sub nsw i32 0, %1
  %19 = tail call fastcc i32 @check_pos_mul(i32 noundef %13, i32 noundef %18) #23
  br label %20

20:                                               ; preds = %17, %14, %8, %6
  %21 = phi i32 [ %7, %6 ], [ %11, %8 ], [ %16, %14 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @omega_alloc_problem(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !35 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 64, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = icmp slt i32 %5, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 5495, ptr noundef nonnull @.str.26) #24
  br label %8

8:                                                ; preds = %2, %7
  tail call void @omega_initialize() #23
  %9 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #24
  %10 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.param_info, ptr %10, i64 64, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !83
  %13 = add nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 4) #24
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !52
  %17 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.param_info, ptr %17, i64 64, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = add nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @xcalloc(i64 noundef %21, i64 noundef 4) #24
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 9
  store ptr %22, ptr %23, align 8, !tbaa !66
  %24 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.param_info, ptr %24, i64 65, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !83
  %27 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef %26) #23
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 10
  store ptr %27, ptr %28, align 8, !tbaa !60
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 66, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !83
  %32 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef %31) #23
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 11
  store ptr %32, ptr %33, align 8, !tbaa !57
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 64, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !83
  %37 = add nsw i32 %36, 1
  %38 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef %37) #23
  %39 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 12
  store ptr %38, ptr %39, align 8, !tbaa !63
  %40 = load i32, ptr @hash_version, align 4, !tbaa !44
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 5
  store i32 %40, ptr %41, align 4, !tbaa !130
  store i32 %0, ptr %9, align 8, !tbaa !36
  %42 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 1
  store i32 %1, ptr %42, align 4, !tbaa !69
  %43 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 6
  store i8 0, ptr %43, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 7
  store i8 0, ptr %44, align 1, !tbaa !120
  %45 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 2
  store i32 0, ptr %45, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 3
  store i32 0, ptr %46, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 4
  store i32 0, ptr %47, align 8, !tbaa !62
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @omega_problem_has_red_equations(ptr noundef %0) local_unnamed_addr #7 !prof !35 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.151, i64 28, i64 1, ptr nonnull %2)
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %10, ptr noundef %0) #23
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %14 = load i32, ptr @may_be_red, align 4, !tbaa !44
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @may_be_red, align 4, !tbaa !44
  store i1 true, ptr @create_color, align 1
  %16 = tail call i32 @omega_simplify_problem(ptr noundef %0) #23
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr @may_be_red, align 4, !tbaa !44
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr @may_be_red, align 4, !tbaa !44
  %20 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  br i1 %17, label %22, label %51

22:                                               ; preds = %11
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.152, i64 14, i64 1, ptr nonnull %23)
  br label %31

31:                                               ; preds = %29, %25, %22
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  store i32 0, ptr %32, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %33, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  store i32 1, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 0, i32 2
  store i32 1, ptr %37, align 8, !tbaa !47
  %38 = load i32, ptr %0, align 8, !tbaa !36
  %39 = icmp sgt i32 %38, 0
  %40 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  br i1 %39, label %42, label %50

42:                                               ; preds = %31
  %43 = zext nneg i32 %38 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = add nsw i32 %38, -1
  %46 = zext nneg i32 %45 to i64
  %47 = sub nsw i64 %43, %46
  %48 = shl nsw i64 %47, 2
  %49 = getelementptr i8, ptr %41, i64 %48
  tail call void @llvm.memset.p0.i64(ptr align 4 %49, i8 0, i64 %44, i1 false), !tbaa !44
  br label %50

50:                                               ; preds = %31, %42
  store i32 1, ptr %41, align 4, !tbaa !44
  br label %178

51:                                               ; preds = %11
  tail call fastcc void @free_red_eliminations(ptr noundef %0) #23
  %52 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !56
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 4889, ptr noundef nonnull @.str.26) #24
  br label %56

56:                                               ; preds = %51, %55
  %57 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !59
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %178

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  %63 = zext nneg i32 %58 to i64
  br label %64

64:                                               ; preds = %60, %64
  %65 = phi i64 [ %63, %60 ], [ %67, %64 ]
  %66 = phi i8 [ 0, %60 ], [ %71, %64 ]
  %67 = add nsw i64 %65, -1
  %68 = getelementptr inbounds %struct.eqn_d, ptr %62, i64 %67, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !47
  %70 = icmp eq i32 %69, 1
  %71 = select i1 %70, i8 1, i8 %66
  %72 = icmp ugt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !299

73:                                               ; preds = %64
  %74 = icmp eq i8 %71, 0
  br i1 %74, label %178, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !69
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %129

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %81 = zext nneg i32 %58 to i64
  %82 = zext nneg i32 %77 to i64
  br label %86

83:                                               ; preds = %114
  %84 = add nsw i64 %87, -1
  %85 = icmp sgt i64 %87, 1
  br i1 %85, label %86, label %129, !llvm.loop !300

86:                                               ; preds = %79, %83
  %87 = phi i64 [ %82, %79 ], [ %84, %83 ]
  br i1 %59, label %88, label %114

88:                                               ; preds = %86
  %89 = load ptr, ptr %80, align 8, !tbaa !60
  br label %90

90:                                               ; preds = %88, %110
  %91 = phi i64 [ %81, %88 ], [ %94, %110 ]
  %92 = phi i32 [ 0, %88 ], [ %112, %110 ]
  %93 = phi i32 [ 0, %88 ], [ %111, %110 ]
  %94 = add nsw i64 %91, -1
  %95 = getelementptr inbounds %struct.eqn_d, ptr %89, i64 %94, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !42
  %97 = getelementptr inbounds i32, ptr %96, i64 %87
  %98 = load i32, ptr %97, align 4, !tbaa !44
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = icmp sgt i32 %98, 0
  %102 = getelementptr inbounds %struct.eqn_d, ptr %89, i64 %94, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !47
  %104 = icmp eq i32 %103, 1
  %105 = select i1 %104, i32 2, i32 1
  br i1 %101, label %106, label %108

106:                                              ; preds = %100
  %107 = or i32 %105, %92
  br label %110

108:                                              ; preds = %100
  %109 = or i32 %105, %93
  br label %110

110:                                              ; preds = %90, %108, %106
  %111 = phi i32 [ %93, %106 ], [ %109, %108 ], [ %93, %90 ]
  %112 = phi i32 [ %107, %106 ], [ %92, %108 ], [ %92, %90 ]
  %113 = icmp sgt i64 %91, 1
  br i1 %113, label %90, label %114, !llvm.loop !301

114:                                              ; preds = %110, %86
  %115 = phi i32 [ 0, %86 ], [ %111, %110 ]
  %116 = phi i32 [ 0, %86 ], [ %112, %110 ]
  %117 = icmp ne i32 %115, 2
  %118 = icmp ne i32 %116, 2
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %83, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %122 = icmp eq ptr %121, null
  br i1 %122, label %178, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %178, label %127

127:                                              ; preds = %123
  %128 = tail call i64 @fwrite(ptr nonnull @.str.153, i64 38, i64 1, ptr nonnull %121)
  br label %178

129:                                              ; preds = %83, %75
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %134 = and i32 %133, 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = tail call i64 @fwrite(ptr nonnull @.str.154, i64 68, i64 1, ptr nonnull %130)
  br label %138

138:                                              ; preds = %136, %132, %129
  %139 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  tail call void @omega_eliminate_red(ptr noundef nonnull %0, i8 noundef zeroext 1) #23
  %141 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %142 = add nsw i32 %141, -1
  store i32 %142, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !44
  %143 = load i32, ptr %52, align 8, !tbaa !56
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 4942, ptr noundef nonnull @.str.26) #24
  br label %146

146:                                              ; preds = %138, %145
  %147 = load i32, ptr %57, align 4, !tbaa !59
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %151 = load ptr, ptr %150, align 8, !tbaa !60
  %152 = zext nneg i32 %147 to i64
  br label %153

153:                                              ; preds = %149, %153
  %154 = phi i64 [ %152, %149 ], [ %156, %153 ]
  %155 = phi i8 [ 0, %149 ], [ %160, %153 ]
  %156 = add nsw i64 %154, -1
  %157 = getelementptr inbounds %struct.eqn_d, ptr %151, i64 %156, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !47
  %159 = icmp eq i32 %158, 1
  %160 = select i1 %159, i8 1, i8 %155
  %161 = icmp ugt i64 %154, 1
  br i1 %161, label %153, label %162, !llvm.loop !302

162:                                              ; preds = %153, %146
  %163 = phi i8 [ 0, %146 ], [ %160, %153 ]
  %164 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %165 = icmp eq ptr %164, null
  br i1 %165, label %178, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %168 = and i32 %167, 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %166
  %171 = icmp eq i8 %163, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %170
  %173 = tail call i64 @fwrite(ptr nonnull @.str.155, i64 58, i64 1, ptr nonnull %164)
  br label %176

174:                                              ; preds = %170
  %175 = tail call i64 @fwrite(ptr nonnull @.str.156, i64 42, i64 1, ptr nonnull %164)
  br label %176

176:                                              ; preds = %174, %172
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %177, ptr noundef nonnull %0) #23
  br label %178

178:                                              ; preds = %56, %120, %123, %127, %176, %166, %162, %73, %50
  %179 = phi i8 [ 1, %50 ], [ 0, %73 ], [ %163, %162 ], [ %163, %166 ], [ %163, %176 ], [ 1, %127 ], [ 1, %123 ], [ 1, %120 ], [ 0, %56 ]
  ret i8 %179
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_red_eliminations(ptr nocapture noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !303 {
  %2 = load i32, ptr %0, align 8, !tbaa !36
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 64, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #24
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 64, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @xmalloc(i64 noundef %11) #24
  %13 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.param_info, ptr %13, i64 65, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !83
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @xmalloc(i64 noundef %16) #24
  %18 = icmp slt i32 %2, 1
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = zext nneg i32 %2 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %20, %19 ], [ %25, %21 ]
  %23 = getelementptr inbounds i8, ptr %7, i64 %22
  store i8 0, ptr %23, align 1, !tbaa !87
  %24 = getelementptr inbounds i8, ptr %12, i64 %22
  store i8 0, ptr %24, align 1, !tbaa !87
  %25 = add nsw i64 %22, -1
  %26 = icmp ugt i64 %22, 1
  br i1 %26, label %21, label %27, !llvm.loop !304

27:                                               ; preds = %21, %1
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !59
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = zext i32 %2 to i64
  br label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %35 = icmp slt i32 %2, 1
  %36 = zext i32 %2 to i64
  %37 = zext nneg i32 %29 to i64
  br label %45

38:                                               ; preds = %67, %31
  %39 = phi i64 [ %32, %31 ], [ %36, %67 ]
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %42 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %43 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %44 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  br i1 %18, label %220, label %72

45:                                               ; preds = %33, %67
  %46 = phi i64 [ %37, %33 ], [ %47, %67 ]
  %47 = add nsw i64 %46, -1
  %48 = getelementptr inbounds i8, ptr %17, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !87
  %49 = load ptr, ptr %34, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.eqn_d, ptr %49, i64 %47, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !47
  %52 = icmp ne i32 %51, 1
  %53 = select i1 %52, i1 true, i1 %35
  br i1 %53, label %67, label %54

54:                                               ; preds = %45, %64
  %55 = phi i64 [ %65, %64 ], [ %36, %45 ]
  %56 = load ptr, ptr %34, align 8, !tbaa !60
  %57 = getelementptr inbounds %struct.eqn_d, ptr %56, i64 %47, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !42
  %59 = getelementptr inbounds i32, ptr %58, i64 %55
  %60 = load i32, ptr %59, align 4, !tbaa !44
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds i8, ptr %7, i64 %55
  store i8 1, ptr %63, align 1, !tbaa !87
  br label %64

64:                                               ; preds = %54, %62
  %65 = add nsw i64 %55, -1
  %66 = icmp sgt i64 %55, 1
  br i1 %66, label %54, label %67, !llvm.loop !305

67:                                               ; preds = %64, %45
  %68 = icmp sgt i64 %46, 1
  br i1 %68, label %45, label %38, !llvm.loop !306

69:                                               ; preds = %213
  %70 = icmp eq i8 %214, 0
  %71 = or i1 %70, %18
  br i1 %71, label %220, label %217

72:                                               ; preds = %38, %217
  %73 = phi i64 [ %218, %217 ], [ %39, %38 ]
  %74 = phi i8 [ %219, %217 ], [ 0, %38 ]
  %75 = getelementptr inbounds i8, ptr %7, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !87
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %213

78:                                               ; preds = %72
  %79 = getelementptr inbounds i8, ptr %12, i64 %73
  %80 = load i8, ptr %79, align 1, !tbaa !87
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %213

82:                                               ; preds = %78
  %83 = load i32, ptr %28, align 4, !tbaa !59
  %84 = add i32 %83, -1
  %85 = icmp sgt i32 %83, 0
  br i1 %85, label %86, label %153

86:                                               ; preds = %82
  %87 = zext nneg i32 %84 to i64
  %88 = add nsw i32 %83, -2
  br label %89

89:                                               ; preds = %86, %103
  %90 = phi i32 [ %88, %86 ], [ %107, %103 ]
  %91 = phi i64 [ %87, %86 ], [ %104, %103 ]
  %92 = phi i32 [ %83, %86 ], [ %106, %103 ]
  %93 = getelementptr inbounds i8, ptr %17, i64 %91
  %94 = load i8, ptr %93, align 1, !tbaa !87
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load ptr, ptr %40, align 8, !tbaa !60
  %98 = getelementptr inbounds %struct.eqn_d, ptr %97, i64 %91, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  %100 = getelementptr inbounds i32, ptr %99, i64 %73
  %101 = load i32, ptr %100, align 4, !tbaa !44
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %89, %96
  %104 = add nsw i64 %91, -1
  %105 = icmp sgt i64 %91, 0
  %106 = trunc i64 %91 to i32
  %107 = add i32 %90, -1
  br i1 %105, label %89, label %153, !llvm.loop !307

108:                                              ; preds = %96
  %109 = trunc i64 %91 to i32
  %110 = and i64 %91, 4294967295
  %111 = getelementptr inbounds %struct.eqn_d, ptr %97, i64 %110, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !42
  %113 = getelementptr inbounds i32, ptr %112, i64 %73
  %114 = load i32, ptr %113, align 4, !tbaa !44
  %115 = icmp sgt i32 %114, 0
  %116 = icmp ugt i32 %92, 1
  br i1 %115, label %117, label %135

117:                                              ; preds = %108
  br i1 %116, label %118, label %153

118:                                              ; preds = %117
  %119 = zext i32 %90 to i64
  br label %120

120:                                              ; preds = %118, %131
  %121 = phi i64 [ %119, %118 ], [ %132, %131 ]
  %122 = getelementptr inbounds i8, ptr %17, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !87
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.eqn_d, ptr %97, i64 %121, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !42
  %128 = getelementptr inbounds i32, ptr %127, i64 %73
  %129 = load i32, ptr %128, align 4, !tbaa !44
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %213, label %131

131:                                              ; preds = %120, %125
  %132 = add nsw i64 %121, -1
  %133 = trunc i64 %121 to i32
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %120, label %153, !llvm.loop !308

135:                                              ; preds = %108
  br i1 %116, label %136, label %153

136:                                              ; preds = %135
  %137 = zext i32 %90 to i64
  br label %138

138:                                              ; preds = %136, %149
  %139 = phi i64 [ %137, %136 ], [ %150, %149 ]
  %140 = getelementptr inbounds i8, ptr %17, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !87
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.eqn_d, ptr %97, i64 %139, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !42
  %146 = getelementptr inbounds i32, ptr %145, i64 %73
  %147 = load i32, ptr %146, align 4, !tbaa !44
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %213, label %149

149:                                              ; preds = %138, %143
  %150 = add nsw i64 %139, -1
  %151 = trunc i64 %139 to i32
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %138, label %153, !llvm.loop !309

153:                                              ; preds = %103, %149, %131, %82, %135, %117
  %154 = phi i32 [ %109, %117 ], [ %109, %135 ], [ %84, %82 ], [ %109, %131 ], [ %109, %149 ], [ -1, %103 ]
  %155 = load i32, ptr %41, align 8, !tbaa !62
  %156 = zext i32 %155 to i64
  br label %157

157:                                              ; preds = %161, %153
  %158 = phi i64 [ %162, %161 ], [ %156, %153 ]
  %159 = trunc i64 %158 to i32
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = add nsw i64 %158, -1
  %163 = load ptr, ptr %42, align 8, !tbaa !63
  %164 = getelementptr inbounds %struct.eqn_d, ptr %163, i64 %162, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !42
  %166 = getelementptr inbounds i32, ptr %165, i64 %73
  %167 = load i32, ptr %166, align 4, !tbaa !44
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %157, label %213, !llvm.loop !310

169:                                              ; preds = %157
  %170 = load i32, ptr %43, align 8, !tbaa !56
  %171 = zext i32 %170 to i64
  br label %172

172:                                              ; preds = %176, %169
  %173 = phi i64 [ %177, %176 ], [ %171, %169 ]
  %174 = trunc i64 %173 to i32
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = add nsw i64 %173, -1
  %178 = load ptr, ptr %44, align 8, !tbaa !57
  %179 = getelementptr inbounds %struct.eqn_d, ptr %178, i64 %177, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !42
  %181 = getelementptr inbounds i32, ptr %180, i64 %73
  %182 = load i32, ptr %181, align 4, !tbaa !44
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %172, label %213, !llvm.loop !311

184:                                              ; preds = %172
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %186 = icmp eq ptr %185, null
  br i1 %186, label %195, label %187

187:                                              ; preds = %184
  %188 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %189 = and i32 %188, 8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = trunc i64 %73 to i32
  %193 = tail call fastcc ptr @omega_variable_to_str(ptr noundef nonnull %0, i32 noundef %192) #23
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %185, ptr noundef nonnull @.str.157, ptr noundef nonnull %193) #23
  br label %195

195:                                              ; preds = %191, %187, %184
  %196 = icmp sgt i32 %154, -1
  br i1 %196, label %197, label %212

197:                                              ; preds = %195
  %198 = zext nneg i32 %154 to i64
  br label %199

199:                                              ; preds = %197, %209
  %200 = phi i64 [ %198, %197 ], [ %210, %209 ]
  %201 = load ptr, ptr %40, align 8, !tbaa !60
  %202 = getelementptr inbounds %struct.eqn_d, ptr %201, i64 %200, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !42
  %204 = getelementptr inbounds i32, ptr %203, i64 %73
  %205 = load i32, ptr %204, align 4, !tbaa !44
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds i8, ptr %17, i64 %200
  store i8 1, ptr %208, align 1, !tbaa !87
  br label %209

209:                                              ; preds = %199, %207
  %210 = add nsw i64 %200, -1
  %211 = icmp sgt i64 %200, 0
  br i1 %211, label %199, label %212, !llvm.loop !312

212:                                              ; preds = %209, %195
  store i8 1, ptr %79, align 1, !tbaa !87
  br label %213

213:                                              ; preds = %143, %125, %161, %176, %212, %72, %78
  %214 = phi i8 [ %74, %72 ], [ %74, %78 ], [ 1, %212 ], [ %74, %176 ], [ %74, %161 ], [ %74, %125 ], [ %74, %143 ]
  %215 = add nsw i64 %73, -1
  %216 = icmp sgt i64 %73, 1
  br i1 %216, label %217, label %69

217:                                              ; preds = %213, %69
  %218 = phi i64 [ %215, %213 ], [ %39, %69 ]
  %219 = phi i8 [ %214, %213 ], [ 0, %69 ]
  br label %72, !llvm.loop !313

220:                                              ; preds = %69, %38
  %221 = load i32, ptr %28, align 4, !tbaa !59
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = zext nneg i32 %221 to i64
  br label %226

225:                                              ; preds = %234, %220
  br i1 %18, label %246, label %236

226:                                              ; preds = %223, %234
  %227 = phi i64 [ %224, %223 ], [ %228, %234 ]
  %228 = add nsw i64 %227, -1
  %229 = getelementptr inbounds i8, ptr %17, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !87
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %226
  %233 = trunc i64 %228 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %233, i32 noundef %2) #23
  br label %234

234:                                              ; preds = %226, %232
  %235 = icmp ugt i64 %227, 1
  br i1 %235, label %226, label %225, !llvm.loop !314

236:                                              ; preds = %225, %243
  %237 = phi i64 [ %244, %243 ], [ %39, %225 ]
  %238 = getelementptr inbounds i8, ptr %12, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !87
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = trunc i64 %237 to i32
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %242) #23
  br label %243

243:                                              ; preds = %236, %241
  %244 = add nsw i64 %237, -1
  %245 = icmp sgt i64 %237, 1
  br i1 %245, label %236, label %246, !llvm.loop !315

246:                                              ; preds = %243, %225
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %248 = icmp eq ptr %247, null
  br i1 %248, label %258, label %249

249:                                              ; preds = %246
  %250 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %251 = and i32 %250, 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %249
  %254 = tail call i64 @fwrite(ptr nonnull @.str.158, i64 30, i64 1, ptr nonnull %247)
  %255 = load ptr, ptr @dump_file, align 8, !tbaa !54
  tail call void @omega_print_problem(ptr noundef %255, ptr noundef nonnull %0) #23
  %256 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %257 = tail call i32 @fputc(i32 10, ptr %256)
  br label %258

258:                                              ; preds = %253, %249, %246
  tail call void @free(ptr noundef %7) #23
  tail call void @free(ptr noundef %12) #23
  tail call void @free(ptr noundef %17) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @omega_simplify_approximate(ptr noundef %0) local_unnamed_addr #7 !prof !35 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.159, i64 27, i64 1, ptr nonnull %2)
  br label %10

10:                                               ; preds = %8, %4, %1
  store i1 true, ptr @in_approximate_mode, align 1
  %11 = tail call i32 @omega_simplify_problem(ptr noundef %0) #23
  store i1 false, ptr @in_approximate_mode, align 1
  %12 = load i32, ptr %0, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !69
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 4990, ptr noundef nonnull @.str.26) #24
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !44
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.160, i64 26, i64 1, ptr nonnull %18)
  br label %26

26:                                               ; preds = %24, %20, %17
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omega_unprotect_variable(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !35 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !44
  store i32 %8, ptr %3, align 4, !tbaa !44
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = xor i32 %8, -1
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !62
  %15 = icmp sgt i32 %14, %11
  br i1 %15, label %16, label %254

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = zext nneg i32 %11 to i64
  %20 = getelementptr inbounds %struct.eqn_d, ptr %18, i64 %19
  %21 = zext nneg i32 %14 to i64
  %22 = getelementptr inbounds %struct.eqn_d, ptr %18, i64 %21
  %23 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %20, ptr noundef %22, i32 noundef %23) #23
  %24 = load ptr, ptr %4, align 8, !tbaa !66
  %25 = load ptr, ptr %17, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %19
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %24, i64 %28
  store i32 %8, ptr %29, align 4, !tbaa !44
  br label %254

30:                                               ; preds = %2
  %31 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.param_info, ptr %31, i64 64, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !83
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 2
  %36 = tail call ptr @xmalloc(i64 noundef %35) #24
  %37 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !62
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %253

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = zext nneg i32 %8 to i64
  %44 = zext nneg i32 %38 to i64
  br label %45

45:                                               ; preds = %40, %45
  %46 = phi i64 [ %44, %40 ], [ %47, %45 ]
  %47 = add nsw i64 %46, -1
  %48 = getelementptr inbounds %struct.eqn_d, ptr %42, i64 %47, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = getelementptr inbounds i32, ptr %49, i64 %43
  %51 = load i32, ptr %50, align 4, !tbaa !44
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds i32, ptr %36, i64 %47
  store i32 %53, ptr %54, align 4, !tbaa !44
  %55 = icmp ugt i64 %46, 1
  br i1 %55, label %45, label %56, !llvm.loop !316

56:                                               ; preds = %45
  %57 = load i32, ptr %37, align 8, !tbaa !62
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %253

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %62 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %63 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %64 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %65 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %66 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %67 = zext nneg i32 %57 to i64
  br label %68

68:                                               ; preds = %59, %251
  %69 = phi i64 [ %67, %59 ], [ %70, %251 ]
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds i32, ptr %36, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !44
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %251, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %0, align 8, !tbaa !36
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %0, align 8, !tbaa !36
  %77 = load i32, ptr %60, align 4, !tbaa !69
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %60, align 4, !tbaa !69
  %79 = icmp slt i32 %77, %75
  %80 = load i32, ptr %61, align 4, !tbaa !59
  %81 = icmp sgt i32 %80, 0
  br i1 %79, label %82, label %162

82:                                               ; preds = %74
  br i1 %81, label %83, label %102

83:                                               ; preds = %82
  %84 = load ptr, ptr %62, align 8, !tbaa !60
  %85 = zext nneg i32 %80 to i64
  br label %86

86:                                               ; preds = %83, %86
  %87 = phi i64 [ %85, %83 ], [ %88, %86 ]
  %88 = add nsw i64 %87, -1
  %89 = getelementptr inbounds %struct.eqn_d, ptr %84, i64 %88, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !42
  %91 = load i32, ptr %60, align 4, !tbaa !69
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %90, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !44
  %95 = load i32, ptr %0, align 8, !tbaa !36
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %90, i64 %96
  store i32 %94, ptr %97, align 4, !tbaa !44
  %98 = load i32, ptr %60, align 4, !tbaa !69
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %90, i64 %99
  store i32 0, ptr %100, align 4, !tbaa !44
  %101 = icmp ugt i64 %87, 1
  br i1 %101, label %86, label %102, !llvm.loop !317

102:                                              ; preds = %86, %82
  %103 = load i32, ptr %63, align 8, !tbaa !56
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load ptr, ptr %64, align 8, !tbaa !57
  %107 = zext nneg i32 %103 to i64
  br label %108

108:                                              ; preds = %105, %108
  %109 = phi i64 [ %107, %105 ], [ %110, %108 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %110, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !42
  %113 = load i32, ptr %60, align 4, !tbaa !69
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %112, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !44
  %117 = load i32, ptr %0, align 8, !tbaa !36
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %112, i64 %118
  store i32 %116, ptr %119, align 4, !tbaa !44
  %120 = load i32, ptr %60, align 4, !tbaa !69
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %112, i64 %121
  store i32 0, ptr %122, align 4, !tbaa !44
  %123 = icmp ugt i64 %109, 1
  br i1 %123, label %108, label %124, !llvm.loop !318

124:                                              ; preds = %108, %102
  %125 = load i32, ptr %37, align 8, !tbaa !62
  %126 = icmp sgt i32 %125, 0
  %127 = load ptr, ptr %65, align 8, !tbaa !63
  br i1 %126, label %128, label %146

128:                                              ; preds = %124
  %129 = zext nneg i32 %125 to i64
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i64 [ %129, %128 ], [ %132, %130 ]
  %132 = add nsw i64 %131, -1
  %133 = getelementptr inbounds %struct.eqn_d, ptr %127, i64 %132, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !42
  %135 = load i32, ptr %60, align 4, !tbaa !69
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %134, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !44
  %139 = load i32, ptr %0, align 8, !tbaa !36
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, ptr %134, i64 %140
  store i32 %138, ptr %141, align 4, !tbaa !44
  %142 = load i32, ptr %60, align 4, !tbaa !69
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %134, i64 %143
  store i32 0, ptr %144, align 4, !tbaa !44
  %145 = icmp ugt i64 %131, 1
  br i1 %145, label %130, label %146, !llvm.loop !319

146:                                              ; preds = %130, %124
  %147 = load ptr, ptr %66, align 8, !tbaa !52
  %148 = load i32, ptr %60, align 4, !tbaa !69
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %147, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !44
  %152 = load i32, ptr %0, align 8, !tbaa !36
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, ptr %147, i64 %153
  store i32 %151, ptr %154, align 4, !tbaa !44
  %155 = load i32, ptr %0, align 8, !tbaa !36
  %156 = load ptr, ptr %4, align 8, !tbaa !66
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, ptr %147, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !44
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %156, i64 %160
  store i32 %155, ptr %161, align 4, !tbaa !44
  br label %205

162:                                              ; preds = %74
  br i1 %81, label %163, label %175

163:                                              ; preds = %162
  %164 = load ptr, ptr %62, align 8, !tbaa !60
  %165 = zext nneg i32 %80 to i64
  br label %166

166:                                              ; preds = %163, %166
  %167 = phi i64 [ %165, %163 ], [ %168, %166 ]
  %168 = add nsw i64 %167, -1
  %169 = getelementptr inbounds %struct.eqn_d, ptr %164, i64 %168, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !42
  %171 = load i32, ptr %60, align 4, !tbaa !69
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, ptr %170, i64 %172
  store i32 0, ptr %173, align 4, !tbaa !44
  %174 = icmp ugt i64 %167, 1
  br i1 %174, label %166, label %175, !llvm.loop !320

175:                                              ; preds = %166, %162
  %176 = load i32, ptr %63, align 8, !tbaa !56
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load ptr, ptr %64, align 8, !tbaa !57
  %180 = zext nneg i32 %176 to i64
  br label %181

181:                                              ; preds = %178, %181
  %182 = phi i64 [ %180, %178 ], [ %183, %181 ]
  %183 = add nsw i64 %182, -1
  %184 = getelementptr inbounds %struct.eqn_d, ptr %179, i64 %183, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !42
  %186 = load i32, ptr %60, align 4, !tbaa !69
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, ptr %185, i64 %187
  store i32 0, ptr %188, align 4, !tbaa !44
  %189 = icmp ugt i64 %182, 1
  br i1 %189, label %181, label %190, !llvm.loop !321

190:                                              ; preds = %181, %175
  %191 = load i32, ptr %37, align 8, !tbaa !62
  %192 = icmp sgt i32 %191, 0
  %193 = load ptr, ptr %65, align 8, !tbaa !63
  br i1 %192, label %194, label %205

194:                                              ; preds = %190
  %195 = zext nneg i32 %191 to i64
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ %195, %194 ], [ %198, %196 ]
  %198 = add nsw i64 %197, -1
  %199 = getelementptr inbounds %struct.eqn_d, ptr %193, i64 %198, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !42
  %201 = load i32, ptr %60, align 4, !tbaa !69
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, ptr %200, i64 %202
  store i32 0, ptr %203, align 4, !tbaa !44
  %204 = icmp ugt i64 %197, 1
  br i1 %204, label %196, label %205, !llvm.loop !322

205:                                              ; preds = %196, %190, %146
  %206 = phi ptr [ %193, %190 ], [ %127, %146 ], [ %193, %196 ]
  %207 = getelementptr inbounds %struct.eqn_d, ptr %206, i64 %70
  %208 = load i32, ptr %207, align 8, !tbaa !46
  %209 = load ptr, ptr %66, align 8, !tbaa !52
  %210 = load i32, ptr %60, align 4, !tbaa !69
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, ptr %209, i64 %211
  store i32 %208, ptr %212, align 4, !tbaa !44
  %213 = load i32, ptr %60, align 4, !tbaa !69
  %214 = load ptr, ptr %4, align 8, !tbaa !66
  %215 = sext i32 %208 to i64
  %216 = getelementptr inbounds i32, ptr %214, i64 %215
  store i32 %213, ptr %216, align 4, !tbaa !44
  %217 = load ptr, ptr %64, align 8, !tbaa !57
  %218 = load i32, ptr %63, align 8, !tbaa !56
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.eqn_d, ptr %217, i64 %219
  %221 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %220, ptr noundef nonnull %207, i32 noundef %221) #23
  %222 = load ptr, ptr %64, align 8, !tbaa !57
  %223 = load i32, ptr %63, align 8, !tbaa !56
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %63, align 8, !tbaa !56
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds %struct.eqn_d, ptr %222, i64 %225, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !42
  %228 = load i32, ptr %60, align 4, !tbaa !69
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %227, i64 %229
  store i32 -1, ptr %230, align 4, !tbaa !44
  %231 = load i32, ptr %63, align 8, !tbaa !56
  %232 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %233 = getelementptr inbounds %struct.param_info, ptr %232, i64 66, i32 1
  %234 = load i32, ptr %233, align 8, !tbaa !83
  %235 = icmp sgt i32 %231, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 5161, ptr noundef nonnull @.str.26) #24
  br label %237

237:                                              ; preds = %205, %236
  %238 = load i32, ptr %37, align 8, !tbaa !62
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %69, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = load ptr, ptr %65, align 8, !tbaa !63
  %243 = getelementptr inbounds %struct.eqn_d, ptr %242, i64 %70
  %244 = getelementptr %struct.eqn_d, ptr %242, i64 %239
  %245 = getelementptr %struct.eqn_d, ptr %244, i64 -1
  %246 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %243, ptr noundef %245, i32 noundef %246) #23
  %247 = load i32, ptr %37, align 8, !tbaa !62
  br label %248

248:                                              ; preds = %241, %237
  %249 = phi i32 [ %247, %241 ], [ %238, %237 ]
  %250 = add nsw i32 %249, -1
  store i32 %250, ptr %37, align 8, !tbaa !62
  br label %251

251:                                              ; preds = %68, %248
  %252 = icmp sgt i64 %69, 1
  br i1 %252, label %68, label %253, !llvm.loop !323

253:                                              ; preds = %251, %30, %56
  call fastcc void @omega_unprotect_1(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null) #23
  tail call void @free(ptr noundef %36) #23
  br label %254

254:                                              ; preds = %10, %16, %253
  tail call fastcc void @chain_unprotect(ptr noundef %0) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @omega_constrain_variable_sign(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 !prof !35 {
  %5 = load i32, ptr %0, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %4
  %13 = xor i32 %10, -1
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !59
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds %struct.eqn_d, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = zext nneg i32 %13 to i64
  %26 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %25
  tail call fastcc void @omega_copy_eqn(ptr noundef %22, ptr noundef %26, i32 noundef %5) #23
  %27 = icmp slt i32 %5, 0
  %28 = load ptr, ptr %19, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %21, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  br i1 %27, label %41, label %31

31:                                               ; preds = %15
  %32 = add nuw i32 %5, 1
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %39, %34 ]
  %36 = getelementptr inbounds i32, ptr %30, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !44
  %38 = mul nsw i32 %37, %3
  store i32 %38, ptr %36, align 4, !tbaa !44
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, %33
  br i1 %40, label %41, label %34, !llvm.loop !324

41:                                               ; preds = %34, %15
  %42 = load i32, ptr %30, align 4, !tbaa !44
  %43 = add nsw i32 %42, -1
  store i32 %43, ptr %30, align 4, !tbaa !44
  %44 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %21, i32 1
  store i32 1, ptr %44, align 4, !tbaa !45
  %45 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %21, i32 2
  br label %107

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !56
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !56
  %50 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.param_info, ptr %50, i64 66, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !83
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 5206, ptr noundef nonnull @.str.26) #24
  %55 = load i32, ptr %0, align 8, !tbaa !36
  br label %56

56:                                               ; preds = %46, %54
  %57 = phi i32 [ %5, %46 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = sext i32 %48 to i64
  %61 = getelementptr inbounds %struct.eqn_d, ptr %59, i64 %60
  %62 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !63
  %64 = zext nneg i32 %13 to i64
  %65 = getelementptr inbounds %struct.eqn_d, ptr %63, i64 %64
  tail call fastcc void @omega_copy_eqn(ptr noundef %61, ptr noundef %65, i32 noundef %57) #23
  %66 = load ptr, ptr %58, align 8, !tbaa !57
  %67 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %60, i32 2
  br label %107

68:                                               ; preds = %4
  %69 = icmp eq i32 %3, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !59
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !59
  %74 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !60
  %76 = sext i32 %72 to i64
  %77 = getelementptr inbounds %struct.eqn_d, ptr %75, i64 %76
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %77, i32 noundef %5) #23
  %78 = load ptr, ptr %74, align 8, !tbaa !60
  %79 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %76, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !42
  %81 = zext nneg i32 %10 to i64
  %82 = getelementptr inbounds i32, ptr %80, i64 %81
  store i32 %3, ptr %82, align 4, !tbaa !44
  store i32 -1, ptr %80, align 4, !tbaa !44
  %83 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %76, i32 1
  store i32 1, ptr %83, align 4, !tbaa !45
  %84 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %76, i32 2
  br label %107

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !56
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !56
  %89 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %90 = getelementptr inbounds %struct.param_info, ptr %89, i64 66, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !83
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 5223, ptr noundef nonnull @.str.26) #24
  %94 = load i32, ptr %0, align 8, !tbaa !36
  br label %95

95:                                               ; preds = %85, %93
  %96 = phi i32 [ %5, %85 ], [ %94, %93 ]
  %97 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %98 = load ptr, ptr %97, align 8, !tbaa !57
  %99 = sext i32 %87 to i64
  %100 = getelementptr inbounds %struct.eqn_d, ptr %98, i64 %99
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %100, i32 noundef %96) #23
  %101 = load ptr, ptr %97, align 8, !tbaa !57
  %102 = getelementptr inbounds %struct.eqn_d, ptr %101, i64 %99, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !42
  %104 = zext nneg i32 %10 to i64
  %105 = getelementptr inbounds i32, ptr %103, i64 %104
  store i32 1, ptr %105, align 4, !tbaa !44
  %106 = getelementptr inbounds %struct.eqn_d, ptr %101, i64 %99, i32 2
  br label %107

107:                                              ; preds = %70, %95, %41, %56
  %108 = phi ptr [ %84, %70 ], [ %106, %95 ], [ %45, %41 ], [ %67, %56 ]
  store i32 %1, ptr %108, align 8, !tbaa !47
  tail call void @omega_unprotect_variable(ptr noundef nonnull %0, i32 noundef %2) #23
  %109 = tail call i32 @omega_simplify_problem(ptr noundef nonnull %0) #23
  ret i32 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omega_constrain_variable_value(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 !prof !35 {
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !44
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %4
  %12 = xor i32 %9, -1
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !56
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !56
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 66, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !83
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 5246, ptr noundef nonnull @.str.26) #24
  br label %21

21:                                               ; preds = %11, %20
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = sext i32 %14 to i64
  %25 = getelementptr inbounds %struct.eqn_d, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = zext nneg i32 %12 to i64
  %29 = getelementptr inbounds %struct.eqn_d, ptr %27, i64 %28
  %30 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_copy_eqn(ptr noundef %25, ptr noundef %29, i32 noundef %30) #23
  %31 = load ptr, ptr %22, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.eqn_d, ptr %31, i64 %24, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = load i32, ptr %33, align 4, !tbaa !44
  br label %49

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !56
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = sext i32 %37 to i64
  %42 = getelementptr inbounds %struct.eqn_d, ptr %40, i64 %41
  %43 = load i32, ptr %0, align 8, !tbaa !36
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %42, i32 noundef %43) #23
  %44 = load ptr, ptr %39, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %41, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = zext nneg i32 %9 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  store i32 1, ptr %48, align 4, !tbaa !44
  br label %49

49:                                               ; preds = %35, %21
  %50 = phi i32 [ 0, %35 ], [ %34, %21 ]
  %51 = phi ptr [ %46, %35 ], [ %33, %21 ]
  %52 = phi i64 [ %41, %35 ], [ %24, %21 ]
  %53 = phi ptr [ %44, %35 ], [ %31, %21 ]
  %54 = sub nsw i32 %50, %3
  store i32 %54, ptr %51, align 4, !tbaa !44
  %55 = getelementptr inbounds %struct.eqn_d, ptr %53, i64 %52, i32 2
  store i32 %1, ptr %55, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @omega_query_variable(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #20 !prof !35 {
  %5 = load i32, ptr %0, align 8, !tbaa !36
  store i32 -134217727, ptr %2, align 4, !tbaa !44
  store i32 134217727, ptr %3, align 4, !tbaa !44
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = xor i32 %10, -1
  %14 = icmp slt i32 %5, 1
  %15 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  br i1 %14, label %31, label %20

20:                                               ; preds = %12
  %21 = add nuw i32 %5, 1
  %22 = zext i32 %21 to i64
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %31, label %26, !llvm.loop !325

26:                                               ; preds = %20, %23
  %27 = phi i64 [ 1, %20 ], [ %24, %23 ]
  %28 = getelementptr inbounds i32, ptr %19, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %131

31:                                               ; preds = %23, %12
  %32 = load i32, ptr %19, align 4, !tbaa !44
  store i32 %32, ptr %2, align 4, !tbaa !44
  store i32 %32, ptr %3, align 4, !tbaa !44
  br label %131

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !62
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = zext nneg i32 %10 to i64
  %41 = zext nneg i32 %35 to i64
  br label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ %41, %37 ], [ %45, %42 ]
  %44 = phi i8 [ 0, %37 ], [ %51, %42 ]
  %45 = add nsw i64 %43, -1
  %46 = getelementptr inbounds %struct.eqn_d, ptr %39, i64 %45, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds i32, ptr %47, i64 %40
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i8 %44, i8 1
  %52 = icmp ugt i64 %43, 1
  br i1 %52, label %42, label %53, !llvm.loop !326

53:                                               ; preds = %42, %33
  %54 = phi i8 [ 0, %33 ], [ %51, %42 ]
  %55 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !56
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  %61 = zext nneg i32 %10 to i64
  %62 = icmp slt i32 %5, 1
  %63 = add i32 %5, 1
  %64 = zext nneg i32 %56 to i64
  %65 = zext i32 %63 to i64
  br label %66

66:                                               ; preds = %58, %90
  %67 = phi i64 [ %64, %58 ], [ %69, %90 ]
  %68 = phi i8 [ %54, %58 ], [ %91, %90 ]
  %69 = add nsw i64 %67, -1
  %70 = getelementptr inbounds %struct.eqn_d, ptr %60, i64 %69, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = getelementptr inbounds i32, ptr %71, i64 %61
  %73 = load i32, ptr %72, align 4, !tbaa !44
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %66
  br i1 %62, label %86, label %76

76:                                               ; preds = %75, %83
  %77 = phi i64 [ %84, %83 ], [ 1, %75 ]
  %78 = icmp eq i64 %77, %61
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds i32, ptr %71, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !44
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76, %79
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, %65
  br i1 %85, label %86, label %76, !llvm.loop !327

86:                                               ; preds = %75, %83
  %87 = load i32, ptr %71, align 4, !tbaa !44
  %88 = mul i32 %73, %87
  %89 = sub i32 0, %88
  store i32 %89, ptr %3, align 4, !tbaa !44
  store i32 %89, ptr %2, align 4, !tbaa !44
  br label %131

90:                                               ; preds = %79, %66
  %91 = phi i8 [ %68, %66 ], [ 1, %79 ]
  %92 = icmp sgt i64 %67, 1
  br i1 %92, label %66, label %93, !llvm.loop !328

93:                                               ; preds = %90, %53
  %94 = phi i8 [ %54, %53 ], [ %91, %90 ]
  %95 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !59
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = zext nneg i32 %10 to i64
  %102 = sub nsw i32 0, %10
  %103 = zext nneg i32 %96 to i64
  br label %104

104:                                              ; preds = %98, %128
  %105 = phi i64 [ %103, %98 ], [ %107, %128 ]
  %106 = phi i8 [ %94, %98 ], [ %129, %128 ]
  %107 = add nsw i64 %105, -1
  %108 = getelementptr inbounds %struct.eqn_d, ptr %100, i64 %107, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !42
  %110 = getelementptr inbounds i32, ptr %109, i64 %101
  %111 = load i32, ptr %110, align 4, !tbaa !44
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.eqn_d, ptr %100, i64 %107
  %115 = load i32, ptr %114, align 8, !tbaa !46
  %116 = icmp eq i32 %115, %10
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, ptr %2, align 4, !tbaa !44
  %119 = load i32, ptr %109, align 4, !tbaa !44
  %120 = sub nsw i32 0, %119
  %121 = tail call i32 @llvm.smax.i32(i32 %118, i32 %120)
  store i32 %121, ptr %2, align 4, !tbaa !44
  br label %128

122:                                              ; preds = %113
  %123 = icmp eq i32 %115, %102
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = load i32, ptr %3, align 4, !tbaa !44
  %126 = load i32, ptr %109, align 4, !tbaa !44
  %127 = tail call i32 @llvm.smin.i32(i32 %125, i32 %126)
  store i32 %127, ptr %3, align 4, !tbaa !44
  br label %128

128:                                              ; preds = %122, %104, %124, %117
  %129 = phi i8 [ %106, %117 ], [ %106, %124 ], [ %106, %104 ], [ 1, %122 ]
  %130 = icmp ugt i64 %105, 1
  br i1 %130, label %104, label %131, !llvm.loop !329

131:                                              ; preds = %128, %26, %93, %86, %31
  %132 = phi i8 [ 0, %31 ], [ 0, %86 ], [ %94, %93 ], [ 1, %26 ], [ %129, %128 ]
  ret i8 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @omega_query_variable_bounds(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #7 !prof !35 {
  %5 = alloca i8, align 1
  store i32 -134217727, ptr %2, align 4, !tbaa !44
  store i32 134217727, ptr %3, align 4, !tbaa !44
  %6 = tail call zeroext i8 @omega_query_variable(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #23, !range !113
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !36
  %10 = icmp eq i32 %9, 1
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = icmp eq i32 %15, 1
  %17 = select i1 %10, i1 %16, i1 false
  br i1 %17, label %32, label %18

18:                                               ; preds = %8
  %19 = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !62
  %24 = add nsw i32 %23, %9
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !56
  %29 = add nsw i32 %28, %23
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #25
  call fastcc void @query_coupled_variable(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef -134217727, i32 noundef 134217727) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #25
  br label %32

32:                                               ; preds = %8, %18, %21, %26, %4, %31
  %33 = phi i8 [ 0, %31 ], [ 0, %4 ], [ 1, %26 ], [ 1, %21 ], [ 1, %18 ], [ 0, %8 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @query_coupled_variable(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #7 !prof !35 !PGOFuncName !330 {
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = load i32, ptr %0, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !62
  %19 = add nsw i32 %18, %16
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !56
  %24 = add nsw i32 %23, %18
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %15, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 5349, ptr noundef nonnull @.str.26) #24
  %27 = load ptr, ptr %8, align 8, !tbaa !66
  %28 = getelementptr inbounds i32, ptr %27, i64 %10
  %29 = load i32, ptr %28, align 4, !tbaa !44
  br label %30

30:                                               ; preds = %21, %26
  %31 = phi i32 [ %12, %21 ], [ %29, %26 ]
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  br label %44

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.eqn_d, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  %41 = getelementptr inbounds i32, ptr %40, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !44
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %36, %33
  %45 = phi ptr [ %35, %33 ], [ %38, %36 ]
  %46 = phi i32 [ 1, %33 ], [ %43, %36 ]
  %47 = phi i64 [ 1, %33 ], [ 2, %36 ]
  %48 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !59
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = zext nneg i32 %49 to i64
  br label %55

55:                                               ; preds = %51, %71
  %56 = phi i64 [ %54, %51 ], [ %59, %71 ]
  %57 = phi i32 [ %6, %51 ], [ %73, %71 ]
  %58 = phi i32 [ %5, %51 ], [ %72, %71 ]
  %59 = add nsw i64 %56, -1
  %60 = getelementptr inbounds %struct.eqn_d, ptr %53, i64 %59, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = getelementptr inbounds i32, ptr %61, i64 %47
  %63 = load i32, ptr %62, align 4, !tbaa !44
  switch i32 %63, label %68 [
    i32 0, label %71
    i32 1, label %64
  ]

64:                                               ; preds = %55
  %65 = load i32, ptr %61, align 4, !tbaa !44
  %66 = sub nsw i32 0, %65
  %67 = tail call i32 @llvm.smax.i32(i32 %58, i32 %66)
  br label %71

68:                                               ; preds = %55
  %69 = load i32, ptr %61, align 4, !tbaa !44
  %70 = tail call i32 @llvm.smin.i32(i32 %57, i32 %69)
  br label %71

71:                                               ; preds = %55, %68, %64
  %72 = phi i32 [ %67, %64 ], [ %58, %68 ], [ %58, %55 ]
  %73 = phi i32 [ %57, %64 ], [ %70, %68 ], [ %57, %55 ]
  %74 = icmp ugt i64 %56, 1
  br i1 %74, label %55, label %75, !llvm.loop !331

75:                                               ; preds = %71, %44
  %76 = phi i32 [ %5, %44 ], [ %72, %71 ]
  %77 = phi i32 [ %6, %44 ], [ %73, %71 ]
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 134217727, ptr %2, align 4, !tbaa !44
  store i32 -134217727, ptr %3, align 4, !tbaa !44
  br label %134

80:                                               ; preds = %75
  %81 = icmp eq i32 %76, -134217727
  %82 = getelementptr inbounds %struct.eqn_d, ptr %45, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !42
  br i1 %81, label %84, label %92

84:                                               ; preds = %80
  %85 = getelementptr inbounds i32, ptr %83, i64 %47
  %86 = load i32, ptr %85, align 4, !tbaa !44
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = mul nsw i32 %46, -134217727
  br label %99

90:                                               ; preds = %84
  %91 = mul i32 %46, 134217727
  br label %99

92:                                               ; preds = %80
  %93 = load i32, ptr %83, align 4, !tbaa !44
  %94 = getelementptr inbounds i32, ptr %83, i64 %47
  %95 = load i32, ptr %94, align 4, !tbaa !44
  %96 = mul nsw i32 %95, %76
  %97 = add nsw i32 %96, %93
  %98 = mul nsw i32 %97, %46
  br label %99

99:                                               ; preds = %88, %90, %92
  %100 = phi i32 [ %86, %88 ], [ %86, %90 ], [ %95, %92 ]
  %101 = phi i32 [ %89, %88 ], [ %91, %90 ], [ %98, %92 ]
  %102 = icmp eq i32 %77, 134217727
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = icmp sgt i32 %100, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  %106 = mul nsw i32 %46, 134217727
  br label %114

107:                                              ; preds = %103
  %108 = mul i32 %46, -134217727
  br label %114

109:                                              ; preds = %99
  %110 = load i32, ptr %83, align 4, !tbaa !44
  %111 = mul nsw i32 %100, %77
  %112 = add nsw i32 %111, %110
  %113 = mul nsw i32 %112, %46
  br label %114

114:                                              ; preds = %105, %107, %109
  %115 = phi i32 [ %106, %105 ], [ %108, %107 ], [ %113, %109 ]
  %116 = load i32, ptr %2, align 4, !tbaa !44
  %117 = tail call i32 @llvm.smin.i32(i32 %101, i32 %115)
  %118 = tail call i32 @llvm.smax.i32(i32 %116, i32 %117)
  store i32 %118, ptr %2, align 4, !tbaa !44
  %119 = load i32, ptr %3, align 4, !tbaa !44
  %120 = tail call i32 @llvm.smax.i32(i32 %101, i32 %115)
  %121 = tail call i32 @llvm.smin.i32(i32 %119, i32 %120)
  store i32 %121, ptr %3, align 4, !tbaa !44
  %122 = load i32, ptr %2, align 4, !tbaa !44
  %123 = icmp slt i32 %122, 1
  %124 = icmp sgt i32 %121, -1
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %134

126:                                              ; preds = %114
  %127 = load i32, ptr %83, align 4, !tbaa !44
  %128 = getelementptr inbounds i32, ptr %83, i64 %47
  %129 = load i32, ptr %128, align 4, !tbaa !44
  %130 = tail call i32 @llvm.abs.i32(i32 %129, i1 true)
  %131 = tail call fastcc i32 @int_mod(i32 noundef %127, i32 noundef %130) #23
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i8
  br label %134

134:                                              ; preds = %114, %126, %79
  %135 = phi i8 [ 0, %79 ], [ 0, %114 ], [ %133, %126 ]
  store i8 %135, ptr %4, align 1, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @omega_query_variable_signs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #7 !prof !35 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #25
  store i32 -134217727, ptr %10, align 4, !tbaa !44
  store i32 134217727, ptr %11, align 4, !tbaa !44
  %13 = call zeroext i8 @omega_query_variable(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11) #23, !range !113
  call fastcc void @query_coupled_variable(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %5, i32 noundef %6) #23
  %14 = load i32, ptr %10, align 4, !tbaa !44
  %15 = load i32, ptr %11, align 4, !tbaa !44
  %16 = load i8, ptr %12, align 1, !tbaa !87
  %17 = icmp eq i32 %14, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i8 1, ptr %7, align 1, !tbaa !87
  store i32 %14, ptr %8, align 4, !tbaa !44
  br label %20

19:                                               ; preds = %9
  store i8 0, ptr %7, align 1, !tbaa !87
  br label %20

20:                                               ; preds = %19, %18
  %21 = icmp eq i8 %16, 0
  %22 = icmp slt i32 %14, 0
  %23 = select i1 %22, i32 %4, i32 0
  %24 = icmp sgt i32 %15, 0
  %25 = select i1 %24, i32 %2, i32 0
  %26 = or i32 %25, %23
  %27 = select i1 %21, i32 0, i32 %3
  %28 = or i32 %26, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omega_initialize() local_unnamed_addr #7 !prof !35 {
  %1 = load i1, ptr @omega_initialized, align 1
  br i1 %1, label %63, label %2

2:                                                ; preds = %0
  store i32 0, ptr @next_wild_card, align 4, !tbaa !44
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 64, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @next_key, align 4, !tbaa !44
  %7 = sext i32 %5 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 4) #24
  store ptr %8, ptr @packing, align 8, !tbaa !54
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 69, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = shl nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 4) #24
  store ptr %14, ptr @fast_lookup, align 8, !tbaa !54
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 69, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !83
  %18 = shl nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 4) #24
  store ptr %20, ptr @fast_lookup_red, align 8, !tbaa !54
  %21 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.param_info, ptr %21, i64 68, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !83
  %24 = tail call fastcc ptr @omega_alloc_eqns(i32 noundef %23) #23
  store ptr %24, ptr @hash_master, align 8, !tbaa !54
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 68, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !83
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %2
  %30 = zext nneg i32 %27 to i64
  %31 = add nuw nsw i64 %30, 3
  %32 = and i64 %31, 4294967292
  %33 = add nsw i64 %30, -1
  %34 = insertelement <4 x i64> poison, i64 %33, i64 0
  %35 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %36

36:                                               ; preds = %58, %29
  %37 = phi i64 [ 0, %29 ], [ %59, %58 ]
  %38 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %29 ], [ %60, %58 ]
  %39 = icmp ule <4 x i64> %38, %35
  %40 = extractelement <4 x i1> %39, i64 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %37, i32 1
  store i32 -1, ptr %42, align 4, !tbaa !45
  br label %43

43:                                               ; preds = %41, %36
  %44 = extractelement <4 x i1> %39, i64 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = or disjoint i64 %37, 1
  %47 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %46, i32 1
  store i32 -1, ptr %47, align 4, !tbaa !45
  br label %48

48:                                               ; preds = %45, %43
  %49 = extractelement <4 x i1> %39, i64 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = or disjoint i64 %37, 2
  %52 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %51, i32 1
  store i32 -1, ptr %52, align 4, !tbaa !45
  br label %53

53:                                               ; preds = %50, %48
  %54 = extractelement <4 x i1> %39, i64 3
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = or disjoint i64 %37, 3
  %57 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %56, i32 1
  store i32 -1, ptr %57, align 4, !tbaa !45
  br label %58

58:                                               ; preds = %55, %53
  %59 = add i64 %37, 4
  %60 = add <4 x i64> %38, <i64 4, i64 4, i64 4, i64 4>
  %61 = icmp eq i64 %59, %32
  br i1 %61, label %62, label %36, !llvm.loop !332

62:                                               ; preds = %58, %2
  store i16 49, ptr @wild_name, align 16
  store i16 97, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 1), align 8
  store i16 98, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 2), align 16
  store i16 99, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 3), align 8
  store i16 100, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 4), align 16
  store i16 101, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 5), align 8
  store i16 102, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 6), align 16
  store i16 103, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 7), align 8
  store i16 104, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 8), align 16
  store i16 105, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 9), align 8
  store i16 106, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 10), align 16
  store i16 107, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 11), align 8
  store i16 108, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 12), align 16
  store i16 109, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 13), align 8
  store i16 110, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 14), align 16
  store i16 111, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 15), align 8
  store i16 112, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 16), align 16
  store i16 113, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 17), align 8
  store i16 114, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 18), align 16
  store i16 115, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 19), align 8
  store i16 116, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 20), align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 39), ptr noundef nonnull align 1 dereferenceable(6) @.str.181, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 38), ptr noundef nonnull align 1 dereferenceable(5) @.str.182, i64 5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 37), ptr noundef nonnull align 1 dereferenceable(6) @.str.183, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 36), ptr noundef nonnull align 1 dereferenceable(6) @.str.184, i64 6, i1 false)
  store i32 7692660, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 35), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 34), ptr noundef nonnull align 1 dereferenceable(6) @.str.186, i64 6, i1 false)
  store i32 6908003, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 33), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 32), ptr noundef nonnull align 1 dereferenceable(6) @.str.188, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 31), ptr noundef nonnull align 1 dereferenceable(3) @.str.189, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 30), ptr noundef nonnull align 1 dereferenceable(3) @.str.190, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 29), ptr noundef nonnull align 1 dereferenceable(6) @.str.191, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 28), ptr noundef nonnull align 1 dereferenceable(5) @.str.192, i64 5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 27), ptr noundef nonnull align 1 dereferenceable(6) @.str.193, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 26), ptr noundef nonnull align 1 dereferenceable(6) @.str.194, i64 6, i1 false)
  store i32 7692628, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 25), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 24), ptr noundef nonnull align 1 dereferenceable(6) @.str.196, i64 6, i1 false)
  store i32 6907971, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 23), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 22), ptr noundef nonnull align 1 dereferenceable(6) @.str.198, i64 6, i1 false)
  store i32 7895160, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), align 8
  store i1 true, ptr @omega_initialized, align 1
  br label %63

63:                                               ; preds = %0, %62
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"omega_pb_d", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !39, i64 24, !39, i64 25, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!43, !41, i64 16}
!43 = !{!"eqn_d", !38, i64 0, !38, i64 4, !38, i64 8, !41, i64 16}
!44 = !{!38, !38, i64 0}
!45 = !{!43, !38, i64 4}
!46 = !{!43, !38, i64 0}
!47 = !{!43, !38, i64 8}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = !{!"omega.c:omega_variable_to_str"}
!52 = !{!37, !41, i64 32}
!53 = !{!"omega.c:omega_var_to_str"}
!54 = !{!41, !41, i64 0}
!55 = !{!37, !39, i64 24}
!56 = !{!37, !38, i64 8}
!57 = !{!37, !41, i64 56}
!58 = distinct !{!58, !49}
!59 = !{!37, !38, i64 12}
!60 = !{!37, !41, i64 48}
!61 = distinct !{!61, !49}
!62 = !{!37, !38, i64 16}
!63 = !{!37, !41, i64 64}
!64 = distinct !{!64, !49}
!65 = !{!"omega.c:omega_initialize_variables"}
!66 = !{!37, !41, i64 40}
!67 = distinct !{!67, !49}
!68 = !{!"omega.c:omega_print_vars"}
!69 = !{!37, !38, i64 4}
!70 = distinct !{!70, !49}
!71 = !{!"omega.c:omega_print_eq"}
!72 = !{!"omega.c:omega_print_geq"}
!73 = !{!"omega.c:omega_print_term"}
!74 = distinct !{!74, !49}
!75 = distinct !{!75, !49}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
!78 = distinct !{!78, !49}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !49}
!81 = distinct !{!81, !49}
!82 = distinct !{!82, !49}
!83 = !{!84, !38, i64 8}
!84 = !{!"param_info", !41, i64 0, !38, i64 8, !39, i64 12, !38, i64 16, !38, i64 20, !41, i64 24}
!85 = !{i32 0, i32 2}
!86 = distinct !{!86, !49}
!87 = !{!39, !39, i64 0}
!88 = distinct !{!88, !49}
!89 = distinct !{!89, !49}
!90 = distinct !{!90, !49}
!91 = distinct !{!91, !49}
!92 = distinct !{!92, !49}
!93 = distinct !{!93, !49}
!94 = distinct !{!94, !49}
!95 = distinct !{!95, !49}
!96 = distinct !{!96, !49}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !49}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = distinct !{!102, !49}
!103 = distinct !{!103, !49}
!104 = distinct !{!104, !49}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49}
!110 = distinct !{!110, !49}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !49}
!113 = !{i8 0, i8 2}
!114 = distinct !{!114, !49}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = distinct !{!117, !49}
!118 = distinct !{!118, !49}
!119 = distinct !{!119, !49}
!120 = !{!37, !39, i64 25}
!121 = distinct !{!121, !49}
!122 = distinct !{!122, !49}
!123 = !{!"omega.c:implies"}
!124 = !{!"omega.c:omega_copy_eqn"}
!125 = !{!"omega.c:adding_equality_constraint"}
!126 = distinct !{!126, !49}
!127 = distinct !{!127, !49}
!128 = !{!"omega.c:omega_delete_geq"}
!129 = !{!"omega.c:omega_copy_problem"}
!130 = !{!37, !38, i64 20}
!131 = distinct !{!131, !49}
!132 = distinct !{!132, !49}
!133 = distinct !{!133, !49}
!134 = distinct !{!134, !49}
!135 = distinct !{!135, !49}
!136 = !{!"omega.c:omega_init_eqn_zero"}
!137 = !{!"omega.c:omega_safe_var_p"}
!138 = !{!"omega.c:omega_wildcard_p"}
!139 = !{!"omega.c:omega_unprotect_1"}
!140 = distinct !{!140, !49}
!141 = distinct !{!141, !49}
!142 = distinct !{!142, !49}
!143 = !{!"omega.c:single_var_geq"}
!144 = !{!"omega.c:swap"}
!145 = !{!"omega.c:bswap"}
!146 = !{!"omega.c:normalize_omega_problem"}
!147 = distinct !{!147, !49}
!148 = distinct !{!148, !49}
!149 = distinct !{!149, !49}
!150 = distinct !{!150, !49}
!151 = distinct !{!151, !49}
!152 = distinct !{!152, !49}
!153 = distinct !{!153, !49}
!154 = distinct !{!154, !49}
!155 = distinct !{!155, !49}
!156 = !{!"omega.c:gcd"}
!157 = distinct !{!157, !49}
!158 = !{!"omega.c:int_div"}
!159 = distinct !{!159, !49}
!160 = distinct !{!160, !49}
!161 = distinct !{!161, !49}
!162 = distinct !{!162, !49}
!163 = distinct !{!163, !49}
!164 = distinct !{!164, !49}
!165 = distinct !{!165, !49}
!166 = distinct !{!166, !49}
!167 = distinct !{!167, !49}
!168 = distinct !{!168, !49, !169, !170}
!169 = !{!"llvm.loop.isvectorized", i32 1}
!170 = !{!"llvm.loop.unroll.runtime.disable"}
!171 = distinct !{!171, !49}
!172 = distinct !{!172, !49}
!173 = distinct !{!173, !49}
!174 = distinct !{!174, !49}
!175 = !{!"omega.c:verify_omega_pb"}
!176 = distinct !{!176, !49}
!177 = distinct !{!177, !49}
!178 = !{!"omega.c:omega_solve_eq"}
!179 = distinct !{!179, !49}
!180 = distinct !{!180, !49}
!181 = distinct !{!181, !49}
!182 = distinct !{!182, !49}
!183 = distinct !{!183, !49}
!184 = distinct !{!184, !49}
!185 = distinct !{!185, !49}
!186 = distinct !{!186, !49}
!187 = distinct !{!187, !49}
!188 = distinct !{!188, !49}
!189 = distinct !{!189, !49}
!190 = distinct !{!190, !49}
!191 = distinct !{!191, !49}
!192 = distinct !{!192, !49}
!193 = distinct !{!193, !49}
!194 = distinct !{!194, !49}
!195 = distinct !{!195, !49}
!196 = distinct !{!196, !49}
!197 = !{!"omega.c:omega_problem_reduced"}
!198 = distinct !{!198, !49}
!199 = distinct !{!199, !49}
!200 = !{!"omega.c:omega_solve_geq"}
!201 = distinct !{!201, !49}
!202 = distinct !{!202, !49}
!203 = distinct !{!203, !49}
!204 = distinct !{!204, !49}
!205 = distinct !{!205, !49}
!206 = distinct !{!206, !49}
!207 = distinct !{!207, !49}
!208 = distinct !{!208, !49}
!209 = distinct !{!209, !49}
!210 = distinct !{!210, !49}
!211 = distinct !{!211, !49}
!212 = distinct !{!212, !49}
!213 = distinct !{!213, !49}
!214 = distinct !{!214, !49}
!215 = distinct !{!215, !49}
!216 = distinct !{!216, !49}
!217 = distinct !{!217, !49}
!218 = distinct !{!218, !49}
!219 = !{!"omega.c:omega_alloc_eqns"}
!220 = distinct !{!220, !49}
!221 = !{!"omega.c:omega_free_eqns"}
!222 = !{!"omega.c:omega_problem_has_no_solution"}
!223 = !{!"omega.c:omega_do_elimination"}
!224 = distinct !{!224, !49}
!225 = distinct !{!225, !49}
!226 = distinct !{!226, !49}
!227 = distinct !{!227, !49}
!228 = distinct !{!228, !49}
!229 = distinct !{!229, !49}
!230 = distinct !{!230, !49}
!231 = distinct !{!231, !49}
!232 = distinct !{!232, !49}
!233 = !{!"omega.c:omega_eqn_is_red"}
!234 = !{!"omega.c:int_mod"}
!235 = !{!"omega.c:omega_name_wild_card"}
!236 = !{!"omega.c:omega_add_new_wild_card"}
!237 = distinct !{!237, !49}
!238 = distinct !{!238, !49}
!239 = distinct !{!239, !49}
!240 = distinct !{!240, !49}
!241 = distinct !{!241, !49}
!242 = distinct !{!242, !49}
!243 = !{!"omega.c:omega_do_mod"}
!244 = distinct !{!244, !49}
!245 = distinct !{!245, !49}
!246 = !{!"omega.c:omega_substitute_red"}
!247 = distinct !{!247, !49}
!248 = distinct !{!248, !49}
!249 = distinct !{!249, !49}
!250 = !{!"omega.c:omega_delete_variable"}
!251 = distinct !{!251, !49}
!252 = distinct !{!252, !49}
!253 = distinct !{!253, !49}
!254 = distinct !{!254, !49}
!255 = distinct !{!255, !49}
!256 = distinct !{!256, !49}
!257 = !{!"omega.c:omega_substitute"}
!258 = distinct !{!258, !49}
!259 = distinct !{!259, !49}
!260 = distinct !{!260, !49}
!261 = distinct !{!261, !49}
!262 = distinct !{!262, !49}
!263 = distinct !{!263, !49}
!264 = distinct !{!264, !49}
!265 = distinct !{!265, !49}
!266 = distinct !{!266, !49}
!267 = distinct !{!267, !49}
!268 = distinct !{!268, !49}
!269 = distinct !{!269, !49}
!270 = distinct !{!270, !49}
!271 = !{!"omega.c:setup_packing"}
!272 = distinct !{!272, !49}
!273 = !{!"omega.c:omega_substitute_red_1"}
!274 = distinct !{!274, !49}
!275 = !{!"omega.c:coalesce"}
!276 = distinct !{!276, !49}
!277 = distinct !{!277, !49}
!278 = distinct !{!278, !49}
!279 = distinct !{!279, !49}
!280 = distinct !{!280, !49}
!281 = !{!"omega.c:chain_unprotect"}
!282 = distinct !{!282, !49}
!283 = distinct !{!283, !49}
!284 = distinct !{!284, !49}
!285 = distinct !{!285, !49}
!286 = !{!"omega.c:omega_free_eliminations"}
!287 = distinct !{!287, !49}
!288 = distinct !{!288, !49}
!289 = distinct !{!289, !49}
!290 = distinct !{!290, !49}
!291 = distinct !{!291, !49}
!292 = distinct !{!292, !49}
!293 = distinct !{!293, !49}
!294 = distinct !{!294, !49}
!295 = !{!"omega.c:check_pos_mul"}
!296 = !{!"omega.c:omega_print_geq_extra"}
!297 = !{!"omega.c:omega_delete_geq_extra"}
!298 = !{!"omega.c:check_mul"}
!299 = distinct !{!299, !49}
!300 = distinct !{!300, !49}
!301 = distinct !{!301, !49}
!302 = distinct !{!302, !49}
!303 = !{!"omega.c:free_red_eliminations"}
!304 = distinct !{!304, !49}
!305 = distinct !{!305, !49}
!306 = distinct !{!306, !49}
!307 = distinct !{!307, !49}
!308 = distinct !{!308, !49}
!309 = distinct !{!309, !49}
!310 = distinct !{!310, !49}
!311 = distinct !{!311, !49}
!312 = distinct !{!312, !49}
!313 = distinct !{!313, !49}
!314 = distinct !{!314, !49}
!315 = distinct !{!315, !49}
!316 = distinct !{!316, !49}
!317 = distinct !{!317, !49}
!318 = distinct !{!318, !49}
!319 = distinct !{!319, !49}
!320 = distinct !{!320, !49}
!321 = distinct !{!321, !49}
!322 = distinct !{!322, !49}
!323 = distinct !{!323, !49}
!324 = distinct !{!324, !49}
!325 = distinct !{!325, !49}
!326 = distinct !{!326, !49}
!327 = distinct !{!327, !49}
!328 = distinct !{!328, !49}
!329 = distinct !{!329, !49}
!330 = !{!"omega.c:query_coupled_variable"}
!331 = distinct !{!331, !49}
!332 = distinct !{!332, !49, !169, !170}
