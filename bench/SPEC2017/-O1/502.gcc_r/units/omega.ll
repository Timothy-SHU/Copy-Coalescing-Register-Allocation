; ModuleID = 'omega.c'
source_filename = "omega.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.eqn_d = type { i32, i32, i32, ptr }
%struct.omega_pb_d = type { i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@omega_when_reduced = dso_local local_unnamed_addr global ptr @omega_no_procedure, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d * %s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Done with EQ\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Done with GEQ\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s := \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"#%d := \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"omega.c\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [25 x i8] c"in eliminate Redundant:\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"found redundant inequality\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"alpha1, alpha2, alpha3 = %d,%d,%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\0A=> \00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"found implied over tight inequality\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"\0A=> not \00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"found implied tight inequality\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"\0A=> inverse \00", align 1
@conservative = internal unnamed_addr global i32 0, align 4
@.str.33 = private unnamed_addr constant [49 x i8] c"checking equation %d to see if it is redundant: \00", align 1
@please_no_equalities_in_simplified_problems = internal unnamed_addr global i32 0, align 4
@.str.34 = private unnamed_addr constant [19 x i8] c"in eliminate RED:\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"found two equations to combine, i = %s, \00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"j = %s, alpha = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"alpha1 = %d, alpha2 = %d;comparing against: \00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c" %s: %d, %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"red equation#%d is dead (%d dead so far, %d remain)\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"in eliminate RED, easy tests done:\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"fast checks worked\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"it is redundant\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"it is not redundant\0A\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"no need to check other red equations\0A\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Converting Eq to Geqs\0A\00", align 1
@omega_solve_depth = internal unnamed_addr global i32 0, align 4
@.str.46 = private unnamed_addr constant [54 x i8] c"Solve depth = %d, in_approximate_mode = %d, aborting\0A\00", align 1
@in_approximate_mode = internal unnamed_addr global i1 false, align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Checking for red equations:\0A\00", align 1
@may_be_red = internal unnamed_addr global i32 0, align 4
@create_color = internal unnamed_addr global i1 false, align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Gist is FALSE\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"checks for upper/lower bounds worked!\0A\00", align 1
@.str.50 = private unnamed_addr constant [69 x i8] c"*** Doing potentially expensive elimination tests for red equations\0A\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"******************** Redundant Red Equations eliminated!!\0A\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"******************** Red Equations remain\0A\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"(Entering approximate mode\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Leaving approximate mode)\0A\00", align 1
@omega_found_reduction = internal unnamed_addr global i32 0, align 4
@next_key = internal unnamed_addr global i32 0, align 4
@hash_version = internal unnamed_addr global i32 0, align 4
@hash_master = internal unnamed_addr global ptr null, align 8
@omega_initialized = internal unnamed_addr global i1 false, align 1
@next_wild_card = internal unnamed_addr global i32 0, align 4
@packing = internal unnamed_addr global ptr null, align 8
@fast_lookup = internal unnamed_addr global ptr null, align 8
@fast_lookup_red = internal unnamed_addr global ptr null, align 8
@wild_name = internal global [200 x [40 x i8]] zeroinitializer, align 16
@.str.75 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"sigma\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"ni\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"Beta\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Delta\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"Sigma\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Omega\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"variables = \00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"protected (\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@original_problem = internal unnamed_addr global ptr null, align 8
@.str.98 = private unnamed_addr constant [48 x i8] c"adding equality constraint %d to outer problem\0A\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"retracting\0A\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"Deleting %d (last:%d): \00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"verifying problem\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c" (color mode)\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c" :\0A\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"verified problem\0A\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"disproved problem\0A\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"\0Aomega_solve_eq (%d, %d)\0A\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"----\0A\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c" Promotion possible\0A\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"Ha! We own it! \0A\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"So what?\0A\00", align 1
@.str.115 = private unnamed_addr constant [24 x i8] c"promoting %s to safety\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"handling red equality\0A\00", align 1
@.str.117 = private unnamed_addr constant [42 x i8] c"adding equation to handle safe variable \0A\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"\0A----\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"non-exact elimination: \00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"result of non-exact elimination:\0A\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"doing moding\0A\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"should not have happened\0A\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"\0Aequations have no solution \0A\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"eliminating variable %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [42 x i8] c"performing non-exact elimination, c = %d\0A\00", align 1
@.str.126 = private unnamed_addr constant [26 x i8] c"substituting using %s := \00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"---\0A\0A\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"===\0A\0A\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"Mod-ing and normalizing produces:\0A\00", align 1
@.str.130 = private unnamed_addr constant [45 x i8] c"-------------------------------------------\0A\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"problem reduced:\0A\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"\0Aomega_solve_geq (%d,%d):\0A\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"upper bound = %d\0A\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"lower bound = %d\0A\00", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"\0Aafter normalization:\0A\00", align 1
@.str.136 = private unnamed_addr constant [45 x i8] c"eliminating variable using Fourier-Motzkin.\0A\00", align 1
@.str.137 = private unnamed_addr constant [76 x i8] c"TOO MANY EQUATIONS; %d equations, %d variables, ELIMINATING REDUNDANT ONES\0A\00", align 1
@.str.138 = private unnamed_addr constant [40 x i8] c"END ELIMINATION OF REDUNDANT EQUATIONS\0A\00", align 1
@.str.139 = private unnamed_addr constant [86 x i8] c"For %s, exact, score = %d*%d, range = %d ... %d,\0Alucky = %d, in_approximate_mode=%d \0A\00", align 1
@.str.140 = private unnamed_addr constant [53 x i8] c"For %s, non-exact, score = %d*%d,range = %d ... %d \0A\00", align 1
@.str.142 = private unnamed_addr constant [35 x i8] c"going to eliminate %s, (%d,%d,%d)\0A\00", align 1
@.str.143 = private unnamed_addr constant [29 x i8] c"(a lucky exact elimination)\0A\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"(an exact elimination)\0A\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"Max # of splinters = %d\0A\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"Swapping %d and %d\0A\00", align 1
@.str.147 = private unnamed_addr constant [20 x i8] c"Swapping complete \0A\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"No swap needed\0A\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c" :::=> %s >= %d\0A\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c" :::=> [%s >= %d]\0A\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c" :::=> %s <= %d\0A\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c" :::=> [%s <= %d]\0A\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c" ::=> [%s >= %d]\0A\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c" ::=> %s >= %d\0A\00", align 1
@.str.155 = private unnamed_addr constant [18 x i8] c" ::=> [%s <= %d]\0A\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c" ::=> %s <= %d\0A\00", align 1
@.str.157 = private unnamed_addr constant [36 x i8] c" therefore, %c%d <= %c%s%c <= %d%c\0A\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"adding equality %d to outer problem\0A\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"an inplace elimination\0A\00", align 1
@.str.160 = private unnamed_addr constant [24 x i8] c"lower bound count = %d\0A\00", align 1
@.str.161 = private unnamed_addr constant [28 x i8] c"Le = %d, Ue = %d, gen = %d\0A\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"Killed %d\0A\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"Deleting %d: \00", align 1
@.str.182 = private unnamed_addr constant [30 x i8] c"a free red elimination of %s\0A\00", align 1
@.str.183 = private unnamed_addr constant [31 x i8] c"\0Aafter free red eliminations:\0A\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"Hash code = %d, eqn = \00", align 1
@.str.185 = private unnamed_addr constant [22 x i8] c" constraint key = %d\0A\00", align 1
@.str.186 = private unnamed_addr constant [30 x i8] c"Removing Redundant Equation: \00", align 1
@.str.187 = private unnamed_addr constant [29 x i8] c"[a]      Made Redundant by: \00", align 1
@.str.188 = private unnamed_addr constant [29 x i8] c"[b]      Made Redundant by: \00", align 1
@.str.189 = private unnamed_addr constant [29 x i8] c"[c]      Made Redundant by: \00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"[d]      Made Redundant by: \00", align 1
@.str.191 = private unnamed_addr constant [34 x i8] c"Coalesced pb->geqs into %d EQ's:\0A\00", align 1
@.str.194 = private unnamed_addr constant [26 x i8] c"a free elimination of %s\0A\00", align 1
@.str.195 = private unnamed_addr constant [27 x i8] c"\0Aafter free eliminations:\0A\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"./omega.h\00", align 1
@.str.197 = private unnamed_addr constant [35 x i8] c"Doing chain reaction unprotection\0A\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"unprotecting %s\0A\00", align 1
@.str.199 = private unnamed_addr constant [23 x i8] c"After chain reactions\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @omega_no_procedure(ptr nocapture readnone %0) #9 !prof !34 {
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @omega_print_eqn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #10 !prof !34 {
  %6 = load i32, ptr %1, align 8, !tbaa !54
  %7 = add nsw i32 %6, %4
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp eq i32 %12, -1
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i1 [ false, %5 ], [ %13, %9 ]
  %16 = zext i1 %15 to i8
  br i1 %8, label %28, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !58
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @fputc(i32 33, ptr %0)
  br label %28

23:                                               ; preds = %17
  %24 = load i32, ptr %2, align 8, !tbaa !59
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %24)
  br label %28

28:                                               ; preds = %21, %26, %23, %14
  %29 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call i32 @fputc(i32 91, ptr %0)
  br label %34

34:                                               ; preds = %32, %28
  %35 = zext i1 %15 to i32
  %36 = icmp slt i32 %7, %35
  br i1 %36, label %107, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %39 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %41 = zext i1 %15 to i64
  %42 = add i32 %6, %4
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  br label %45

45:                                               ; preds = %37, %101
  %46 = phi i64 [ %41, %37 ], [ %103, %101 ]
  %47 = phi i8 [ 1, %37 ], [ %102, %101 ]
  %48 = load ptr, ptr %38, align 8, !tbaa !56
  %49 = getelementptr inbounds i32, ptr %48, i64 %46
  %50 = load i32, ptr %49, align 4, !tbaa !50
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %45
  %53 = icmp eq i8 %47, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %56

56:                                               ; preds = %52, %54
  %57 = icmp eq i64 %46, 0
  %58 = load ptr, ptr %38, align 8, !tbaa !56
  %59 = getelementptr inbounds i32, ptr %58, i64 %46
  %60 = load i32, ptr %59, align 4, !tbaa !50
  br i1 %57, label %61, label %64

61:                                               ; preds = %56
  %62 = sub nsw i32 0, %60
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %62)
  br label %101

64:                                               ; preds = %56
  %65 = icmp eq i32 %60, -1
  br i1 %65, label %66, label %83

66:                                               ; preds = %64
  %67 = load ptr, ptr %40, align 8, !tbaa !61
  %68 = getelementptr inbounds i32, ptr %67, i64 %46
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = icmp ult i32 %69, 21
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = zext nneg i32 %69 to i64
  %73 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %72
  br label %80

74:                                               ; preds = %66
  %75 = icmp ugt i32 %69, -20
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = add nsw i32 %69, 40
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %78
  br label %80

80:                                               ; preds = %71, %74, %76
  %81 = phi ptr [ %73, %71 ], [ %79, %76 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %74 ]
  %82 = tail call i32 @fputs(ptr nonnull %81, ptr %0)
  br label %101

83:                                               ; preds = %64
  %84 = sub nsw i32 0, %60
  %85 = load ptr, ptr %39, align 8, !tbaa !61
  %86 = getelementptr inbounds i32, ptr %85, i64 %46
  %87 = load i32, ptr %86, align 4, !tbaa !50
  %88 = icmp ult i32 %87, 21
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = zext nneg i32 %87 to i64
  %91 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %90
  br label %98

92:                                               ; preds = %83
  %93 = icmp ugt i32 %87, -20
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = add nsw i32 %87, 40
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %96
  br label %98

98:                                               ; preds = %89, %92, %94
  %99 = phi ptr [ %91, %89 ], [ %97, %94 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %92 ]
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %84, ptr noundef nonnull %99)
  br label %101

101:                                              ; preds = %45, %80, %98, %61
  %102 = phi i8 [ 0, %61 ], [ 0, %80 ], [ 0, %98 ], [ %47, %45 ]
  %103 = add nuw nsw i64 %46, 1
  %104 = icmp eq i64 %103, %44
  br i1 %104, label %105, label %45, !llvm.loop !62

105:                                              ; preds = %101
  %106 = icmp eq i8 %102, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %34, %105
  %108 = select i1 %15, i32 49, i32 48
  %109 = tail call i32 @fputc(i32 %108, ptr %0)
  br label %110

110:                                              ; preds = %107, %105
  %111 = phi i8 [ %16, %105 ], [ 0, %107 ]
  br i1 %8, label %112, label %114

112:                                              ; preds = %110
  %113 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %0)
  br label %120

114:                                              ; preds = %110
  %115 = icmp eq i8 %111, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %0)
  br label %120

118:                                              ; preds = %114
  %119 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %120

120:                                              ; preds = %116, %118, %112
  %121 = icmp slt i32 %7, 0
  br i1 %121, label %189, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %124 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %125 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %126 = add i32 %6, %4
  %127 = add i32 %126, 1
  %128 = zext i32 %127 to i64
  br label %129

129:                                              ; preds = %122, %183
  %130 = phi i64 [ 0, %122 ], [ %185, %183 ]
  %131 = phi i8 [ 1, %122 ], [ %184, %183 ]
  %132 = load ptr, ptr %123, align 8, !tbaa !56
  %133 = getelementptr inbounds i32, ptr %132, i64 %130
  %134 = load i32, ptr %133, align 4, !tbaa !50
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %183

136:                                              ; preds = %129
  %137 = icmp eq i8 %131, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %140

140:                                              ; preds = %136, %138
  %141 = icmp eq i64 %130, 0
  %142 = load ptr, ptr %123, align 8, !tbaa !56
  %143 = getelementptr inbounds i32, ptr %142, i64 %130
  %144 = load i32, ptr %143, align 4, !tbaa !50
  br i1 %141, label %145, label %147

145:                                              ; preds = %140
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %144)
  br label %183

147:                                              ; preds = %140
  %148 = icmp eq i32 %144, 1
  br i1 %148, label %149, label %166

149:                                              ; preds = %147
  %150 = load ptr, ptr %125, align 8, !tbaa !61
  %151 = getelementptr inbounds i32, ptr %150, i64 %130
  %152 = load i32, ptr %151, align 4, !tbaa !50
  %153 = icmp ult i32 %152, 21
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = zext nneg i32 %152 to i64
  %156 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %155
  br label %163

157:                                              ; preds = %149
  %158 = icmp ugt i32 %152, -20
  br i1 %158, label %159, label %163

159:                                              ; preds = %157
  %160 = add nsw i32 %152, 40
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %161
  br label %163

163:                                              ; preds = %154, %157, %159
  %164 = phi ptr [ %156, %154 ], [ %162, %159 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %157 ]
  %165 = tail call i32 @fputs(ptr nonnull %164, ptr %0)
  br label %183

166:                                              ; preds = %147
  %167 = load ptr, ptr %124, align 8, !tbaa !61
  %168 = getelementptr inbounds i32, ptr %167, i64 %130
  %169 = load i32, ptr %168, align 4, !tbaa !50
  %170 = icmp ult i32 %169, 21
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = zext nneg i32 %169 to i64
  %173 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %172
  br label %180

174:                                              ; preds = %166
  %175 = icmp ugt i32 %169, -20
  br i1 %175, label %176, label %180

176:                                              ; preds = %174
  %177 = add nsw i32 %169, 40
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %178
  br label %180

180:                                              ; preds = %171, %174, %176
  %181 = phi ptr [ %173, %171 ], [ %179, %176 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %174 ]
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %144, ptr noundef nonnull %181)
  br label %183

183:                                              ; preds = %129, %163, %180, %145
  %184 = phi i8 [ 0, %145 ], [ 0, %163 ], [ 0, %180 ], [ %131, %129 ]
  %185 = add nuw nsw i64 %130, 1
  %186 = icmp eq i64 %185, %128
  br i1 %186, label %187, label %129, !llvm.loop !63

187:                                              ; preds = %183
  %188 = icmp eq i8 %184, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %120, %187
  %190 = tail call i32 @fputc(i32 48, ptr %0)
  br label %191

191:                                              ; preds = %189, %187
  %192 = load i32, ptr %29, align 8, !tbaa !60
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = tail call i32 @fputc(i32 93, ptr %0)
  br label %196

196:                                              ; preds = %194, %191
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_omega_problem(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @omega_print_problem(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !54
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = zext nneg i32 %7 to i64
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ %14, %9 ], [ %21, %15 ]
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  %18 = trunc i64 %16 to i32
  store i32 %18, ptr %17, align 4, !tbaa !50
  %19 = getelementptr inbounds i32, ptr %13, i64 %16
  %20 = trunc i64 %16 to i32
  store i32 %20, ptr %19, align 4, !tbaa !50
  %21 = add nsw i64 %16, -1
  %22 = icmp sgt i64 %16, 0
  br i1 %22, label %15, label %23, !llvm.loop !66

23:                                               ; preds = %15, %6
  store i8 1, ptr %3, align 8, !tbaa !64
  br label %24

24:                                               ; preds = %23, %2
  tail call fastcc void @omega_print_vars(ptr noundef %0, ptr noundef %1)
  %25 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %35, %30 ]
  %32 = load ptr, ptr %29, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.eqn_d, ptr %32, i64 %31
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef %1, ptr noundef %33, i8 noundef zeroext 0, i32 noundef 0)
  %34 = tail call i32 @fputc(i32 10, ptr %0)
  %35 = add nuw nsw i64 %31, 1
  %36 = load i32, ptr %25, align 8, !tbaa !67
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %30, label %39, !llvm.loop !69

39:                                               ; preds = %30, %24
  %40 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 13, i64 1, ptr %0)
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !70
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %51, %46 ]
  %48 = load ptr, ptr %45, align 8, !tbaa !71
  %49 = getelementptr inbounds %struct.eqn_d, ptr %48, i64 %47
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef %1, ptr noundef %49, i8 noundef zeroext 1, i32 noundef 0)
  %50 = tail call i32 @fputc(i32 10, ptr %0)
  %51 = add nuw nsw i64 %47, 1
  %52 = load i32, ptr %41, align 4, !tbaa !70
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %46, label %55, !llvm.loop !72

55:                                               ; preds = %46, %39
  %56 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 14, i64 1, ptr %0)
  %57 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !73
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  br label %62

62:                                               ; preds = %60, %87
  %63 = phi i64 [ 0, %60 ], [ %89, %87 ]
  %64 = load ptr, ptr %61, align 8, !tbaa !74
  %65 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63
  %66 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !60
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = tail call i32 @fputc(i32 91, ptr %0)
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i32, ptr %65, align 8, !tbaa !59
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = icmp ult i32 %72, 21
  %76 = zext nneg i32 %72 to i64
  %77 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %76
  %78 = select i1 %75, ptr %77, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21)
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %78)
  br label %82

80:                                               ; preds = %71
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %72)
  br label %82

82:                                               ; preds = %80, %74
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %65, i32 noundef 1)
  %83 = load i32, ptr %66, align 8, !tbaa !60
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = tail call i32 @fputc(i32 93, ptr %0)
  br label %87

87:                                               ; preds = %85, %82
  %88 = tail call i32 @fputc(i32 10, ptr %0)
  %89 = add nuw nsw i64 %63, 1
  %90 = load i32, ptr %57, align 8, !tbaa !73
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %62, label %93, !llvm.loop !75

93:                                               ; preds = %87, %55
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @omega_print_vars(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 12, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !76
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 11, i64 1, ptr %0)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, ptr %1, align 8, !tbaa !54
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %48, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  br label %14

14:                                               ; preds = %12, %43
  %15 = phi i64 [ 1, %12 ], [ %44, %43 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !61
  %17 = getelementptr inbounds i32, ptr %16, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = icmp ult i32 %18, 21
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = zext nneg i32 %18 to i64
  %22 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %21
  br label %29

23:                                               ; preds = %14
  %24 = icmp ugt i32 %18, -20
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = add nsw i32 %18, 40
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %27
  br label %29

29:                                               ; preds = %20, %23, %25
  %30 = phi ptr [ %22, %20 ], [ %28, %25 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %23 ]
  %31 = tail call i32 @fputs(ptr nonnull %30, ptr %0)
  %32 = load i32, ptr %4, align 4, !tbaa !76
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %15, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call i32 @fputc(i32 41, ptr %0)
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, ptr %1, align 8, !tbaa !54
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %15, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  br label %43

43:                                               ; preds = %37, %41
  %44 = add nuw nsw i64 %15, 1
  %45 = load i32, ptr %1, align 8, !tbaa !54
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %15, %46
  br i1 %47, label %14, label %48, !llvm.loop !77

48:                                               ; preds = %43, %9
  %49 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @omega_print_term(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !54
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = add nuw i32 %5, 1
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %7, %51
  %13 = phi i64 [ 1, %7 ], [ %52, %51 ]
  %14 = getelementptr inbounds i32, ptr %9, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = mul nsw i32 %15, %3
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = icmp eq i32 %16, 1
  %20 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = getelementptr inbounds i32, ptr %21, i64 %13
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = icmp ult i32 %23, 21
  br i1 %19, label %25, label %38

25:                                               ; preds = %18
  br i1 %24, label %26, label %29

26:                                               ; preds = %25
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %27
  br label %35

29:                                               ; preds = %25
  %30 = icmp ugt i32 %23, -20
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = add nsw i32 %23, 40
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %33
  br label %35

35:                                               ; preds = %26, %29, %31
  %36 = phi ptr [ %28, %26 ], [ %34, %31 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %29 ]
  %37 = tail call i32 @fputs(ptr nonnull %36, ptr %0)
  br label %54

38:                                               ; preds = %18
  br i1 %24, label %39, label %42

39:                                               ; preds = %38
  %40 = zext nneg i32 %23 to i64
  %41 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %40
  br label %48

42:                                               ; preds = %38
  %43 = icmp ugt i32 %23, -20
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = add nsw i32 %23, 40
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %46
  br label %48

48:                                               ; preds = %39, %42, %44
  %49 = phi ptr [ %41, %39 ], [ %47, %44 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %42 ]
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %16, ptr noundef nonnull %49)
  br label %54

51:                                               ; preds = %12
  %52 = add nuw nsw i64 %13, 1
  %53 = icmp eq i64 %52, %11
  br i1 %53, label %54, label %12, !llvm.loop !78

54:                                               ; preds = %51, %4, %35, %48
  %55 = phi i8 [ 0, %35 ], [ 0, %48 ], [ 1, %4 ], [ 1, %51 ]
  %56 = phi i64 [ %13, %35 ], [ %13, %48 ], [ 4294967295, %4 ], [ 4294967295, %51 ]
  %57 = icmp slt i32 %5, 1
  br i1 %57, label %142, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %60 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %62 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %63 = and i64 %56, 4294967295
  %64 = add nuw i32 %5, 1
  %65 = zext i32 %64 to i64
  br label %66

66:                                               ; preds = %58, %138
  %67 = phi i64 [ 1, %58 ], [ %140, %138 ]
  %68 = phi i8 [ %55, %58 ], [ %139, %138 ]
  %69 = icmp eq i64 %67, %63
  br i1 %69, label %138, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %59, align 8, !tbaa !56
  %72 = getelementptr inbounds i32, ptr %71, i64 %67
  %73 = load i32, ptr %72, align 4, !tbaa !50
  %74 = mul nsw i32 %73, %3
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %138, label %76

76:                                               ; preds = %70
  %77 = icmp eq i8 %68, 0
  %78 = icmp sgt i32 %74, 0
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %82

82:                                               ; preds = %80, %76
  %83 = load ptr, ptr %59, align 8, !tbaa !56
  %84 = getelementptr inbounds i32, ptr %83, i64 %67
  %85 = load i32, ptr %84, align 4, !tbaa !50
  %86 = mul nsw i32 %85, %3
  switch i32 %86, label %121 [
    i32 1, label %87
    i32 -1, label %104
  ]

87:                                               ; preds = %82
  %88 = load ptr, ptr %61, align 8, !tbaa !61
  %89 = getelementptr inbounds i32, ptr %88, i64 %67
  %90 = load i32, ptr %89, align 4, !tbaa !50
  %91 = icmp ult i32 %90, 21
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = zext nneg i32 %90 to i64
  %94 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %93
  br label %101

95:                                               ; preds = %87
  %96 = icmp ugt i32 %90, -20
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  %98 = add nsw i32 %90, 40
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %99
  br label %101

101:                                              ; preds = %92, %95, %97
  %102 = phi ptr [ %94, %92 ], [ %100, %97 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %95 ]
  %103 = tail call i32 @fputs(ptr nonnull %102, ptr %0)
  br label %138

104:                                              ; preds = %82
  %105 = load ptr, ptr %60, align 8, !tbaa !61
  %106 = getelementptr inbounds i32, ptr %105, i64 %67
  %107 = load i32, ptr %106, align 4, !tbaa !50
  %108 = icmp ult i32 %107, 21
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = zext nneg i32 %107 to i64
  %111 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %110
  br label %118

112:                                              ; preds = %104
  %113 = icmp ugt i32 %107, -20
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = add nsw i32 %107, 40
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %116
  br label %118

118:                                              ; preds = %109, %112, %114
  %119 = phi ptr [ %111, %109 ], [ %117, %114 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %112 ]
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef nonnull %119)
  br label %138

121:                                              ; preds = %82
  %122 = load ptr, ptr %62, align 8, !tbaa !61
  %123 = getelementptr inbounds i32, ptr %122, i64 %67
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = icmp ult i32 %124, 21
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = zext nneg i32 %124 to i64
  %128 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %127
  br label %135

129:                                              ; preds = %121
  %130 = icmp ugt i32 %124, -20
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = add nsw i32 %124, 40
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %133
  br label %135

135:                                              ; preds = %126, %129, %131
  %136 = phi ptr [ %128, %126 ], [ %134, %131 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %129 ]
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %86, ptr noundef nonnull %136)
  br label %138

138:                                              ; preds = %66, %70, %118, %135, %101
  %139 = phi i8 [ 0, %101 ], [ 0, %118 ], [ 0, %135 ], [ %68, %70 ], [ %68, %66 ]
  %140 = add nuw nsw i64 %67, 1
  %141 = icmp eq i64 %140, %65
  br i1 %141, label %142, label %66, !llvm.loop !79

142:                                              ; preds = %138, %54
  %143 = phi i8 [ %55, %54 ], [ %139, %138 ]
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !56
  %148 = load i32, ptr %147, align 4, !tbaa !50
  %149 = mul nsw i32 %148, %3
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %153

153:                                              ; preds = %145, %151
  %154 = load ptr, ptr %146, align 8, !tbaa !56
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = mul nsw i32 %155, %3
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %142, %153
  %159 = getelementptr inbounds %struct.eqn_d, ptr %2, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !56
  %161 = load i32, ptr %160, align 4, !tbaa !50
  %162 = mul nsw i32 %161, %3
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %162)
  br label %164

164:                                              ; preds = %158, %153
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @omega_count_red_equations(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %10 = zext nneg i32 %3 to i64
  br label %20

11:                                               ; preds = %53, %1
  %12 = phi i32 [ 0, %1 ], [ %54, %53 ]
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = zext nneg i32 %14 to i64
  br label %66

20:                                               ; preds = %5, %53
  %21 = phi i64 [ 0, %5 ], [ %55, %53 ]
  %22 = phi i32 [ 0, %5 ], [ %54, %53 ]
  %23 = getelementptr inbounds %struct.eqn_d, ptr %7, i64 %21, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !60
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load i32, ptr %0, align 8, !tbaa !54
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load ptr, ptr %8, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %21, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  br label %33

33:                                               ; preds = %29, %39
  %34 = phi i32 [ %27, %29 ], [ %40, %39 ]
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %32, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = add nsw i32 %34, -1
  %41 = icmp sgt i32 %34, 1
  br i1 %41, label %33, label %42, !llvm.loop !80

42:                                               ; preds = %39, %33, %26
  %43 = phi i32 [ %27, %26 ], [ 0, %39 ], [ %34, %33 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load ptr, ptr %9, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct.eqn_d, ptr %46, i64 %21, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %86, label %51

51:                                               ; preds = %45, %42
  %52 = add nsw i32 %22, 2
  br label %53

53:                                               ; preds = %20, %51
  %54 = phi i32 [ %52, %51 ], [ %22, %20 ]
  %55 = add nuw nsw i64 %21, 1
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %11, label %20, !llvm.loop !81

57:                                               ; preds = %66, %11
  %58 = phi i32 [ %12, %11 ], [ %73, %66 ]
  %59 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !73
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !74
  %65 = zext nneg i32 %60 to i64
  br label %76

66:                                               ; preds = %16, %66
  %67 = phi i64 [ 0, %16 ], [ %74, %66 ]
  %68 = phi i32 [ %12, %16 ], [ %73, %66 ]
  %69 = getelementptr inbounds %struct.eqn_d, ptr %18, i64 %67, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !60
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %68, %72
  %74 = add nuw nsw i64 %67, 1
  %75 = icmp eq i64 %74, %19
  br i1 %75, label %57, label %66, !llvm.loop !82

76:                                               ; preds = %62, %76
  %77 = phi i64 [ 0, %62 ], [ %84, %76 ]
  %78 = phi i32 [ %58, %62 ], [ %83, %76 ]
  %79 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %77, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !60
  %81 = icmp eq i32 %80, 1
  %82 = add nsw i32 %78, 2
  %83 = select i1 %81, i32 %82, i32 %78
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, %65
  br i1 %85, label %86, label %76, !llvm.loop !83

86:                                               ; preds = %45, %76, %57
  %87 = phi i32 [ %58, %57 ], [ %83, %76 ], [ 0, %45 ]
  ret i32 %87
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @omega_print_red_equations(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !54
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = zext nneg i32 %7 to i64
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ %14, %9 ], [ %21, %15 ]
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  %18 = trunc i64 %16 to i32
  store i32 %18, ptr %17, align 4, !tbaa !50
  %19 = getelementptr inbounds i32, ptr %13, i64 %16
  %20 = trunc i64 %16 to i32
  store i32 %20, ptr %19, align 4, !tbaa !50
  %21 = add nsw i64 %16, -1
  %22 = icmp sgt i64 %16, 0
  br i1 %22, label %15, label %23, !llvm.loop !66

23:                                               ; preds = %15, %6
  store i8 1, ptr %3, align 8, !tbaa !64
  br label %24

24:                                               ; preds = %23, %2
  tail call fastcc void @omega_print_vars(ptr noundef %0, ptr noundef %1)
  %25 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  br label %36

30:                                               ; preds = %45, %24
  %31 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !70
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  br label %56

36:                                               ; preds = %28, %45
  %37 = phi i64 [ 0, %28 ], [ %46, %45 ]
  %38 = load ptr, ptr %29, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.eqn_d, ptr %38, i64 %37, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.eqn_d, ptr %38, i64 %37
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef %1, ptr noundef %43, i8 noundef zeroext 0, i32 noundef 0)
  %44 = tail call i32 @fputc(i32 10, ptr %0)
  br label %45

45:                                               ; preds = %36, %42
  %46 = add nuw nsw i64 %37, 1
  %47 = load i32, ptr %25, align 8, !tbaa !67
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %36, label %30, !llvm.loop !84

50:                                               ; preds = %65, %30
  %51 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !73
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  br label %70

56:                                               ; preds = %34, %65
  %57 = phi i64 [ 0, %34 ], [ %66, %65 ]
  %58 = load ptr, ptr %35, align 8, !tbaa !71
  %59 = getelementptr inbounds %struct.eqn_d, ptr %58, i64 %57, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !60
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.eqn_d, ptr %58, i64 %57
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef %1, ptr noundef %63, i8 noundef zeroext 1, i32 noundef 0)
  %64 = tail call i32 @fputc(i32 10, ptr %0)
  br label %65

65:                                               ; preds = %56, %62
  %66 = add nuw nsw i64 %57, 1
  %67 = load i32, ptr %31, align 4, !tbaa !70
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %56, label %50, !llvm.loop !85

70:                                               ; preds = %54, %91
  %71 = phi i64 [ 0, %54 ], [ %92, %91 ]
  %72 = load ptr, ptr %55, align 8, !tbaa !74
  %73 = getelementptr inbounds %struct.eqn_d, ptr %72, i64 %71
  %74 = getelementptr inbounds %struct.eqn_d, ptr %72, i64 %71, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !60
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %91

77:                                               ; preds = %70
  %78 = tail call i32 @fputc(i32 91, ptr %0)
  %79 = load i32, ptr %73, align 8, !tbaa !59
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = icmp ult i32 %79, 21
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %83
  %85 = select i1 %82, ptr %84, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21)
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %85)
  br label %89

87:                                               ; preds = %77
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %79)
  br label %89

89:                                               ; preds = %87, %81
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %73, i32 noundef 1)
  %90 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %0)
  br label %91

91:                                               ; preds = %70, %89
  %92 = add nuw nsw i64 %71, 1
  %93 = load i32, ptr %51, align 8, !tbaa !73
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %70, label %96, !llvm.loop !86

96:                                               ; preds = %91, %50
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @omega_pretty_print_problem(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !34 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 65, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #22
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 64, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = mul nsw i32 %10, %10
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #22
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 64, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !87
  %18 = mul nsw i32 %17, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 3
  %21 = tail call ptr @xmalloc(i64 noundef %20) #22
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 64, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !87
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr @xmalloc(i64 noundef %26) #22
  %28 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.param_info, ptr %28, i64 64, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !87
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call ptr @xmalloc(i64 noundef %32) #22
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 64, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !87
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = tail call ptr @xmalloc(i64 noundef %38) #22
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 64, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !87
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  %45 = tail call ptr @xmalloc(i64 noundef %44) #22
  %46 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %47 = load i8, ptr %46, align 8, !tbaa !64
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %2
  %50 = load i32, ptr %1, align 8, !tbaa !54
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  %55 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = zext nneg i32 %50 to i64
  br label %58

58:                                               ; preds = %52, %58
  %59 = phi i64 [ %57, %52 ], [ %64, %58 ]
  %60 = getelementptr inbounds i32, ptr %54, i64 %59
  %61 = trunc i64 %59 to i32
  store i32 %61, ptr %60, align 4, !tbaa !50
  %62 = getelementptr inbounds i32, ptr %56, i64 %59
  %63 = trunc i64 %59 to i32
  store i32 %63, ptr %62, align 4, !tbaa !50
  %64 = add nsw i64 %59, -1
  %65 = icmp sgt i64 %59, 0
  br i1 %65, label %58, label %66, !llvm.loop !66

66:                                               ; preds = %58, %49
  store i8 1, ptr %46, align 8, !tbaa !64
  br label %67

67:                                               ; preds = %66, %2
  %68 = load i32, ptr %1, align 8, !tbaa !54
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %709

70:                                               ; preds = %67
  %71 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %1, i8 noundef zeroext 0), !range !89
  %72 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !67
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  br label %82

77:                                               ; preds = %87, %70
  %78 = phi i32 [ 0, %70 ], [ 1, %87 ]
  %79 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !70
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %105, label %94

82:                                               ; preds = %75, %87
  %83 = phi i64 [ 0, %75 ], [ %90, %87 ]
  %84 = phi i1 [ true, %75 ], [ false, %87 ]
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %0)
  br label %87

87:                                               ; preds = %85, %82
  %88 = load ptr, ptr %76, align 8, !tbaa !68
  %89 = getelementptr inbounds %struct.eqn_d, ptr %88, i64 %83
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %89, i8 noundef zeroext 0, i32 noundef 0)
  %90 = add nuw nsw i64 %83, 1
  %91 = load i32, ptr %72, align 8, !tbaa !67
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %82, label %77, !llvm.loop !90

94:                                               ; preds = %105, %77
  %95 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %96 = getelementptr i32, ptr %45, i64 -1
  %97 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %98 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %99 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %100 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %101 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %102 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %103 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %104 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  br label %113

105:                                              ; preds = %77, %105
  %106 = phi i64 [ %108, %105 ], [ 0, %77 ]
  %107 = getelementptr inbounds i8, ptr %7, i64 %106
  store i8 1, ptr %107, align 1, !tbaa !46
  %108 = add nuw nsw i64 %106, 1
  %109 = load i32, ptr %79, align 4, !tbaa !70
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %105, label %94, !llvm.loop !91

112:                                              ; preds = %653, %615
  br label %113, !llvm.loop !92

113:                                              ; preds = %94, %112
  %114 = phi i32 [ 1, %112 ], [ %78, %94 ]
  %115 = load i32, ptr %1, align 8, !tbaa !54
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %137, %113
  %118 = load i32, ptr %95, align 4, !tbaa !70
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %145, label %142

120:                                              ; preds = %113, %137
  %121 = phi i64 [ %138, %137 ], [ 1, %113 ]
  %122 = getelementptr inbounds i32, ptr %33, i64 %121
  store i32 0, ptr %122, align 4, !tbaa !50
  %123 = getelementptr inbounds i32, ptr %27, i64 %121
  store i32 0, ptr %123, align 4, !tbaa !50
  %124 = getelementptr inbounds i32, ptr %39, i64 %121
  store i32 0, ptr %124, align 4, !tbaa !50
  %125 = load i32, ptr %1, align 8, !tbaa !54
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %137, label %127

127:                                              ; preds = %120
  %128 = getelementptr inbounds ptr, ptr %14, i64 %121
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  br label %130

130:                                              ; preds = %127, %130
  %131 = phi i64 [ 1, %127 ], [ %133, %130 ]
  %132 = getelementptr inbounds i32, ptr %129, i64 %131
  store i32 0, ptr %132, align 4, !tbaa !50
  %133 = add nuw nsw i64 %131, 1
  %134 = load i32, ptr %1, align 8, !tbaa !54
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %131, %135
  br i1 %136, label %130, label %137, !llvm.loop !93

137:                                              ; preds = %130, %120
  %138 = add nuw nsw i64 %121, 1
  %139 = load i32, ptr %1, align 8, !tbaa !54
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %121, %140
  br i1 %141, label %120, label %117, !llvm.loop !94

142:                                              ; preds = %267, %117
  %143 = load i32, ptr %1, align 8, !tbaa !54
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %272, label %275

145:                                              ; preds = %117, %267
  %146 = phi i64 [ %268, %267 ], [ 0, %117 ]
  %147 = getelementptr inbounds i8, ptr %7, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !46
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %267, label %150

150:                                              ; preds = %145
  %151 = load i32, ptr %1, align 8, !tbaa !54
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %97, align 8, !tbaa !71
  %155 = getelementptr inbounds %struct.eqn_d, ptr %154, i64 %146, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  br label %164

157:                                              ; preds = %174, %150
  %158 = phi i32 [ %151, %150 ], [ %176, %174 ]
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %157
  %161 = load ptr, ptr %98, align 8, !tbaa !71
  %162 = getelementptr inbounds %struct.eqn_d, ptr %161, i64 %146, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !56
  br label %179

164:                                              ; preds = %153, %174
  %165 = phi i64 [ 1, %153 ], [ %175, %174 ]
  %166 = getelementptr inbounds i32, ptr %156, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !50
  switch i32 %167, label %174 [
    i32 1, label %169
    i32 -1, label %168
  ]

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %164, %168
  %170 = phi ptr [ %27, %168 ], [ %33, %164 ]
  %171 = getelementptr inbounds i32, ptr %170, i64 %165
  %172 = load i32, ptr %171, align 4, !tbaa !50
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %171, align 4, !tbaa !50
  br label %174

174:                                              ; preds = %169, %164
  %175 = add nuw nsw i64 %165, 1
  %176 = load i32, ptr %1, align 8, !tbaa !54
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %165, %177
  br i1 %178, label %164, label %157, !llvm.loop !95

179:                                              ; preds = %160, %185
  %180 = phi i32 [ %158, %160 ], [ %186, %185 ]
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %163, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !50
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = add nsw i32 %180, -1
  %187 = icmp sgt i32 %180, 1
  br i1 %187, label %179, label %188, !llvm.loop !96

188:                                              ; preds = %179, %185, %157
  %189 = phi i32 [ %158, %157 ], [ %180, %179 ], [ 0, %185 ]
  %190 = zext i32 %189 to i64
  %191 = tail call i32 @llvm.smin.i32(i32 %189, i32 1)
  %192 = add i32 %191, -1
  br label %193

193:                                              ; preds = %197, %188
  %194 = phi i64 [ %198, %197 ], [ %190, %188 ]
  %195 = trunc i64 %194 to i32
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = add nsw i64 %194, -1
  %199 = load ptr, ptr %99, align 8, !tbaa !71
  %200 = getelementptr inbounds %struct.eqn_d, ptr %199, i64 %146, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !56
  %202 = and i64 %198, 4294967295
  %203 = getelementptr inbounds i32, ptr %201, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !50
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %193, label %206, !llvm.loop !97

206:                                              ; preds = %197
  %207 = trunc i64 %194 to i32
  %208 = trunc i64 %198 to i32
  br label %209

209:                                              ; preds = %193, %206
  %210 = phi i32 [ %207, %206 ], [ %191, %193 ]
  %211 = phi i32 [ %208, %206 ], [ %192, %193 ]
  %212 = icmp sgt i32 %210, 2
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = add nsw i32 %210, -2
  %215 = load ptr, ptr %100, align 8, !tbaa !71
  %216 = getelementptr inbounds %struct.eqn_d, ptr %215, i64 %146, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !56
  %218 = zext nneg i32 %214 to i64
  %219 = getelementptr inbounds i32, ptr %217, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %213, %225
  %223 = phi i32 [ %226, %225 ], [ %214, %213 ]
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %231, !llvm.loop !98

225:                                              ; preds = %222
  %226 = add nsw i32 %223, -1
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds i32, ptr %217, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !50
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %222, label %231, !llvm.loop !98

231:                                              ; preds = %222, %225, %213, %209
  %232 = phi i1 [ %212, %209 ], [ %212, %213 ], [ %224, %225 ], [ %224, %222 ]
  %233 = load ptr, ptr %101, align 8, !tbaa !71
  %234 = getelementptr inbounds %struct.eqn_d, ptr %233, i64 %146, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !56
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %267, label %238

238:                                              ; preds = %231
  %239 = icmp slt i32 %236, -1
  %240 = icmp slt i32 %210, 2
  %241 = or i1 %240, %239
  %242 = or i1 %232, %241
  br i1 %242, label %267, label %243

243:                                              ; preds = %238
  %244 = sext i32 %189 to i64
  %245 = getelementptr inbounds i32, ptr %235, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !50
  %247 = zext nneg i32 %211 to i64
  %248 = getelementptr inbounds i32, ptr %235, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !50
  %250 = mul nsw i32 %249, %246
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %267

252:                                              ; preds = %243
  %253 = icmp eq i32 %246, 1
  %254 = select i1 %253, i32 %189, i32 %211
  %255 = select i1 %253, i32 %211, i32 %189
  %256 = icmp eq i32 %236, 0
  %257 = select i1 %256, i32 1, i32 2
  %258 = sext i32 %255 to i64
  %259 = getelementptr inbounds ptr, ptr %14, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !35
  %261 = sext i32 %254 to i64
  %262 = getelementptr inbounds i32, ptr %260, i64 %261
  store i32 %257, ptr %262, align 4, !tbaa !50
  %263 = getelementptr inbounds ptr, ptr %21, i64 %258
  %264 = load ptr, ptr %263, align 8, !tbaa !35
  %265 = getelementptr inbounds i32, ptr %264, i64 %261
  %266 = trunc i64 %146 to i32
  store i32 %266, ptr %265, align 4, !tbaa !50
  br label %267

267:                                              ; preds = %145, %231, %238, %243, %252
  %268 = add nuw nsw i64 %146, 1
  %269 = load i32, ptr %95, align 4, !tbaa !70
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %145, label %142, !llvm.loop !99

272:                                              ; preds = %275, %142
  %273 = load i32, ptr %1, align 8, !tbaa !54
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %284, label %327

275:                                              ; preds = %142, %275
  %276 = phi i64 [ %280, %275 ], [ 1, %142 ]
  %277 = getelementptr inbounds i32, ptr %27, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !50
  %279 = getelementptr inbounds i32, ptr %39, i64 %276
  store i32 %278, ptr %279, align 4, !tbaa !50
  %280 = add nuw nsw i64 %276, 1
  %281 = load i32, ptr %1, align 8, !tbaa !54
  %282 = sext i32 %281 to i64
  %283 = icmp slt i64 %276, %282
  br i1 %283, label %275, label %272, !llvm.loop !100

284:                                              ; preds = %272, %322
  %285 = phi i32 [ %324, %322 ], [ 0, %272 ]
  %286 = load i32, ptr %1, align 8, !tbaa !54
  %287 = icmp slt i32 %286, 1
  br i1 %287, label %322, label %288

288:                                              ; preds = %284, %316
  %289 = phi i64 [ %318, %316 ], [ 1, %284 ]
  %290 = phi i8 [ %317, %316 ], [ 0, %284 ]
  %291 = load i32, ptr %1, align 8, !tbaa !54
  %292 = icmp slt i32 %291, 1
  br i1 %292, label %316, label %293

293:                                              ; preds = %288
  %294 = getelementptr inbounds ptr, ptr %14, i64 %289
  %295 = load ptr, ptr %294, align 8, !tbaa !35
  %296 = getelementptr inbounds i32, ptr %39, i64 %289
  br label %297

297:                                              ; preds = %293, %310
  %298 = phi i64 [ 1, %293 ], [ %312, %310 ]
  %299 = phi i8 [ %290, %293 ], [ %311, %310 ]
  %300 = getelementptr inbounds i32, ptr %295, i64 %298
  %301 = load i32, ptr %300, align 4, !tbaa !50
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %297
  %304 = load i32, ptr %296, align 4, !tbaa !50
  %305 = getelementptr inbounds i32, ptr %39, i64 %298
  %306 = load i32, ptr %305, align 4, !tbaa !50
  %307 = icmp sgt i32 %304, %306
  br i1 %307, label %310, label %308

308:                                              ; preds = %303
  %309 = add nsw i32 %306, 1
  store i32 %309, ptr %296, align 4, !tbaa !50
  br label %310

310:                                              ; preds = %297, %303, %308
  %311 = phi i8 [ 1, %308 ], [ %299, %303 ], [ %299, %297 ]
  %312 = add nuw nsw i64 %298, 1
  %313 = load i32, ptr %1, align 8, !tbaa !54
  %314 = sext i32 %313 to i64
  %315 = icmp slt i64 %298, %314
  br i1 %315, label %297, label %316, !llvm.loop !101

316:                                              ; preds = %310, %288
  %317 = phi i8 [ %290, %288 ], [ %311, %310 ]
  %318 = add nuw nsw i64 %289, 1
  %319 = load i32, ptr %1, align 8, !tbaa !54
  %320 = sext i32 %319 to i64
  %321 = icmp slt i64 %289, %320
  br i1 %321, label %288, label %322, !llvm.loop !102

322:                                              ; preds = %316, %284
  %323 = phi i8 [ 0, %284 ], [ %317, %316 ]
  %324 = add nuw nsw i32 %285, 1
  %325 = load i32, ptr %1, align 8, !tbaa !54
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %284, label %327, !llvm.loop !103

327:                                              ; preds = %322, %272
  %328 = phi i8 [ 0, %272 ], [ %323, %322 ]
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 614, ptr noundef nonnull @.str.21) #22
  br label %331

331:                                              ; preds = %327, %330
  %332 = load i32, ptr %1, align 8, !tbaa !54
  %333 = icmp slt i32 %332, 1
  br i1 %333, label %334, label %340

334:                                              ; preds = %347, %331
  %335 = phi i32 [ %332, %331 ], [ %349, %347 ]
  %336 = icmp slt i32 %335, 2
  br i1 %336, label %371, label %337

337:                                              ; preds = %334
  %338 = add nuw i32 %335, 1
  %339 = zext i32 %338 to i64
  br label %352

340:                                              ; preds = %331, %347
  %341 = phi i64 [ %348, %347 ], [ 1, %331 ]
  %342 = getelementptr inbounds i32, ptr %39, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !50
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  %346 = getelementptr inbounds i32, ptr %33, i64 %341
  store i32 0, ptr %346, align 4, !tbaa !50
  br label %347

347:                                              ; preds = %340, %345
  %348 = add nuw nsw i64 %341, 1
  %349 = load i32, ptr %1, align 8, !tbaa !54
  %350 = sext i32 %349 to i64
  %351 = icmp slt i64 %341, %350
  br i1 %351, label %340, label %334, !llvm.loop !104

352:                                              ; preds = %337, %352
  %353 = phi i64 [ 2, %337 ], [ %369, %352 ]
  %354 = phi i32 [ 1, %337 ], [ %368, %352 ]
  %355 = getelementptr inbounds i32, ptr %39, i64 %353
  %356 = load i32, ptr %355, align 4, !tbaa !50
  %357 = getelementptr inbounds i32, ptr %33, i64 %353
  %358 = load i32, ptr %357, align 4, !tbaa !50
  %359 = add nsw i32 %358, %356
  %360 = sext i32 %354 to i64
  %361 = getelementptr inbounds i32, ptr %39, i64 %360
  %362 = load i32, ptr %361, align 4, !tbaa !50
  %363 = getelementptr inbounds i32, ptr %33, i64 %360
  %364 = load i32, ptr %363, align 4, !tbaa !50
  %365 = add nsw i32 %364, %362
  %366 = icmp sgt i32 %359, %365
  %367 = trunc i64 %353 to i32
  %368 = select i1 %366, i32 %367, i32 %354
  %369 = add nuw nsw i64 %353, 1
  %370 = icmp eq i64 %369, %339
  br i1 %370, label %371, label %352, !llvm.loop !105

371:                                              ; preds = %352, %334
  %372 = phi i32 [ 1, %334 ], [ %368, %352 ]
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, ptr %39, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !50
  %376 = getelementptr inbounds i32, ptr %33, i64 %373
  %377 = load i32, ptr %376, align 4, !tbaa !50
  %378 = sub i32 0, %377
  %379 = icmp eq i32 %375, %378
  br i1 %379, label %380, label %385

380:                                              ; preds = %371
  %381 = load i32, ptr %95, align 4, !tbaa !70
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %678

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  br label %659

385:                                              ; preds = %371
  %386 = icmp eq i32 %114, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %385
  %388 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %0)
  br label %389

389:                                              ; preds = %387, %385
  %390 = load i32, ptr %95, align 4, !tbaa !70
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %426

392:                                              ; preds = %389, %420
  %393 = phi i64 [ %422, %420 ], [ 0, %389 ]
  %394 = phi i8 [ %421, %420 ], [ 1, %389 ]
  %395 = getelementptr inbounds i8, ptr %7, i64 %393
  %396 = load i8, ptr %395, align 1, !tbaa !46
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %420, label %398

398:                                              ; preds = %392
  %399 = load ptr, ptr %102, align 8, !tbaa !71
  %400 = getelementptr inbounds %struct.eqn_d, ptr %399, i64 %393, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !56
  %402 = getelementptr inbounds i32, ptr %401, i64 %373
  %403 = load i32, ptr %402, align 4, !tbaa !50
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %420

405:                                              ; preds = %398
  %406 = icmp eq i8 %394, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %405
  %408 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  br label %409

409:                                              ; preds = %407, %405
  %410 = load ptr, ptr %102, align 8, !tbaa !71
  %411 = getelementptr inbounds %struct.eqn_d, ptr %410, i64 %393, i32 3
  %412 = load ptr, ptr %411, align 8, !tbaa !56
  %413 = getelementptr inbounds i32, ptr %412, i64 %373
  %414 = load i32, ptr %413, align 4, !tbaa !50
  store i32 0, ptr %413, align 4, !tbaa !50
  %415 = getelementptr inbounds %struct.eqn_d, ptr %410, i64 %393
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %415, i32 noundef -1)
  %416 = load ptr, ptr %102, align 8, !tbaa !71
  %417 = getelementptr inbounds %struct.eqn_d, ptr %416, i64 %393, i32 3
  %418 = load ptr, ptr %417, align 8, !tbaa !56
  %419 = getelementptr inbounds i32, ptr %418, i64 %373
  store i32 %414, ptr %419, align 4, !tbaa !50
  store i8 0, ptr %395, align 1, !tbaa !46
  br label %420

420:                                              ; preds = %392, %398, %409
  %421 = phi i8 [ 0, %409 ], [ %394, %398 ], [ %394, %392 ]
  %422 = add nuw nsw i64 %393, 1
  %423 = load i32, ptr %95, align 4, !tbaa !70
  %424 = sext i32 %423 to i64
  %425 = icmp slt i64 %422, %424
  br i1 %425, label %392, label %426, !llvm.loop !106

426:                                              ; preds = %420, %389
  %427 = phi i8 [ 1, %389 ], [ %421, %420 ]
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  %430 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %431

431:                                              ; preds = %429, %426
  store i32 %372, ptr %45, align 4, !tbaa !50
  %432 = load i32, ptr %1, align 8, !tbaa !54
  %433 = icmp slt i32 %432, 1
  br i1 %433, label %476, label %434

434:                                              ; preds = %431, %465
  %435 = phi i64 [ %467, %465 ], [ 1, %431 ]
  %436 = phi i1 [ %471, %465 ], [ %433, %431 ]
  %437 = phi i32 [ %470, %465 ], [ %432, %431 ]
  %438 = phi i32 [ %466, %465 ], [ %372, %431 ]
  %439 = phi i32 [ %468, %465 ], [ 1, %431 ]
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds ptr, ptr %14, i64 %440
  %442 = load ptr, ptr %441, align 8, !tbaa !35
  %443 = getelementptr inbounds i32, ptr %39, i64 %440
  %444 = zext nneg i32 %437 to i64
  %445 = tail call i32 @llvm.umax.i32(i32 %437, i32 1)
  %446 = add nuw i32 %445, 1
  %447 = zext i32 %446 to i64
  br label %448

448:                                              ; preds = %434, %460
  %449 = phi i64 [ 1, %434 ], [ %461, %460 ]
  %450 = phi i1 [ %436, %434 ], [ %462, %460 ]
  %451 = getelementptr inbounds i32, ptr %442, i64 %449
  %452 = load i32, ptr %451, align 4, !tbaa !50
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %460, label %454

454:                                              ; preds = %448
  %455 = load i32, ptr %443, align 4, !tbaa !50
  %456 = getelementptr inbounds i32, ptr %39, i64 %449
  %457 = load i32, ptr %456, align 4, !tbaa !50
  %458 = add nsw i32 %457, 1
  %459 = icmp eq i32 %455, %458
  br i1 %459, label %464, label %460

460:                                              ; preds = %448, %454
  %461 = add nuw nsw i64 %449, 1
  %462 = icmp uge i64 %449, %444
  %463 = icmp eq i64 %461, %447
  br i1 %463, label %472, label %448, !llvm.loop !107

464:                                              ; preds = %454
  br i1 %450, label %474, label %465

465:                                              ; preds = %464
  %466 = trunc i64 %449 to i32
  %467 = add nuw i64 %435, 1
  %468 = add nuw nsw i32 %439, 1
  %469 = getelementptr inbounds i32, ptr %45, i64 %435
  store i32 %466, ptr %469, align 4, !tbaa !50
  %470 = load i32, ptr %1, align 8, !tbaa !54
  %471 = icmp slt i32 %470, 1
  br i1 %471, label %476, label %434, !llvm.loop !108

472:                                              ; preds = %460
  %473 = trunc i64 %435 to i32
  br label %476

474:                                              ; preds = %464
  %475 = trunc i64 %435 to i32
  br label %476

476:                                              ; preds = %474, %465, %472, %431
  %477 = phi i32 [ 1, %431 ], [ %473, %472 ], [ %475, %474 ], [ %468, %465 ]
  %478 = load ptr, ptr %103, align 8, !tbaa !61
  %479 = getelementptr inbounds i32, ptr %478, i64 %373
  %480 = load i32, ptr %479, align 4, !tbaa !50
  %481 = icmp ult i32 %480, 21
  br i1 %481, label %482, label %485

482:                                              ; preds = %476
  %483 = zext nneg i32 %480 to i64
  %484 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %483
  br label %491

485:                                              ; preds = %476
  %486 = icmp ugt i32 %480, -20
  br i1 %486, label %487, label %491

487:                                              ; preds = %485
  %488 = add nsw i32 %480, 40
  %489 = zext nneg i32 %488 to i64
  %490 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %489
  br label %491

491:                                              ; preds = %482, %485, %487
  %492 = phi ptr [ %484, %482 ], [ %490, %487 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %485 ]
  %493 = tail call i32 @fputs(ptr nonnull %492, ptr %0)
  %494 = icmp ugt i32 %477, 1
  br i1 %494, label %495, label %615

495:                                              ; preds = %491
  %496 = add nsw i32 %477, -1
  %497 = sext i32 %496 to i64
  %498 = zext i32 %477 to i64
  br label %499

499:                                              ; preds = %495, %611
  %500 = phi i64 [ 1, %495 ], [ %613, %611 ]
  %501 = phi i8 [ 0, %495 ], [ %612, %611 ]
  %502 = getelementptr i32, ptr %45, i64 %500
  %503 = getelementptr i32, ptr %502, i64 -1
  %504 = load i32, ptr %503, align 4, !tbaa !50
  %505 = load i32, ptr %502, align 4, !tbaa !50
  %506 = sext i32 %504 to i64
  %507 = getelementptr inbounds ptr, ptr %14, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !35
  %509 = sext i32 %505 to i64
  %510 = getelementptr inbounds i32, ptr %508, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !50
  %512 = icmp eq i32 %511, 1
  br i1 %512, label %513, label %515

513:                                              ; preds = %499
  %514 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %517

515:                                              ; preds = %499
  %516 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %0)
  br label %517

517:                                              ; preds = %515, %513
  %518 = load ptr, ptr %103, align 8, !tbaa !61
  %519 = getelementptr inbounds i32, ptr %518, i64 %509
  %520 = load i32, ptr %519, align 4, !tbaa !50
  %521 = icmp ult i32 %520, 21
  br i1 %521, label %522, label %525

522:                                              ; preds = %517
  %523 = zext nneg i32 %520 to i64
  %524 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %523
  br label %531

525:                                              ; preds = %517
  %526 = icmp ugt i32 %520, -20
  br i1 %526, label %527, label %531

527:                                              ; preds = %525
  %528 = add nsw i32 %520, 40
  %529 = zext nneg i32 %528 to i64
  %530 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %529
  br label %531

531:                                              ; preds = %522, %525, %527
  %532 = phi ptr [ %524, %522 ], [ %530, %527 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %525 ]
  %533 = tail call i32 @fputs(ptr nonnull %532, ptr %0)
  %534 = getelementptr inbounds ptr, ptr %21, i64 %506
  %535 = load ptr, ptr %534, align 8, !tbaa !35
  %536 = getelementptr inbounds i32, ptr %535, i64 %509
  %537 = load i32, ptr %536, align 4, !tbaa !50
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, ptr %7, i64 %538
  store i8 0, ptr %539, align 1, !tbaa !46
  %540 = icmp eq i8 %501, 0
  %541 = icmp slt i64 %500, %497
  %542 = select i1 %540, i1 %541, i1 false
  br i1 %542, label %543, label %611

543:                                              ; preds = %531
  %544 = load i32, ptr %1, align 8, !tbaa !54
  %545 = icmp slt i32 %544, 1
  br i1 %545, label %611, label %546

546:                                              ; preds = %543
  %547 = getelementptr inbounds ptr, ptr %14, i64 %509
  %548 = getelementptr i32, ptr %502, i64 1
  %549 = zext i32 %505 to i64
  %550 = zext i32 %504 to i64
  br label %551

551:                                              ; preds = %546, %605
  %552 = phi i64 [ 1, %546 ], [ %607, %605 ]
  %553 = phi i8 [ 0, %546 ], [ %606, %605 ]
  %554 = icmp eq i64 %552, %550
  %555 = icmp eq i64 %552, %549
  %556 = or i1 %554, %555
  br i1 %556, label %605, label %557

557:                                              ; preds = %551
  %558 = load ptr, ptr %507, align 8, !tbaa !35
  %559 = getelementptr inbounds i32, ptr %558, i64 %509
  %560 = load i32, ptr %559, align 4, !tbaa !50
  %561 = getelementptr inbounds i32, ptr %558, i64 %552
  %562 = load i32, ptr %561, align 4, !tbaa !50
  %563 = icmp eq i32 %560, %562
  br i1 %563, label %564, label %605

564:                                              ; preds = %557
  %565 = load ptr, ptr %547, align 8, !tbaa !35
  %566 = load i32, ptr %548, align 4, !tbaa !50
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, ptr %565, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !50
  %570 = getelementptr inbounds ptr, ptr %14, i64 %552
  %571 = load ptr, ptr %570, align 8, !tbaa !35
  %572 = getelementptr inbounds i32, ptr %571, i64 %567
  %573 = load i32, ptr %572, align 4, !tbaa !50
  %574 = icmp eq i32 %569, %573
  br i1 %574, label %575, label %605

575:                                              ; preds = %564
  %576 = load ptr, ptr %103, align 8, !tbaa !61
  %577 = getelementptr inbounds i32, ptr %576, i64 %552
  %578 = load i32, ptr %577, align 4, !tbaa !50
  %579 = icmp ult i32 %578, 21
  br i1 %579, label %580, label %583

580:                                              ; preds = %575
  %581 = zext nneg i32 %578 to i64
  %582 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %581
  br label %589

583:                                              ; preds = %575
  %584 = icmp ugt i32 %578, -20
  br i1 %584, label %585, label %589

585:                                              ; preds = %583
  %586 = add nsw i32 %578, 40
  %587 = zext nneg i32 %586 to i64
  %588 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %587
  br label %589

589:                                              ; preds = %580, %583, %585
  %590 = phi ptr [ %582, %580 ], [ %588, %585 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %583 ]
  %591 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %590)
  %592 = load ptr, ptr %534, align 8, !tbaa !35
  %593 = getelementptr inbounds i32, ptr %592, i64 %552
  %594 = load i32, ptr %593, align 4, !tbaa !50
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i8, ptr %7, i64 %595
  store i8 0, ptr %596, align 1, !tbaa !46
  %597 = getelementptr inbounds ptr, ptr %21, i64 %552
  %598 = load ptr, ptr %597, align 8, !tbaa !35
  %599 = load i32, ptr %548, align 4, !tbaa !50
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, ptr %598, i64 %600
  %602 = load i32, ptr %601, align 4, !tbaa !50
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, ptr %7, i64 %603
  store i8 0, ptr %604, align 1, !tbaa !46
  br label %605

605:                                              ; preds = %551, %557, %564, %589
  %606 = phi i8 [ %553, %551 ], [ %553, %557 ], [ %553, %564 ], [ 1, %589 ]
  %607 = add nuw nsw i64 %552, 1
  %608 = load i32, ptr %1, align 8, !tbaa !54
  %609 = sext i32 %608 to i64
  %610 = icmp slt i64 %552, %609
  br i1 %610, label %551, label %611, !llvm.loop !109

611:                                              ; preds = %605, %543, %531
  %612 = phi i8 [ 0, %531 ], [ 0, %543 ], [ %606, %605 ]
  %613 = add nuw nsw i64 %500, 1
  %614 = icmp eq i64 %613, %498
  br i1 %614, label %615, label %499, !llvm.loop !110

615:                                              ; preds = %611, %491
  %616 = load i32, ptr %95, align 4, !tbaa !70
  %617 = icmp sgt i32 %616, 0
  br i1 %617, label %618, label %112

618:                                              ; preds = %615
  %619 = zext nneg i32 %477 to i64
  %620 = getelementptr i32, ptr %96, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !50
  %622 = sext i32 %621 to i64
  br label %623

623:                                              ; preds = %618, %653
  %624 = phi i64 [ 0, %618 ], [ %655, %653 ]
  %625 = phi i8 [ 1, %618 ], [ %654, %653 ]
  %626 = getelementptr inbounds i8, ptr %7, i64 %624
  %627 = load i8, ptr %626, align 1, !tbaa !46
  %628 = icmp eq i8 %627, 0
  br i1 %628, label %653, label %629

629:                                              ; preds = %623
  %630 = load ptr, ptr %104, align 8, !tbaa !71
  %631 = getelementptr inbounds %struct.eqn_d, ptr %630, i64 %624, i32 3
  %632 = load ptr, ptr %631, align 8, !tbaa !56
  %633 = getelementptr inbounds i32, ptr %632, i64 %622
  %634 = load i32, ptr %633, align 4, !tbaa !50
  %635 = icmp eq i32 %634, -1
  br i1 %635, label %636, label %653

636:                                              ; preds = %629
  %637 = icmp eq i8 %625, 0
  br i1 %637, label %638, label %640

638:                                              ; preds = %636
  %639 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  br label %642

640:                                              ; preds = %636
  %641 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  br label %642

642:                                              ; preds = %640, %638
  %643 = load ptr, ptr %104, align 8, !tbaa !71
  %644 = getelementptr inbounds %struct.eqn_d, ptr %643, i64 %624, i32 3
  %645 = load ptr, ptr %644, align 8, !tbaa !56
  %646 = getelementptr inbounds i32, ptr %645, i64 %622
  %647 = load i32, ptr %646, align 4, !tbaa !50
  store i32 0, ptr %646, align 4, !tbaa !50
  %648 = getelementptr inbounds %struct.eqn_d, ptr %643, i64 %624
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %648, i32 noundef 1)
  %649 = load ptr, ptr %104, align 8, !tbaa !71
  %650 = getelementptr inbounds %struct.eqn_d, ptr %649, i64 %624, i32 3
  %651 = load ptr, ptr %650, align 8, !tbaa !56
  %652 = getelementptr inbounds i32, ptr %651, i64 %622
  store i32 %647, ptr %652, align 4, !tbaa !50
  store i8 0, ptr %626, align 1, !tbaa !46
  br label %653

653:                                              ; preds = %623, %629, %642
  %654 = phi i8 [ 0, %642 ], [ %625, %629 ], [ %625, %623 ]
  %655 = add nuw nsw i64 %624, 1
  %656 = load i32, ptr %95, align 4, !tbaa !70
  %657 = sext i32 %656 to i64
  %658 = icmp slt i64 %655, %657
  br i1 %658, label %623, label %112, !llvm.loop !111

659:                                              ; preds = %383, %672
  %660 = phi i64 [ 0, %383 ], [ %674, %672 ]
  %661 = phi i32 [ %114, %383 ], [ %673, %672 ]
  %662 = getelementptr inbounds i8, ptr %7, i64 %660
  %663 = load i8, ptr %662, align 1, !tbaa !46
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %672, label %665

665:                                              ; preds = %659
  %666 = icmp eq i32 %661, 0
  br i1 %666, label %669, label %667

667:                                              ; preds = %665
  %668 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %0)
  br label %669

669:                                              ; preds = %667, %665
  %670 = load ptr, ptr %384, align 8, !tbaa !71
  %671 = getelementptr inbounds %struct.eqn_d, ptr %670, i64 %660
  tail call void @omega_print_eqn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %671, i8 noundef zeroext 1, i32 noundef 0)
  br label %672

672:                                              ; preds = %659, %669
  %673 = phi i32 [ 1, %669 ], [ %661, %659 ]
  %674 = add nuw nsw i64 %660, 1
  %675 = load i32, ptr %95, align 4, !tbaa !70
  %676 = sext i32 %675 to i64
  %677 = icmp slt i64 %674, %676
  br i1 %677, label %659, label %678, !llvm.loop !112

678:                                              ; preds = %672, %380
  %679 = phi i32 [ %114, %380 ], [ %673, %672 ]
  %680 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %681 = load i32, ptr %680, align 8, !tbaa !73
  %682 = icmp sgt i32 %681, 0
  br i1 %682, label %683, label %709

683:                                              ; preds = %678
  %684 = icmp eq i32 %679, 0
  %685 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  br label %686

686:                                              ; preds = %683, %704
  %687 = phi i64 [ 0, %683 ], [ %705, %704 ]
  %688 = phi i1 [ %684, %683 ], [ false, %704 ]
  %689 = load ptr, ptr %685, align 8, !tbaa !74
  %690 = getelementptr inbounds %struct.eqn_d, ptr %689, i64 %687
  br i1 %688, label %693, label %691

691:                                              ; preds = %686
  %692 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %0)
  br label %693

693:                                              ; preds = %691, %686
  %694 = load i32, ptr %690, align 8, !tbaa !59
  %695 = icmp sgt i32 %694, 0
  br i1 %695, label %696, label %702

696:                                              ; preds = %693
  %697 = icmp ult i32 %694, 21
  %698 = zext nneg i32 %694 to i64
  %699 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %698
  %700 = select i1 %697, ptr %699, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21)
  %701 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %700)
  br label %704

702:                                              ; preds = %693
  %703 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %694)
  br label %704

704:                                              ; preds = %702, %696
  tail call fastcc void @omega_print_term(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %690, i32 noundef 1)
  %705 = add nuw nsw i64 %687, 1
  %706 = load i32, ptr %680, align 8, !tbaa !73
  %707 = sext i32 %706 to i64
  %708 = icmp slt i64 %705, %707
  br i1 %708, label %686, label %709, !llvm.loop !113

709:                                              ; preds = %704, %678, %67
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %14)
  tail call void @free(ptr noundef %21)
  tail call void @free(ptr noundef %27)
  tail call void @free(ptr noundef %33)
  tail call void @free(ptr noundef %39)
  tail call void @free(ptr noundef %45)
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @omega_eliminate_redundant(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #12 !prof !34 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 65, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #22
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 65, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr @xmalloc(i64 noundef %12) #22
  %14 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.param_info, ptr %14, i64 65, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !87
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr @xmalloc(i64 noundef %18) #22
  %20 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.param_info, ptr %20, i64 65, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !87
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr @xmalloc(i64 noundef %24) #22
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 24, i64 1, ptr nonnull %26)
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %34, ptr noundef %0)
  br label %35

35:                                               ; preds = %32, %28, %2
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !70
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %41 = zext nneg i32 %37 to i64
  br label %44

42:                                               ; preds = %58, %44
  %43 = icmp sgt i64 %45, 1
  br i1 %43, label %44, label %72, !llvm.loop !114

44:                                               ; preds = %39, %42
  %45 = phi i64 [ %41, %39 ], [ %46, %42 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds i8, ptr %7, i64 %46
  store i8 0, ptr %47, align 1, !tbaa !46
  %48 = getelementptr inbounds i32, ptr %25, i64 %46
  store i32 0, ptr %48, align 4, !tbaa !50
  %49 = getelementptr inbounds i32, ptr %19, i64 %46
  store i32 0, ptr %49, align 4, !tbaa !50
  %50 = getelementptr inbounds i32, ptr %13, i64 %46
  store i32 0, ptr %50, align 4, !tbaa !50
  %51 = load i32, ptr %0, align 8, !tbaa !54
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %42

53:                                               ; preds = %44
  %54 = load ptr, ptr %40, align 8, !tbaa !71
  %55 = getelementptr inbounds %struct.eqn_d, ptr %54, i64 %46, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = zext nneg i32 %51 to i64
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %57, %53 ], [ %70, %58 ]
  %60 = phi i32 [ 1, %53 ], [ %69, %58 ]
  %61 = getelementptr inbounds i32, ptr %56, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !50
  %63 = icmp sgt i32 %62, 0
  %64 = icmp slt i32 %62, 0
  %65 = select i1 %64, ptr %48, ptr %49
  %66 = select i1 %63, ptr %50, ptr %65
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = or i32 %67, %60
  store i32 %68, ptr %66, align 4, !tbaa !50
  %69 = shl i32 %60, 1
  %70 = add nsw i64 %59, -1
  %71 = icmp sgt i64 %59, 1
  br i1 %71, label %58, label %42, !llvm.loop !115

72:                                               ; preds = %42, %35
  %73 = load i32, ptr %36, align 4, !tbaa !70
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %431

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %77 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %78 = add nsw i32 %73, -2
  %79 = zext nneg i32 %73 to i64
  br label %80

80:                                               ; preds = %75, %428
  %81 = phi i64 [ %79, %75 ], [ %83, %428 ]
  %82 = phi i32 [ %78, %75 ], [ %430, %428 ]
  %83 = add nsw i64 %81, -1
  %84 = getelementptr inbounds i8, ptr %7, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !46
  %86 = icmp eq i8 %85, 0
  %87 = icmp sgt i64 %81, 1
  %88 = and i1 %86, %87
  br i1 %88, label %89, label %428

89:                                               ; preds = %80
  %90 = zext i32 %82 to i64
  %91 = getelementptr inbounds i32, ptr %19, i64 %83
  %92 = getelementptr inbounds i32, ptr %13, i64 %83
  %93 = getelementptr inbounds i32, ptr %25, i64 %83
  br label %94

94:                                               ; preds = %89, %424
  %95 = phi i64 [ %90, %89 ], [ %425, %424 ]
  %96 = getelementptr inbounds i8, ptr %7, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !46
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %424

99:                                               ; preds = %94
  %100 = load i32, ptr %0, align 8, !tbaa !54
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %424

102:                                              ; preds = %99
  %103 = zext nneg i32 %100 to i64
  br label %104

104:                                              ; preds = %102, %129
  %105 = phi i64 [ %103, %102 ], [ %130, %129 ]
  br label %106

106:                                              ; preds = %104, %110
  %107 = phi i64 [ %105, %104 ], [ %112, %110 ]
  %108 = trunc i64 %107 to i32
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = add nsw i64 %107, -1
  %112 = add nsw i64 %107, -1
  %113 = load ptr, ptr %76, align 8, !tbaa !71
  %114 = getelementptr inbounds %struct.eqn_d, ptr %113, i64 %83, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !56
  %116 = getelementptr inbounds i32, ptr %115, i64 %105
  %117 = load i32, ptr %116, align 4, !tbaa !50
  %118 = getelementptr inbounds %struct.eqn_d, ptr %113, i64 %95, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !56
  %120 = getelementptr inbounds i32, ptr %119, i64 %111
  %121 = load i32, ptr %120, align 4, !tbaa !50
  %122 = mul nsw i32 %121, %117
  %123 = getelementptr inbounds i32, ptr %119, i64 %105
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = getelementptr inbounds i32, ptr %115, i64 %111
  %126 = load i32, ptr %125, align 4, !tbaa !50
  %127 = mul nsw i32 %126, %124
  %128 = icmp eq i32 %122, %127
  br i1 %128, label %106, label %132, !llvm.loop !116

129:                                              ; preds = %106
  %130 = add nsw i64 %105, -1
  %131 = icmp sgt i64 %105, 2
  br i1 %131, label %104, label %424, !llvm.loop !117

132:                                              ; preds = %110
  %133 = sub nsw i32 %122, %127
  %134 = load i32, ptr %91, align 4, !tbaa !50
  %135 = getelementptr inbounds i32, ptr %19, i64 %95
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = and i32 %136, %134
  %138 = load i32, ptr %92, align 4, !tbaa !50
  %139 = getelementptr inbounds i32, ptr %25, i64 %95
  %140 = load i32, ptr %139, align 4, !tbaa !50
  %141 = and i32 %140, %138
  %142 = or i32 %141, %137
  %143 = load i32, ptr %93, align 4, !tbaa !50
  %144 = getelementptr inbounds i32, ptr %13, i64 %95
  %145 = load i32, ptr %144, align 4, !tbaa !50
  %146 = and i32 %145, %143
  %147 = or i32 %142, %146
  %148 = or i32 %145, %138
  %149 = or i32 %143, %140
  %150 = load i32, ptr %36, align 4, !tbaa !70
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %424

152:                                              ; preds = %132
  %153 = sub nsw i32 0, %133
  %154 = zext nneg i32 %150 to i64
  br label %155

155:                                              ; preds = %152, %422
  %156 = phi i64 [ %154, %152 ], [ %157, %422 ]
  %157 = add nsw i64 %156, -1
  %158 = icmp eq i64 %156, %81
  %159 = icmp eq i64 %157, %95
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %422, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds i32, ptr %19, i64 %157
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = and i32 %163, %147
  %165 = icmp eq i32 %164, %163
  br i1 %165, label %166, label %422

166:                                              ; preds = %161
  %167 = load ptr, ptr %77, align 8, !tbaa !71
  %168 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %95, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !56
  %170 = getelementptr inbounds i32, ptr %169, i64 %111
  %171 = load i32, ptr %170, align 4, !tbaa !50
  %172 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %157, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !56
  %174 = getelementptr inbounds i32, ptr %173, i64 %105
  %175 = load i32, ptr %174, align 4, !tbaa !50
  %176 = mul nsw i32 %175, %171
  %177 = getelementptr inbounds i32, ptr %169, i64 %105
  %178 = load i32, ptr %177, align 4, !tbaa !50
  %179 = getelementptr inbounds i32, ptr %173, i64 %111
  %180 = load i32, ptr %179, align 4, !tbaa !50
  %181 = mul nsw i32 %180, %178
  %182 = sub nsw i32 %176, %181
  %183 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %83, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !56
  %185 = getelementptr inbounds i32, ptr %184, i64 %111
  %186 = load i32, ptr %185, align 4, !tbaa !50
  %187 = mul nsw i32 %186, %175
  %188 = getelementptr inbounds i32, ptr %184, i64 %105
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = mul nsw i32 %189, %180
  %191 = sub nsw i32 %187, %190
  %192 = sub nsw i32 0, %191
  %193 = mul nsw i32 %182, %192
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %422, label %195

195:                                              ; preds = %166
  %196 = icmp slt i32 %182, 0
  %197 = tail call i32 @llvm.abs.i32(i32 %182, i1 true)
  %198 = select i1 %196, i32 %191, i32 %192
  %199 = select i1 %196, i32 %153, i32 %133
  %200 = icmp sgt i32 %199, 0
  %201 = getelementptr inbounds i32, ptr %13, i64 %157
  %202 = load i32, ptr %201, align 4, !tbaa !50
  br i1 %200, label %203, label %279

203:                                              ; preds = %195
  %204 = and i32 %202, %148
  %205 = icmp eq i32 %204, %202
  br i1 %205, label %206, label %422

206:                                              ; preds = %203
  %207 = getelementptr inbounds i32, ptr %25, i64 %157
  %208 = load i32, ptr %207, align 4, !tbaa !50
  %209 = and i32 %208, %149
  %210 = icmp eq i32 %209, %208
  br i1 %210, label %211, label %422

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %157, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !60
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %83, i32 2
  %217 = load i32, ptr %216, align 8, !tbaa !60
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %422, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %95, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !60
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %422, label %223

223:                                              ; preds = %219, %211
  %224 = load i32, ptr %0, align 8, !tbaa !54
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %229, label %243

226:                                              ; preds = %229
  %227 = add nsw i32 %230, -1
  %228 = icmp sgt i32 %230, 1
  br i1 %228, label %229, label %243, !llvm.loop !118

229:                                              ; preds = %223, %226
  %230 = phi i32 [ %227, %226 ], [ %224, %223 ]
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds i32, ptr %173, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !50
  %234 = mul nsw i32 %233, %199
  %235 = getelementptr inbounds i32, ptr %184, i64 %231
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = mul nsw i32 %236, %197
  %238 = getelementptr inbounds i32, ptr %169, i64 %231
  %239 = load i32, ptr %238, align 4, !tbaa !50
  %240 = mul nsw i32 %239, %198
  %241 = add nsw i32 %240, %237
  %242 = icmp eq i32 %234, %241
  br i1 %242, label %226, label %422

243:                                              ; preds = %226, %223
  %244 = load i32, ptr %184, align 4, !tbaa !50
  %245 = mul nsw i32 %244, %197
  %246 = load i32, ptr %169, align 4, !tbaa !50
  %247 = mul nsw i32 %246, %198
  %248 = add nsw i32 %247, %245
  %249 = load i32, ptr %173, align 4, !tbaa !50
  %250 = add nsw i32 %249, 1
  %251 = mul nsw i32 %250, %199
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %422

253:                                              ; preds = %243
  %254 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %255 = icmp eq ptr %254, null
  br i1 %255, label %420, label %256

256:                                              ; preds = %253
  %257 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %258 = and i32 %257, 8
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %420, label %260

260:                                              ; preds = %256
  %261 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 27, i64 1, ptr nonnull %254)
  %262 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.26, i32 noundef %197, i32 noundef %198, i32 noundef %199)
  %264 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %265 = load ptr, ptr %77, align 8, !tbaa !71
  %266 = getelementptr inbounds %struct.eqn_d, ptr %265, i64 %83
  tail call void @omega_print_eqn(ptr noundef %264, ptr noundef nonnull %0, ptr noundef %266, i8 noundef zeroext 1, i32 noundef 0)
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %268 = tail call i32 @fputc(i32 10, ptr %267)
  %269 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %270 = load ptr, ptr %77, align 8, !tbaa !71
  %271 = getelementptr inbounds %struct.eqn_d, ptr %270, i64 %95
  tail call void @omega_print_eqn(ptr noundef %269, ptr noundef nonnull %0, ptr noundef %271, i8 noundef zeroext 1, i32 noundef 0)
  %272 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %273 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 4, i64 1, ptr %272)
  %274 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %275 = load ptr, ptr %77, align 8, !tbaa !71
  %276 = getelementptr inbounds %struct.eqn_d, ptr %275, i64 %157
  tail call void @omega_print_eqn(ptr noundef %274, ptr noundef nonnull %0, ptr noundef %276, i8 noundef zeroext 1, i32 noundef 0)
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %278 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 2, i64 1, ptr %277)
  br label %420

279:                                              ; preds = %195
  %280 = and i32 %202, %149
  %281 = icmp eq i32 %280, %202
  br i1 %281, label %282, label %422

282:                                              ; preds = %279
  %283 = getelementptr inbounds i32, ptr %25, i64 %157
  %284 = load i32, ptr %283, align 4, !tbaa !50
  %285 = and i32 %284, %148
  %286 = icmp eq i32 %285, %284
  br i1 %286, label %287, label %422

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %83, i32 2
  %289 = load i32, ptr %288, align 8, !tbaa !60
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %422, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %95, i32 2
  %293 = load i32, ptr %292, align 8, !tbaa !60
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %422, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %157, i32 2
  %297 = load i32, ptr %296, align 8, !tbaa !60
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %422, label %299

299:                                              ; preds = %295
  %300 = load i32, ptr %0, align 8, !tbaa !54
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %305, label %319

302:                                              ; preds = %305
  %303 = add nsw i32 %306, -1
  %304 = icmp sgt i32 %306, 1
  br i1 %304, label %305, label %319, !llvm.loop !119

305:                                              ; preds = %299, %302
  %306 = phi i32 [ %303, %302 ], [ %300, %299 ]
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %173, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !50
  %310 = mul nsw i32 %309, %199
  %311 = getelementptr inbounds i32, ptr %184, i64 %307
  %312 = load i32, ptr %311, align 4, !tbaa !50
  %313 = mul nsw i32 %312, %197
  %314 = getelementptr inbounds i32, ptr %169, i64 %307
  %315 = load i32, ptr %314, align 4, !tbaa !50
  %316 = mul nsw i32 %315, %198
  %317 = add nsw i32 %316, %313
  %318 = icmp eq i32 %310, %317
  br i1 %318, label %302, label %422

319:                                              ; preds = %302, %299
  %320 = load i32, ptr %184, align 4, !tbaa !50
  %321 = mul nsw i32 %320, %197
  %322 = load i32, ptr %169, align 4, !tbaa !50
  %323 = mul nsw i32 %322, %198
  %324 = add nsw i32 %323, %321
  %325 = load i32, ptr %173, align 4, !tbaa !50
  %326 = mul nsw i32 %325, %199
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %355

328:                                              ; preds = %319
  %329 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %330 = icmp eq ptr %329, null
  br i1 %330, label %511, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %333 = and i32 %332, 8
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %511, label %335

335:                                              ; preds = %331
  %336 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 36, i64 1, ptr nonnull %329)
  %337 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %338 = sub nsw i32 0, %199
  %339 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.26, i32 noundef %197, i32 noundef %198, i32 noundef %338)
  %340 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %341 = load ptr, ptr %77, align 8, !tbaa !71
  %342 = getelementptr inbounds %struct.eqn_d, ptr %341, i64 %83
  tail call void @omega_print_eqn(ptr noundef %340, ptr noundef nonnull %0, ptr noundef %342, i8 noundef zeroext 1, i32 noundef 0)
  %343 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %344 = tail call i32 @fputc(i32 10, ptr %343)
  %345 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %346 = load ptr, ptr %77, align 8, !tbaa !71
  %347 = getelementptr inbounds %struct.eqn_d, ptr %346, i64 %95
  tail call void @omega_print_eqn(ptr noundef %345, ptr noundef nonnull %0, ptr noundef %347, i8 noundef zeroext 1, i32 noundef 0)
  %348 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %349 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 8, i64 1, ptr %348)
  %350 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %351 = load ptr, ptr %77, align 8, !tbaa !71
  %352 = getelementptr inbounds %struct.eqn_d, ptr %351, i64 %157
  tail call void @omega_print_eqn(ptr noundef %350, ptr noundef nonnull %0, ptr noundef %352, i8 noundef zeroext 1, i32 noundef 0)
  %353 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %354 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 2, i64 1, ptr %353)
  br label %511

355:                                              ; preds = %319
  %356 = add nsw i32 %325, -1
  %357 = mul nsw i32 %356, %199
  %358 = icmp slt i32 %324, %357
  br i1 %358, label %359, label %422

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %361 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %362 = icmp eq ptr %361, null
  br i1 %362, label %387, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %365 = and i32 %364, 8
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %387, label %367

367:                                              ; preds = %363
  %368 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 31, i64 1, ptr nonnull %361)
  %369 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %370 = sub nsw i32 0, %199
  %371 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef nonnull @.str.26, i32 noundef %197, i32 noundef %198, i32 noundef %370)
  %372 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %373 = load ptr, ptr %77, align 8, !tbaa !71
  %374 = getelementptr inbounds %struct.eqn_d, ptr %373, i64 %83
  tail call void @omega_print_eqn(ptr noundef %372, ptr noundef nonnull %0, ptr noundef %374, i8 noundef zeroext 1, i32 noundef 0)
  %375 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %376 = tail call i32 @fputc(i32 10, ptr %375)
  %377 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %378 = load ptr, ptr %77, align 8, !tbaa !71
  %379 = getelementptr inbounds %struct.eqn_d, ptr %378, i64 %95
  tail call void @omega_print_eqn(ptr noundef %377, ptr noundef nonnull %0, ptr noundef %379, i8 noundef zeroext 1, i32 noundef 0)
  %380 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %381 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 12, i64 1, ptr %380)
  %382 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %383 = load ptr, ptr %77, align 8, !tbaa !71
  %384 = getelementptr inbounds %struct.eqn_d, ptr %383, i64 %157
  tail call void @omega_print_eqn(ptr noundef %382, ptr noundef nonnull %0, ptr noundef %384, i8 noundef zeroext 1, i32 noundef 0)
  %385 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %386 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 2, i64 1, ptr %385)
  br label %387

387:                                              ; preds = %367, %363, %359
  %388 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %389 = load ptr, ptr %388, align 8, !tbaa !68
  %390 = load i32, ptr %360, align 8, !tbaa !67
  %391 = add nsw i32 %390, 1
  store i32 %391, ptr %360, align 8, !tbaa !67
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds %struct.eqn_d, ptr %389, i64 %392
  %394 = load ptr, ptr %77, align 8, !tbaa !71
  %395 = getelementptr inbounds %struct.eqn_d, ptr %394, i64 %157
  %396 = load i32, ptr %0, align 8, !tbaa !54
  %397 = load i32, ptr %395, align 8, !tbaa !59
  store i32 %397, ptr %393, align 8, !tbaa !59
  %398 = getelementptr inbounds %struct.eqn_d, ptr %394, i64 %157, i32 1
  %399 = load i32, ptr %398, align 4, !tbaa !58
  %400 = getelementptr inbounds %struct.eqn_d, ptr %389, i64 %392, i32 1
  store i32 %399, ptr %400, align 4, !tbaa !58
  %401 = getelementptr inbounds %struct.eqn_d, ptr %394, i64 %157, i32 2
  %402 = load i32, ptr %401, align 8, !tbaa !60
  %403 = getelementptr inbounds %struct.eqn_d, ptr %389, i64 %392, i32 2
  store i32 %402, ptr %403, align 8, !tbaa !60
  %404 = getelementptr inbounds %struct.eqn_d, ptr %389, i64 %392, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !56
  %406 = getelementptr inbounds %struct.eqn_d, ptr %394, i64 %157, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !56
  %408 = add nsw i32 %396, 1
  %409 = sext i32 %408 to i64
  %410 = shl nsw i64 %409, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %405, ptr align 4 %407, i64 %410, i1 false)
  %411 = load i32, ptr %360, align 8, !tbaa !67
  %412 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %413 = getelementptr inbounds %struct.param_info, ptr %412, i64 66, i32 1
  %414 = load i32, ptr %413, align 8, !tbaa !87
  %415 = icmp sgt i32 %411, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %387
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 2271, ptr noundef nonnull @.str.21) #22
  br label %417

417:                                              ; preds = %387, %416
  %418 = load i32, ptr %360, align 8, !tbaa !67
  %419 = add nsw i32 %418, -1
  tail call fastcc void @adding_equality_constraint(ptr noundef nonnull %0, i32 noundef %419)
  br label %420

420:                                              ; preds = %253, %256, %260, %417
  %421 = getelementptr inbounds i8, ptr %7, i64 %157
  store i8 1, ptr %421, align 1, !tbaa !46
  br label %422

422:                                              ; preds = %305, %229, %420, %155, %243, %355, %287, %291, %295, %279, %282, %215, %219, %203, %206, %166, %161
  %423 = icmp sgt i64 %156, 1
  br i1 %423, label %155, label %424, !llvm.loop !120

424:                                              ; preds = %129, %422, %99, %132, %94
  %425 = add nsw i64 %95, -1
  %426 = trunc i64 %95 to i32
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %94, label %428, !llvm.loop !121

428:                                              ; preds = %424, %80
  %429 = icmp sgt i64 %81, 1
  %430 = add nsw i32 %82, -1
  br i1 %429, label %80, label %431, !llvm.loop !122

431:                                              ; preds = %428, %72
  %432 = load i32, ptr %36, align 4, !tbaa !70
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %431
  %435 = zext nneg i32 %432 to i64
  br label %436

436:                                              ; preds = %434, %445
  %437 = phi i64 [ %435, %434 ], [ %438, %445 ]
  %438 = add nsw i64 %437, -1
  %439 = getelementptr inbounds i8, ptr %7, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !46
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %436
  %443 = load i32, ptr %0, align 8, !tbaa !54
  %444 = trunc i64 %438 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %444, i32 noundef %443)
  br label %445

445:                                              ; preds = %436, %442
  %446 = icmp sgt i64 %437, 1
  br i1 %446, label %436, label %447, !llvm.loop !123

447:                                              ; preds = %445, %431
  %448 = icmp eq i8 %1, 0
  br i1 %448, label %511, label %449

449:                                              ; preds = %447
  %450 = tail call ptr @xmalloc(i64 noundef 72) #22
  %451 = load i32, ptr @conservative, align 4, !tbaa !50
  %452 = add nsw i32 %451, 1
  store i32 %452, ptr @conservative, align 4, !tbaa !50
  %453 = load i32, ptr %36, align 4, !tbaa !70
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %508

455:                                              ; preds = %449
  %456 = getelementptr inbounds %struct.omega_pb_d, ptr %450, i64 0, i32 10
  %457 = getelementptr inbounds %struct.omega_pb_d, ptr %450, i64 0, i32 10
  %458 = getelementptr inbounds %struct.omega_pb_d, ptr %450, i64 0, i32 1
  %459 = getelementptr inbounds %struct.omega_pb_d, ptr %450, i64 0, i32 7
  %460 = zext nneg i32 %453 to i64
  br label %461

461:                                              ; preds = %455, %506
  %462 = phi i64 [ %460, %455 ], [ %463, %506 ]
  %463 = add nsw i64 %462, -1
  %464 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %465 = icmp eq ptr %464, null
  br i1 %465, label %479, label %466

466:                                              ; preds = %461
  %467 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %468 = and i32 %467, 8
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %479, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %472 = trunc i64 %463 to i32
  %473 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %464, ptr noundef nonnull @.str.33, i32 noundef %472)
  %474 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %475 = load ptr, ptr %471, align 8, !tbaa !71
  %476 = getelementptr inbounds %struct.eqn_d, ptr %475, i64 %463
  tail call void @omega_print_eqn(ptr noundef %474, ptr noundef %0, ptr noundef %476, i8 noundef zeroext 1, i32 noundef 0)
  %477 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %478 = tail call i32 @fputc(i32 10, ptr %477)
  br label %479

479:                                              ; preds = %470, %466, %461
  tail call fastcc void @omega_copy_problem(ptr noundef %450, ptr noundef %0)
  %480 = load i32, ptr %450, align 8, !tbaa !54
  %481 = icmp sgt i32 %480, -1
  br i1 %481, label %482, label %494

482:                                              ; preds = %479
  %483 = load ptr, ptr %456, align 8, !tbaa !71
  %484 = getelementptr inbounds %struct.eqn_d, ptr %483, i64 %463, i32 3
  %485 = load ptr, ptr %484, align 8, !tbaa !56
  %486 = zext nneg i32 %480 to i64
  br label %487

487:                                              ; preds = %482, %487
  %488 = phi i64 [ %486, %482 ], [ %492, %487 ]
  %489 = getelementptr inbounds i32, ptr %485, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !50
  %491 = sub nsw i32 0, %490
  store i32 %491, ptr %489, align 4, !tbaa !50
  %492 = add nsw i64 %488, -1
  %493 = icmp sgt i64 %488, 0
  br i1 %493, label %487, label %494, !llvm.loop !124

494:                                              ; preds = %487, %479
  %495 = load ptr, ptr %457, align 8, !tbaa !71
  %496 = getelementptr inbounds %struct.eqn_d, ptr %495, i64 %463, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !56
  %498 = load i32, ptr %497, align 4, !tbaa !50
  %499 = add nsw i32 %498, -1
  store i32 %499, ptr %497, align 4, !tbaa !50
  %500 = getelementptr inbounds %struct.eqn_d, ptr %495, i64 %463, i32 1
  store i32 1, ptr %500, align 4, !tbaa !58
  store i32 0, ptr %458, align 4, !tbaa !76
  store i8 0, ptr %459, align 1, !tbaa !125
  %501 = tail call i32 @omega_solve_problem(ptr noundef nonnull %450, i32 noundef 0)
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %494
  %504 = load i32, ptr %0, align 8, !tbaa !54
  %505 = trunc i64 %463 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %505, i32 noundef %504)
  br label %506

506:                                              ; preds = %494, %503
  %507 = icmp sgt i64 %462, 1
  br i1 %507, label %461, label %508, !llvm.loop !126

508:                                              ; preds = %506, %449
  tail call void @free(ptr noundef %450)
  %509 = load i32, ptr @conservative, align 4, !tbaa !50
  %510 = add nsw i32 %509, -1
  store i32 %510, ptr @conservative, align 4, !tbaa !50
  br label %511

511:                                              ; preds = %447, %508, %328, %331, %335
  %512 = phi i32 [ 0, %335 ], [ 0, %331 ], [ 0, %328 ], [ 1, %508 ], [ 1, %447 ]
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %13)
  tail call void @free(ptr noundef %19)
  tail call void @free(ptr noundef %25)
  ret i32 %512
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @omega_negate_geq(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.eqn_d, ptr %7, i64 %8, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %5, %12
  %13 = phi i64 [ %11, %5 ], [ %17, %12 ]
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = sub nsw i32 0, %15
  store i32 %16, ptr %14, align 4, !tbaa !50
  %17 = add nsw i64 %13, -1
  %18 = icmp sgt i64 %13, 0
  br i1 %18, label %12, label %19, !llvm.loop !124

19:                                               ; preds = %12, %2
  %20 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds %struct.eqn_d, ptr %21, i64 %22, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.eqn_d, ptr %21, i64 %22, i32 1
  store i32 1, ptr %27, align 4, !tbaa !58
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @adding_equality_constraint(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr @original_problem, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %109, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, %0
  %7 = load i32, ptr @conservative, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %109, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !67
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %14, ptr noundef nonnull @.str.98, i32 noundef %12)
  br label %22

22:                                               ; preds = %20, %16, %10
  %23 = load ptr, ptr @original_problem, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %23, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = sext i32 %12 to i64
  %27 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %26
  %28 = load i32, ptr %23, align 8, !tbaa !54
  store i32 0, ptr %27, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %26, i32 1
  store i32 0, ptr %29, align 4, !tbaa !58
  %30 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %26, i32 2
  store i32 0, ptr %30, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %26, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = add nsw i32 %28, 1
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %32, i8 0, i64 %35, i1 false)
  %36 = load i32, ptr %0, align 8, !tbaa !54
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.omega_pb_d, ptr %23, i64 0, i32 8
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %42 = sext i32 %1 to i64
  %43 = zext nneg i32 %36 to i64
  br label %44

44:                                               ; preds = %38, %79
  %45 = phi i64 [ %43, %38 ], [ %90, %79 ]
  %46 = load i32, ptr %23, align 8, !tbaa !54
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load ptr, ptr %39, align 8, !tbaa !61
  %50 = load ptr, ptr %40, align 8, !tbaa !61
  %51 = getelementptr inbounds i32, ptr %50, i64 %45
  %52 = load i32, ptr %51, align 4, !tbaa !50
  br label %53

53:                                               ; preds = %48, %59
  %54 = phi i32 [ %46, %48 ], [ %60, %59 ]
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %49, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !50
  %58 = icmp eq i32 %57, %52
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = add nsw i32 %54, -1
  %61 = icmp sgt i32 %54, 1
  br i1 %61, label %53, label %62, !llvm.loop !127

62:                                               ; preds = %59, %53, %44
  %63 = phi i32 [ %46, %44 ], [ 0, %59 ], [ %54, %53 ]
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 11, i64 1, ptr nonnull %66)
  br label %74

74:                                               ; preds = %72, %68, %65
  %75 = load ptr, ptr @original_problem, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.omega_pb_d, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !67
  %78 = add nsw i32 %77, -1
  store i32 %78, ptr %76, align 8, !tbaa !67
  br label %109

79:                                               ; preds = %62
  %80 = load ptr, ptr %41, align 8, !tbaa !68
  %81 = getelementptr inbounds %struct.eqn_d, ptr %80, i64 %42, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !56
  %83 = getelementptr inbounds i32, ptr %82, i64 %45
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = load ptr, ptr %24, align 8, !tbaa !68
  %86 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %26, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  %88 = zext nneg i32 %63 to i64
  %89 = getelementptr inbounds i32, ptr %87, i64 %88
  store i32 %84, ptr %89, align 4, !tbaa !50
  %90 = add nsw i64 %45, -1
  %91 = icmp sgt i64 %45, 1
  br i1 %91, label %44, label %92, !llvm.loop !128

92:                                               ; preds = %79, %22
  %93 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !68
  %95 = sext i32 %1 to i64
  %96 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %95, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !56
  %98 = load i32, ptr %97, align 4, !tbaa !50
  %99 = load ptr, ptr %24, align 8, !tbaa !68
  %100 = getelementptr inbounds %struct.eqn_d, ptr %99, i64 %26, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  store i32 %98, ptr %101, align 4, !tbaa !50
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %92
  %105 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %106 = and i32 %105, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @omega_print_problem(ptr noundef nonnull %102, ptr noundef nonnull %23)
  br label %109

109:                                              ; preds = %74, %108, %104, %92, %5, %2
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @omega_delete_geq(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = add nsw i32 %12, -1
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.100, i32 noundef %1, i32 noundef %13)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %18
  tail call void @omega_print_eqn(ptr noundef %15, ptr noundef %0, ptr noundef %19, i8 noundef zeroext 1, i32 noundef 0)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  br label %22

22:                                               ; preds = %10, %6, %3
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !70
  %25 = add nsw i32 %24, -1
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %30
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %32
  %34 = load i32, ptr %33, align 8, !tbaa !59
  store i32 %34, ptr %31, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %32, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !58
  %37 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %30, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !58
  %38 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %32, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %30, i32 2
  store i32 %39, ptr %40, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %30, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %32, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = add nsw i32 %2, 1
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %44, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %27, %22
  %49 = load i32, ptr %23, align 4, !tbaa !70
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %23, align 4, !tbaa !70
  ret void
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_copy_problem(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !prof !34 {
  %3 = load i32, ptr %1, align 8, !tbaa !54
  store i32 %3, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !129
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  store i32 %5, ptr %6, align 4, !tbaa !129
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %8 = load i8, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 6
  store i8 %8, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 7
  %11 = load i8, ptr %10, align 1, !tbaa !125
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 7
  store i8 %11, ptr %12, align 1, !tbaa !125
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !76
  %15 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !76
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  store i32 %20, ptr %21, align 8, !tbaa !73
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !70
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !70
  %25 = load i32, ptr %16, align 8, !tbaa !67
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %29 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ %30, %27 ], [ %33, %31 ]
  %33 = add nsw i64 %32, -1
  %34 = load ptr, ptr %28, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33
  %36 = load ptr, ptr %29, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33
  %38 = load i32, ptr %1, align 8, !tbaa !54
  %39 = load i32, ptr %37, align 8, !tbaa !59
  store i32 %39, ptr %35, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !58
  %42 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33, i32 2
  store i32 %44, ptr %45, align 8, !tbaa !60
  %46 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = add nsw i32 %38, 1
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 4 %49, i64 %52, i1 false)
  %53 = icmp sgt i64 %32, 1
  br i1 %53, label %31, label %54, !llvm.loop !130

54:                                               ; preds = %31, %2
  %55 = load i32, ptr %22, align 4, !tbaa !70
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %59 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %60 = zext nneg i32 %55 to i64
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i64 [ %60, %57 ], [ %63, %61 ]
  %63 = add nsw i64 %62, -1
  %64 = load ptr, ptr %58, align 8, !tbaa !71
  %65 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63
  %66 = load ptr, ptr %59, align 8, !tbaa !71
  %67 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63
  %68 = load i32, ptr %1, align 8, !tbaa !54
  %69 = load i32, ptr %67, align 8, !tbaa !59
  store i32 %69, ptr %65, align 8, !tbaa !59
  %70 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !58
  %72 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63, i32 1
  store i32 %71, ptr %72, align 4, !tbaa !58
  %73 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !60
  %75 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63, i32 2
  store i32 %74, ptr %75, align 8, !tbaa !60
  %76 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !56
  %78 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = add nsw i32 %68, 1
  %81 = sext i32 %80 to i64
  %82 = shl nsw i64 %81, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %77, ptr align 4 %79, i64 %82, i1 false)
  %83 = icmp sgt i64 %62, 1
  br i1 %83, label %61, label %84, !llvm.loop !131

84:                                               ; preds = %61, %54
  %85 = load i32, ptr %19, align 8, !tbaa !73
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %89 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  %90 = zext nneg i32 %85 to i64
  br label %91

91:                                               ; preds = %87, %91
  %92 = phi i64 [ %90, %87 ], [ %93, %91 ]
  %93 = add nsw i64 %92, -1
  %94 = load ptr, ptr %88, align 8, !tbaa !74
  %95 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93
  %96 = load ptr, ptr %89, align 8, !tbaa !74
  %97 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93
  %98 = load i32, ptr %1, align 8, !tbaa !54
  %99 = load i32, ptr %97, align 8, !tbaa !59
  store i32 %99, ptr %95, align 8, !tbaa !59
  %100 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !58
  %102 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93, i32 1
  store i32 %101, ptr %102, align 4, !tbaa !58
  %103 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !60
  %105 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93, i32 2
  store i32 %104, ptr %105, align 8, !tbaa !60
  %106 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  %108 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !56
  %110 = add nsw i32 %98, 1
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %107, ptr align 4 %109, i64 %112, i1 false)
  %113 = icmp sgt i64 %92, 1
  br i1 %113, label %91, label %114, !llvm.loop !132

114:                                              ; preds = %91, %84
  %115 = load i32, ptr %1, align 8, !tbaa !54
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !61
  %120 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  %122 = zext nneg i32 %115 to i64
  br label %123

123:                                              ; preds = %117, %123
  %124 = phi i64 [ %122, %117 ], [ %128, %123 ]
  %125 = getelementptr inbounds i32, ptr %119, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !50
  %127 = getelementptr inbounds i32, ptr %121, i64 %124
  store i32 %126, ptr %127, align 4, !tbaa !50
  %128 = add nsw i64 %124, -1
  %129 = icmp sgt i64 %124, 0
  br i1 %129, label %123, label %130, !llvm.loop !133

130:                                              ; preds = %123, %114
  %131 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %132 = getelementptr inbounds %struct.param_info, ptr %131, i64 64, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !87
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !65
  %138 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %139 = load ptr, ptr %138, align 8, !tbaa !65
  %140 = zext nneg i32 %133 to i64
  br label %141

141:                                              ; preds = %135, %141
  %142 = phi i64 [ %140, %135 ], [ %146, %141 ]
  %143 = getelementptr inbounds i32, ptr %137, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !50
  %145 = getelementptr inbounds i32, ptr %139, i64 %142
  store i32 %144, ptr %145, align 4, !tbaa !50
  %146 = add nsw i64 %142, -1
  %147 = icmp sgt i64 %142, 0
  br i1 %147, label %141, label %148, !llvm.loop !134

148:                                              ; preds = %141, %130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @omega_solve_problem(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !76
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 4793, ptr noundef nonnull @.str.21) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, ptr @omega_solve_depth, align 4, !tbaa !50
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @omega_solve_depth, align 4, !tbaa !50
  %11 = icmp eq i32 %1, 3
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 0, ptr %4, align 4, !tbaa !76
  br label %13

13:                                               ; preds = %12, %8
  %14 = icmp sgt i32 %9, 49
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i1, ptr @in_approximate_mode, align 1
  %24 = zext i1 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %16, ptr noundef nonnull @.str.46, i32 noundef %10, i32 noundef %24)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %26, ptr noundef nonnull %0)
  br label %27

27:                                               ; preds = %22, %18, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 4808, ptr noundef nonnull @.str.21) #22
  br label %28

28:                                               ; preds = %27, %13
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !67
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, ptr @may_be_red, align 4, !tbaa !50
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.109, i32 noundef %1, i32 noundef %40)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %42, ptr noundef %0)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %44 = tail call i32 @fputc(i32 10, ptr %43)
  br label %45

45:                                               ; preds = %39, %35, %31, %28
  %46 = load i32, ptr @may_be_red, align 4, !tbaa !50
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %163, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !67
  %51 = add nsw i32 %50, -1
  %52 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %53 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %54 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  br label %55

55:                                               ; preds = %160, %48
  %56 = phi i32 [ %51, %48 ], [ %161, %160 ]
  %57 = phi i32 [ 0, %48 ], [ %162, %160 ]
  %58 = icmp sgt i32 %57, %56
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %52, align 8, !tbaa !68
  %61 = sext i32 %57 to i64
  %62 = sext i32 %56 to i64
  %63 = add i32 %56, 1
  br label %64

64:                                               ; preds = %59, %69
  %65 = phi i64 [ %61, %59 ], [ %70, %69 ]
  %66 = getelementptr inbounds %struct.eqn_d, ptr %60, i64 %65, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !60
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = add nsw i64 %65, 1
  %71 = icmp slt i64 %65, %62
  br i1 %71, label %64, label %74, !llvm.loop !135

72:                                               ; preds = %64
  %73 = trunc i64 %65 to i32
  br label %74

74:                                               ; preds = %72, %69, %55
  %75 = phi i32 [ %57, %55 ], [ %73, %72 ], [ %63, %69 ]
  %76 = icmp sgt i32 %75, %56
  br i1 %76, label %92, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %53, align 8, !tbaa !68
  %79 = sext i32 %56 to i64
  %80 = sext i32 %75 to i64
  %81 = add i32 %75, -1
  br label %82

82:                                               ; preds = %77, %87
  %83 = phi i64 [ %79, %77 ], [ %88, %87 ]
  %84 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %83, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !60
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = add nsw i64 %83, -1
  %89 = icmp sgt i64 %83, %80
  br i1 %89, label %82, label %92, !llvm.loop !136

90:                                               ; preds = %82
  %91 = trunc i64 %83 to i32
  br label %92

92:                                               ; preds = %90, %87, %74
  %93 = phi i32 [ %56, %74 ], [ %91, %90 ], [ %81, %87 ]
  %94 = icmp slt i32 %75, %93
  br i1 %94, label %95, label %160

95:                                               ; preds = %92
  %96 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #22
  %97 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %98 = getelementptr inbounds %struct.param_info, ptr %97, i64 64, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !87
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = tail call ptr @xcalloc(i64 noundef %101, i64 noundef 4) #22
  %103 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 0, i32 3
  store ptr %102, ptr %103, align 8, !tbaa !56
  store i32 0, ptr %96, align 8, !tbaa !59
  %104 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 0, i32 1
  store i32 0, ptr %104, align 4, !tbaa !58
  %105 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 0, i32 2
  store i32 0, ptr %105, align 8, !tbaa !60
  store i32 0, ptr %102, align 4
  %106 = load ptr, ptr %54, align 8, !tbaa !68
  %107 = sext i32 %75 to i64
  %108 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %107
  %109 = load i32, ptr %0, align 8, !tbaa !54
  %110 = load i32, ptr %108, align 8, !tbaa !59
  store i32 %110, ptr %96, align 8, !tbaa !59
  %111 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %107, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !58
  %113 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 0, i32 1
  store i32 %112, ptr %113, align 4, !tbaa !58
  %114 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %107, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !60
  %116 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 0, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !60
  %117 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !56
  %119 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %107, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = add nsw i32 %109, 1
  %122 = sext i32 %121 to i64
  %123 = shl nsw i64 %122, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %118, ptr align 4 %120, i64 %123, i1 false)
  %124 = load ptr, ptr %54, align 8, !tbaa !68
  %125 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %107
  %126 = sext i32 %93 to i64
  %127 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %126
  %128 = load i32, ptr %0, align 8, !tbaa !54
  %129 = load i32, ptr %127, align 8, !tbaa !59
  store i32 %129, ptr %125, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %126, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !58
  %132 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %107, i32 1
  store i32 %131, ptr %132, align 4, !tbaa !58
  %133 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %126, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !60
  %135 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %107, i32 2
  store i32 %134, ptr %135, align 8, !tbaa !60
  %136 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %107, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !56
  %138 = getelementptr inbounds %struct.eqn_d, ptr %124, i64 %126, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !56
  %140 = add nsw i32 %128, 1
  %141 = sext i32 %140 to i64
  %142 = shl nsw i64 %141, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %137, ptr align 4 %139, i64 %142, i1 false)
  %143 = load ptr, ptr %54, align 8, !tbaa !68
  %144 = getelementptr inbounds %struct.eqn_d, ptr %143, i64 %126
  %145 = load i32, ptr %0, align 8, !tbaa !54
  %146 = load i32, ptr %96, align 8, !tbaa !59
  store i32 %146, ptr %144, align 8, !tbaa !59
  %147 = load i32, ptr %113, align 4, !tbaa !58
  %148 = getelementptr inbounds %struct.eqn_d, ptr %143, i64 %126, i32 1
  store i32 %147, ptr %148, align 4, !tbaa !58
  %149 = load i32, ptr %116, align 8, !tbaa !60
  %150 = getelementptr inbounds %struct.eqn_d, ptr %143, i64 %126, i32 2
  store i32 %149, ptr %150, align 8, !tbaa !60
  %151 = getelementptr inbounds %struct.eqn_d, ptr %143, i64 %126, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !56
  %153 = load ptr, ptr %117, align 8, !tbaa !56
  %154 = add nsw i32 %145, 1
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %152, ptr align 4 %153, i64 %156, i1 false)
  %157 = load ptr, ptr %117, align 8, !tbaa !56
  tail call void @free(ptr noundef %157)
  tail call void @free(ptr noundef %96)
  %158 = add nsw i32 %75, 1
  %159 = add nsw i32 %93, -1
  br label %160

160:                                              ; preds = %95, %92
  %161 = phi i32 [ %159, %95 ], [ %93, %92 ]
  %162 = phi i32 [ %158, %95 ], [ %75, %92 ]
  br i1 %94, label %55, label %163

163:                                              ; preds = %160, %45
  %164 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %165 = load i32, ptr %164, align 8, !tbaa !67
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %910

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %169 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %170 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %171 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %172 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %173 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %174 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %175 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  br label %176

176:                                              ; preds = %167, %908
  %177 = phi i1 [ %166, %167 ], [ %909, %908 ]
  %178 = phi i32 [ %165, %167 ], [ %906, %908 ]
  %179 = add nsw i32 %178, -1
  %180 = load ptr, ptr %168, align 8, !tbaa !68
  %181 = zext nneg i32 %179 to i64
  %182 = getelementptr inbounds %struct.eqn_d, ptr %180, i64 %181
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %176
  %186 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 5, i64 1, ptr nonnull %183)
  br label %191

191:                                              ; preds = %189, %185, %176
  %192 = load i32, ptr %0, align 8, !tbaa !54
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.eqn_d, ptr %180, i64 %181, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !56
  %197 = zext nneg i32 %192 to i64
  %198 = getelementptr inbounds i32, ptr %196, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !50
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %207, label %210

201:                                              ; preds = %207
  %202 = add nsw i32 %208, -1
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %196, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !50
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %210, !llvm.loop !137

207:                                              ; preds = %194, %201
  %208 = phi i32 [ %202, %201 ], [ %192, %194 ]
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %201, label %210, !llvm.loop !137

210:                                              ; preds = %201, %207, %194, %191
  %211 = phi i32 [ %192, %191 ], [ %192, %194 ], [ 0, %207 ], [ %202, %201 ]
  %212 = phi i1 [ %193, %191 ], [ %193, %194 ], [ %209, %207 ], [ %209, %201 ]
  %213 = getelementptr inbounds %struct.eqn_d, ptr %180, i64 %181, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !56
  %215 = sext i32 %211 to i64
  %216 = getelementptr inbounds i32, ptr %214, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !50
  %218 = add i32 %211, -1
  %219 = icmp sgt i32 %211, 1
  br i1 %219, label %220, label %234

220:                                              ; preds = %210
  %221 = zext nneg i32 %218 to i64
  %222 = getelementptr inbounds i32, ptr %214, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !50
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %231, label %234

225:                                              ; preds = %231
  %226 = add nsw i32 %232, -1
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds i32, ptr %214, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !50
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %234, !llvm.loop !138

231:                                              ; preds = %220, %225
  %232 = phi i32 [ %226, %225 ], [ %218, %220 ]
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %225, label %234, !llvm.loop !138

234:                                              ; preds = %225, %231, %220, %210
  %235 = phi i32 [ %218, %210 ], [ %218, %220 ], [ 0, %231 ], [ %226, %225 ]
  %236 = phi i1 [ %219, %210 ], [ %219, %220 ], [ %233, %231 ], [ %233, %225 ]
  switch i32 %235, label %269 [
    i32 0, label %237
    i32 -1, label %254
  ]

237:                                              ; preds = %234
  %238 = load i32, ptr %214, align 4, !tbaa !50
  %239 = srem i32 %238, %217
  %240 = sdiv i32 %238, %217
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %237
  %243 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %244 = icmp eq ptr %243, null
  br i1 %244, label %905, label %245

245:                                              ; preds = %242
  %246 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %247 = and i32 %246, 8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %905, label %249

249:                                              ; preds = %245
  %250 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr nonnull %243)
  br label %905

251:                                              ; preds = %237
  store i32 %240, ptr %214, align 4, !tbaa !50
  store i32 1, ptr %216, align 4, !tbaa !50
  %252 = load i32, ptr %164, align 8, !tbaa !67
  %253 = add nsw i32 %252, -1
  store i32 %253, ptr %164, align 8, !tbaa !67
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %179, i32 noundef %211)
  br label %905

254:                                              ; preds = %234
  %255 = load i32, ptr %214, align 4, !tbaa !50
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %259 = icmp eq ptr %258, null
  br i1 %259, label %905, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %262 = and i32 %261, 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %905, label %264

264:                                              ; preds = %260
  %265 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr nonnull %258)
  br label %905

266:                                              ; preds = %254
  %267 = load i32, ptr %164, align 8, !tbaa !67
  %268 = add nsw i32 %267, -1
  store i32 %268, ptr %164, align 8, !tbaa !67
  br label %905

269:                                              ; preds = %234
  %270 = tail call i32 @llvm.abs.i32(i32 %217, i1 true)
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, ptr %164, align 8, !tbaa !67
  %274 = add nsw i32 %273, -1
  store i32 %274, ptr %164, align 8, !tbaa !67
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %179, i32 noundef %211)
  br label %905

275:                                              ; preds = %269
  br i1 %236, label %277, label %276

276:                                              ; preds = %275
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %277

277:                                              ; preds = %276, %275
  %278 = load i32, ptr %4, align 4, !tbaa !76
  %279 = icmp sge i32 %278, %235
  %280 = add nsw i32 %278, 1
  %281 = icmp eq i32 %280, %211
  %282 = select i1 %279, i1 %281, i1 false
  br i1 %282, label %283, label %295

283:                                              ; preds = %277
  br i1 %11, label %284, label %289

284:                                              ; preds = %283
  %285 = getelementptr inbounds %struct.eqn_d, ptr %180, i64 %181, i32 2
  %286 = load i32, ptr %285, align 8, !tbaa !60
  %287 = icmp eq i32 %286, 1
  %288 = zext i1 %287 to i8
  br label %289

289:                                              ; preds = %284, %283
  %290 = phi i8 [ 0, %283 ], [ %288, %284 ]
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i1, ptr @in_approximate_mode, align 1
  %294 = xor i1 %293, true
  br label %295

295:                                              ; preds = %292, %289, %277
  %296 = phi i1 [ false, %289 ], [ false, %277 ], [ %294, %292 ]
  %297 = zext i1 %296 to i8
  %298 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %299 = icmp eq ptr %298, null
  br i1 %299, label %307, label %300

300:                                              ; preds = %295
  %301 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %302 = and i32 %301, 8
  %303 = icmp ne i32 %302, 0
  %304 = select i1 %303, i1 %296, i1 false
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 20, i64 1, ptr nonnull %298)
  br label %307

307:                                              ; preds = %305, %300, %295
  %308 = icmp sgt i32 %211, 0
  %309 = sext i32 %235 to i64
  %310 = zext i32 %218 to i64
  br label %311

311:                                              ; preds = %615, %307
  %312 = phi i32 [ %179, %307 ], [ %571, %615 ]
  %313 = phi i32 [ %270, %307 ], [ %572, %615 ]
  %314 = phi i8 [ %297, %307 ], [ 0, %615 ]
  br i1 %236, label %316, label %315

315:                                              ; preds = %311
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %316

316:                                              ; preds = %315, %311
  %317 = load i32, ptr %4, align 4, !tbaa !76
  %318 = icmp slt i32 %317, %235
  br i1 %318, label %319, label %345

319:                                              ; preds = %316
  %320 = icmp eq i32 %313, 1
  br i1 %320, label %355, label %321

321:                                              ; preds = %319, %341
  %322 = phi i64 [ %343, %341 ], [ %309, %319 ]
  %323 = phi i32 [ %342, %341 ], [ %313, %319 ]
  %324 = icmp sgt i64 %322, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %326

326:                                              ; preds = %325, %321
  %327 = load i32, ptr %4, align 4, !tbaa !76
  %328 = sext i32 %327 to i64
  %329 = icmp sgt i64 %322, %328
  br i1 %329, label %330, label %351

330:                                              ; preds = %326
  %331 = load ptr, ptr %213, align 8, !tbaa !56
  %332 = getelementptr inbounds i32, ptr %331, i64 %322
  %333 = load i32, ptr %332, align 4, !tbaa !50
  %334 = tail call i32 @llvm.abs.i32(i32 %333, i1 true)
  switch i32 %334, label %335 [
    i32 1, label %341
    i32 0, label %340
  ]

335:                                              ; preds = %330, %335
  %336 = phi i32 [ %337, %335 ], [ %323, %330 ]
  %337 = phi i32 [ %338, %335 ], [ %334, %330 ]
  %338 = urem i32 %336, %337
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %335, !llvm.loop !139

340:                                              ; preds = %330
  br label %341

341:                                              ; preds = %335, %330, %340
  %342 = phi i32 [ %334, %330 ], [ %323, %340 ], [ %337, %335 ]
  %343 = add i64 %322, -1
  %344 = icmp eq i32 %342, 1
  br i1 %344, label %351, label %321, !llvm.loop !140

345:                                              ; preds = %316
  br i1 %212, label %347, label %346

346:                                              ; preds = %345
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %347

347:                                              ; preds = %346, %345
  %348 = load i32, ptr %4, align 4, !tbaa !76
  %349 = icmp slt i32 %348, %211
  %350 = select i1 %349, i32 %313, i32 0
  br label %355

351:                                              ; preds = %326, %341
  %352 = phi i32 [ %323, %326 ], [ %342, %341 ]
  %353 = phi i64 [ %322, %326 ], [ %343, %341 ]
  %354 = trunc i64 %353 to i32
  br label %355

355:                                              ; preds = %351, %319, %347
  %356 = phi i32 [ %313, %347 ], [ %313, %319 ], [ %352, %351 ]
  %357 = phi i32 [ %350, %347 ], [ %313, %319 ], [ %352, %351 ]
  %358 = phi i32 [ %235, %347 ], [ %235, %319 ], [ %354, %351 ]
  %359 = icmp ne i32 %356, 1
  %360 = icmp sgt i32 %358, 0
  %361 = and i1 %359, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %355
  %363 = load ptr, ptr %213, align 8, !tbaa !56
  %364 = zext i32 %358 to i64
  br label %365

365:                                              ; preds = %362, %377
  %366 = phi i64 [ %364, %362 ], [ %379, %377 ]
  %367 = phi i32 [ %356, %362 ], [ %378, %377 ]
  %368 = getelementptr inbounds i32, ptr %363, i64 %366
  %369 = load i32, ptr %368, align 4, !tbaa !50
  %370 = tail call i32 @llvm.abs.i32(i32 %369, i1 true)
  switch i32 %370, label %371 [
    i32 1, label %377
    i32 0, label %376
  ]

371:                                              ; preds = %365, %371
  %372 = phi i32 [ %373, %371 ], [ %367, %365 ]
  %373 = phi i32 [ %374, %371 ], [ %370, %365 ]
  %374 = urem i32 %372, %373
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %377, label %371, !llvm.loop !139

376:                                              ; preds = %365
  br label %377

377:                                              ; preds = %371, %365, %376
  %378 = phi i32 [ %370, %365 ], [ %367, %376 ], [ %373, %371 ]
  %379 = add nsw i64 %366, -1
  %380 = icmp ne i32 %378, 1
  %381 = icmp sgt i64 %366, 1
  %382 = and i1 %380, %381
  br i1 %382, label %365, label %383, !llvm.loop !141

383:                                              ; preds = %377, %355
  %384 = phi i32 [ %356, %355 ], [ %378, %377 ]
  %385 = icmp sgt i32 %384, 1
  br i1 %385, label %386, label %414

386:                                              ; preds = %383
  %387 = load ptr, ptr %213, align 8, !tbaa !56
  %388 = load i32, ptr %387, align 4, !tbaa !50
  %389 = srem i32 %388, %384
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = load i32, ptr %0, align 8, !tbaa !54
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %412, label %403

394:                                              ; preds = %386
  %395 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %396 = icmp eq ptr %395, null
  br i1 %396, label %905, label %397

397:                                              ; preds = %394
  %398 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %399 = and i32 %398, 8
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %905, label %401

401:                                              ; preds = %397
  %402 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr nonnull %395)
  br label %905

403:                                              ; preds = %391, %403
  %404 = phi i64 [ %408, %403 ], [ 0, %391 ]
  %405 = getelementptr inbounds i32, ptr %387, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !50
  %407 = sdiv i32 %406, %384
  store i32 %407, ptr %405, align 4, !tbaa !50
  %408 = add nuw nsw i64 %404, 1
  %409 = load i32, ptr %0, align 8, !tbaa !54
  %410 = sext i32 %409 to i64
  %411 = icmp slt i64 %404, %410
  br i1 %411, label %403, label %412, !llvm.loop !142

412:                                              ; preds = %403, %391
  %413 = udiv i32 %357, %384
  br label %414

414:                                              ; preds = %412, %383
  %415 = phi i32 [ %413, %412 ], [ %357, %383 ]
  %416 = icmp sgt i32 %415, 1
  br i1 %416, label %417, label %570

417:                                              ; preds = %414
  %418 = zext i32 %312 to i64
  %419 = tail call i32 @llvm.smin.i32(i32 %312, i32 0)
  %420 = add i32 %419, -1
  br label %421

421:                                              ; preds = %417, %425
  %422 = phi i64 [ %418, %417 ], [ %426, %425 ]
  %423 = trunc i64 %422 to i32
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %437

425:                                              ; preds = %421
  %426 = add nsw i64 %422, -1
  %427 = load ptr, ptr %168, align 8, !tbaa !68
  %428 = and i64 %426, 4294967295
  %429 = getelementptr inbounds %struct.eqn_d, ptr %427, i64 %428, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !56
  %431 = getelementptr inbounds i32, ptr %430, i64 %215
  %432 = load i32, ptr %431, align 4, !tbaa !50
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %421, label %434, !llvm.loop !143

434:                                              ; preds = %425
  %435 = trunc i64 %422 to i32
  %436 = trunc i64 %426 to i32
  br label %437

437:                                              ; preds = %421, %434
  %438 = phi i32 [ %435, %434 ], [ %419, %421 ]
  %439 = phi i32 [ %436, %434 ], [ %420, %421 ]
  %440 = icmp eq i32 %438, 0
  br i1 %440, label %441, label %461

441:                                              ; preds = %437
  %442 = load i32, ptr %169, align 4, !tbaa !70
  %443 = zext i32 %442 to i64
  %444 = tail call i32 @llvm.smin.i32(i32 %442, i32 0)
  %445 = add i32 %444, -1
  br label %446

446:                                              ; preds = %450, %441
  %447 = phi i64 [ %451, %450 ], [ %443, %441 ]
  %448 = trunc i64 %447 to i32
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %450, label %461

450:                                              ; preds = %446
  %451 = add nsw i64 %447, -1
  %452 = load ptr, ptr %170, align 8, !tbaa !71
  %453 = and i64 %451, 4294967295
  %454 = getelementptr inbounds %struct.eqn_d, ptr %452, i64 %453, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !56
  %456 = getelementptr inbounds i32, ptr %455, i64 %215
  %457 = load i32, ptr %456, align 4, !tbaa !50
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %446, label %459, !llvm.loop !144

459:                                              ; preds = %450
  %460 = trunc i64 %451 to i32
  br label %461

461:                                              ; preds = %459, %446, %437
  %462 = phi i32 [ %439, %437 ], [ %460, %459 ], [ %445, %446 ]
  %463 = icmp eq i32 %462, -1
  br i1 %463, label %464, label %484

464:                                              ; preds = %461
  %465 = load i32, ptr %171, align 8, !tbaa !73
  %466 = zext i32 %465 to i64
  %467 = tail call i32 @llvm.smin.i32(i32 %465, i32 0)
  %468 = add i32 %467, -1
  br label %469

469:                                              ; preds = %473, %464
  %470 = phi i64 [ %474, %473 ], [ %466, %464 ]
  %471 = trunc i64 %470 to i32
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %484

473:                                              ; preds = %469
  %474 = add nsw i64 %470, -1
  %475 = load ptr, ptr %172, align 8, !tbaa !74
  %476 = and i64 %474, 4294967295
  %477 = getelementptr inbounds %struct.eqn_d, ptr %475, i64 %476, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !56
  %479 = getelementptr inbounds i32, ptr %478, i64 %215
  %480 = load i32, ptr %479, align 4, !tbaa !50
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %469, label %482, !llvm.loop !145

482:                                              ; preds = %473
  %483 = trunc i64 %474 to i32
  br label %484

484:                                              ; preds = %482, %469, %461
  %485 = phi i32 [ %462, %461 ], [ %483, %482 ], [ %468, %469 ]
  %486 = icmp eq i32 %485, -1
  br i1 %486, label %487, label %565

487:                                              ; preds = %484
  %488 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %489 = icmp eq ptr %488, null
  br i1 %489, label %499, label %490

490:                                              ; preds = %487
  %491 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %492 = and i32 %491, 8
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %490
  %495 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 16, i64 1, ptr nonnull %488)
  %496 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_eqn(ptr noundef %496, ptr noundef nonnull %0, ptr noundef %182, i8 noundef zeroext 0, i32 noundef 0)
  %497 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %498 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 2, i64 1, ptr %497)
  br label %499

499:                                              ; preds = %494, %490, %487
  %500 = load ptr, ptr %213, align 8, !tbaa !56
  %501 = getelementptr inbounds i32, ptr %500, i64 %215
  %502 = load i32, ptr %501, align 4, !tbaa !50
  %503 = tail call i32 @llvm.abs.i32(i32 %502, i1 true)
  br i1 %308, label %504, label %531

504:                                              ; preds = %499, %527
  %505 = phi i64 [ %529, %527 ], [ %310, %499 ]
  %506 = phi i8 [ %528, %527 ], [ 0, %499 ]
  %507 = getelementptr inbounds i32, ptr %500, i64 %505
  %508 = load i32, ptr %507, align 4, !tbaa !50
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %504
  %511 = udiv i32 %508, %503
  br label %517

512:                                              ; preds = %504
  %513 = xor i32 %508, -1
  %514 = add i32 %503, %513
  %515 = sdiv i32 %514, %503
  %516 = sub nsw i32 0, %515
  br label %517

517:                                              ; preds = %512, %510
  %518 = phi i32 [ %511, %510 ], [ %516, %512 ]
  %519 = mul nsw i32 %518, %503
  %520 = sub nsw i32 %508, %519
  %521 = shl nsw i32 %520, 1
  %522 = icmp slt i32 %521, %503
  %523 = select i1 %522, i32 0, i32 %503
  %524 = sub nsw i32 %520, %523
  %525 = icmp eq i32 %524, %508
  br i1 %525, label %527, label %526

526:                                              ; preds = %517
  store i32 %524, ptr %507, align 4, !tbaa !50
  br label %527

527:                                              ; preds = %526, %517
  %528 = phi i8 [ 1, %526 ], [ %506, %517 ]
  %529 = add nsw i64 %505, -1
  %530 = icmp sgt i64 %505, 0
  br i1 %530, label %504, label %531, !llvm.loop !146

531:                                              ; preds = %527, %499
  %532 = phi i8 [ 0, %499 ], [ %528, %527 ]
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %534, label %543

534:                                              ; preds = %531
  %535 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %536 = icmp eq ptr %535, null
  br i1 %536, label %565, label %537

537:                                              ; preds = %534
  %538 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %539 = and i32 %538, 8
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %565, label %541

541:                                              ; preds = %537
  %542 = tail call i64 @fwrite(ptr nonnull @.str.114, i64 9, i64 1, ptr nonnull %535)
  br label %565

543:                                              ; preds = %531
  %544 = load i32, ptr @next_wild_card, align 4, !tbaa !50
  %545 = add nsw i32 %544, -1
  store i32 %545, ptr @next_wild_card, align 4, !tbaa !50
  %546 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %547 = getelementptr inbounds %struct.param_info, ptr %546, i64 67, i32 1
  %548 = load i32, ptr %547, align 8, !tbaa !87
  %549 = sub nsw i32 0, %548
  %550 = icmp sgt i32 %544, %549
  %551 = select i1 %550, i32 %545, i32 -1
  store i32 %551, ptr @next_wild_card, align 4
  %552 = load ptr, ptr %173, align 8, !tbaa !61
  %553 = getelementptr inbounds i32, ptr %552, i64 %215
  store i32 %551, ptr %553, align 4, !tbaa !50
  %554 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %555 = icmp eq ptr %554, null
  br i1 %555, label %563, label %556

556:                                              ; preds = %543
  %557 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %558 = and i32 %557, 8
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %563, label %560

560:                                              ; preds = %556
  tail call void @omega_print_eqn(ptr noundef nonnull %554, ptr noundef nonnull %0, ptr noundef %182, i8 noundef zeroext 0, i32 noundef 0)
  %561 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %562 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 2, i64 1, ptr %561)
  br label %563

563:                                              ; preds = %560, %556, %543
  %564 = add nsw i32 %312, 1
  br label %565

565:                                              ; preds = %534, %537, %541, %563, %484
  %566 = phi i32 [ %312, %484 ], [ %564, %563 ], [ %312, %534 ], [ %312, %537 ], [ %312, %541 ]
  %567 = phi i32 [ %384, %484 ], [ %503, %563 ], [ %503, %534 ], [ %503, %537 ], [ %503, %541 ]
  %568 = phi i1 [ true, %484 ], [ false, %563 ], [ true, %534 ], [ true, %537 ], [ true, %541 ]
  %569 = phi i32 [ 0, %484 ], [ 10, %563 ], [ 0, %534 ], [ 0, %537 ], [ 0, %541 ]
  br i1 %568, label %570, label %905

570:                                              ; preds = %565, %414
  %571 = phi i32 [ %566, %565 ], [ %312, %414 ]
  %572 = phi i32 [ %567, %565 ], [ %384, %414 ]
  %573 = icmp eq i8 %314, 0
  br i1 %573, label %616, label %574

574:                                              ; preds = %570
  %575 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %576 = icmp eq ptr %575, null
  br i1 %576, label %599, label %577

577:                                              ; preds = %574
  %578 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %579 = and i32 %578, 8
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %599, label %581

581:                                              ; preds = %577
  %582 = load ptr, ptr %174, align 8, !tbaa !61
  %583 = getelementptr inbounds i32, ptr %582, i64 %215
  %584 = load i32, ptr %583, align 4, !tbaa !50
  %585 = icmp ult i32 %584, 21
  br i1 %585, label %586, label %589

586:                                              ; preds = %581
  %587 = zext nneg i32 %584 to i64
  %588 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %587
  br label %595

589:                                              ; preds = %581
  %590 = icmp ugt i32 %584, -20
  br i1 %590, label %591, label %595

591:                                              ; preds = %589
  %592 = add nsw i32 %584, 40
  %593 = zext nneg i32 %592 to i64
  %594 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %593
  br label %595

595:                                              ; preds = %591, %589, %586
  %596 = phi ptr [ %588, %586 ], [ %594, %591 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %589 ]
  %597 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %575, ptr noundef nonnull @.str.115, ptr noundef nonnull %596)
  %598 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call fastcc void @omega_print_vars(ptr noundef %598, ptr noundef nonnull %0)
  br label %599

599:                                              ; preds = %595, %577, %574
  %600 = load i32, ptr %4, align 4, !tbaa !76
  %601 = add nsw i32 %600, 1
  store i32 %601, ptr %4, align 4, !tbaa !76
  %602 = load ptr, ptr %175, align 8, !tbaa !61
  %603 = getelementptr inbounds i32, ptr %602, i64 %215
  %604 = load i32, ptr %603, align 4, !tbaa !50
  %605 = icmp sgt i32 %604, -1
  br i1 %605, label %606, label %615

606:                                              ; preds = %599
  %607 = load i32, ptr @next_wild_card, align 4, !tbaa !50
  %608 = add nsw i32 %607, -1
  store i32 %608, ptr @next_wild_card, align 4, !tbaa !50
  %609 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %610 = getelementptr inbounds %struct.param_info, ptr %609, i64 67, i32 1
  %611 = load i32, ptr %610, align 8, !tbaa !87
  %612 = sub nsw i32 0, %611
  %613 = icmp sgt i32 %607, %612
  %614 = select i1 %613, i32 %608, i32 -1
  store i32 %614, ptr @next_wild_card, align 4
  store i32 %614, ptr %603, align 4, !tbaa !50
  br label %615

615:                                              ; preds = %606, %599
  br label %311

616:                                              ; preds = %570
  %617 = icmp slt i32 %415, 2
  %618 = load i1, ptr @in_approximate_mode, align 1
  %619 = select i1 %617, i1 true, i1 %618
  br i1 %619, label %734, label %620

620:                                              ; preds = %616
  %621 = load ptr, ptr %168, align 8, !tbaa !68
  %622 = sext i32 %571 to i64
  %623 = getelementptr inbounds %struct.eqn_d, ptr %621, i64 %622, i32 2
  %624 = load i32, ptr %623, align 8, !tbaa !60
  %625 = icmp eq i32 %624, 1
  %626 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %627 = icmp eq ptr %626, null
  br i1 %625, label %628, label %638

628:                                              ; preds = %620
  br i1 %627, label %635, label %629

629:                                              ; preds = %628
  %630 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %631 = and i32 %630, 8
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %635, label %633

633:                                              ; preds = %629
  %634 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 22, i64 1, ptr nonnull %626)
  br label %635

635:                                              ; preds = %633, %629, %628
  %636 = load i32, ptr %164, align 8, !tbaa !67
  %637 = add nsw i32 %636, -1
  store i32 %637, ptr %164, align 8, !tbaa !67
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %571, i32 noundef %211)
  br label %905

638:                                              ; preds = %620
  br i1 %627, label %653, label %639

639:                                              ; preds = %638
  %640 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %641 = and i32 %640, 8
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %653, label %643

643:                                              ; preds = %639
  %644 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 41, i64 1, ptr nonnull %626)
  %645 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_eqn(ptr noundef %645, ptr noundef nonnull %0, ptr noundef %182, i8 noundef zeroext 0, i32 noundef 0)
  %646 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %647 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 6, i64 1, ptr %646)
  %648 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %648, ptr noundef nonnull %0)
  %649 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %650 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 6, i64 1, ptr %649)
  %651 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %652 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 6, i64 1, ptr %651)
  br label %653

653:                                              ; preds = %643, %639, %638
  %654 = tail call fastcc i32 @omega_add_new_wild_card(ptr noundef nonnull %0)
  %655 = load i32, ptr %164, align 8, !tbaa !67
  %656 = add nsw i32 %655, 1
  store i32 %656, ptr %164, align 8, !tbaa !67
  %657 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %658 = getelementptr inbounds %struct.param_info, ptr %657, i64 66, i32 1
  %659 = load i32, ptr %658, align 8, !tbaa !87
  %660 = icmp slt i32 %655, %659
  br i1 %660, label %662, label %661

661:                                              ; preds = %653
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3362, ptr noundef nonnull @.str.21) #22
  br label %662

662:                                              ; preds = %661, %653
  %663 = load ptr, ptr %168, align 8, !tbaa !68
  %664 = add nsw i32 %571, 1
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds %struct.eqn_d, ptr %663, i64 %665
  %667 = load i32, ptr %0, align 8, !tbaa !54
  store i32 0, ptr %666, align 8, !tbaa !59
  %668 = getelementptr inbounds %struct.eqn_d, ptr %663, i64 %665, i32 1
  store i32 0, ptr %668, align 4, !tbaa !58
  %669 = getelementptr inbounds %struct.eqn_d, ptr %663, i64 %665, i32 2
  store i32 0, ptr %669, align 8, !tbaa !60
  %670 = getelementptr inbounds %struct.eqn_d, ptr %663, i64 %665, i32 3
  %671 = load ptr, ptr %670, align 8, !tbaa !56
  %672 = add nsw i32 %667, 1
  %673 = sext i32 %672 to i64
  %674 = shl nsw i64 %673, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %671, i8 0, i64 %674, i1 false)
  %675 = load ptr, ptr %168, align 8, !tbaa !68
  %676 = getelementptr inbounds %struct.eqn_d, ptr %675, i64 %665
  %677 = load i32, ptr %4, align 4, !tbaa !76
  %678 = load i32, ptr %182, align 8, !tbaa !59
  store i32 %678, ptr %676, align 8, !tbaa !59
  %679 = getelementptr inbounds %struct.eqn_d, ptr %180, i64 %181, i32 1
  %680 = load i32, ptr %679, align 4, !tbaa !58
  %681 = getelementptr inbounds %struct.eqn_d, ptr %675, i64 %665, i32 1
  store i32 %680, ptr %681, align 4, !tbaa !58
  %682 = getelementptr inbounds %struct.eqn_d, ptr %180, i64 %181, i32 2
  %683 = load i32, ptr %682, align 8, !tbaa !60
  %684 = getelementptr inbounds %struct.eqn_d, ptr %675, i64 %665, i32 2
  store i32 %683, ptr %684, align 8, !tbaa !60
  %685 = getelementptr inbounds %struct.eqn_d, ptr %675, i64 %665, i32 3
  %686 = load ptr, ptr %685, align 8, !tbaa !56
  %687 = load ptr, ptr %213, align 8, !tbaa !56
  %688 = add nsw i32 %677, 1
  %689 = sext i32 %688 to i64
  %690 = shl nsw i64 %689, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %686, ptr align 4 %687, i64 %690, i1 false)
  %691 = load i32, ptr %0, align 8, !tbaa !54
  %692 = icmp sgt i32 %691, -1
  br i1 %692, label %693, label %720

693:                                              ; preds = %662
  %694 = load ptr, ptr %168, align 8, !tbaa !68
  %695 = getelementptr inbounds %struct.eqn_d, ptr %694, i64 %665, i32 3
  %696 = load ptr, ptr %695, align 8, !tbaa !56
  %697 = zext nneg i32 %691 to i64
  br label %698

698:                                              ; preds = %693, %710
  %699 = phi i64 [ %697, %693 ], [ %718, %710 ]
  %700 = getelementptr inbounds i32, ptr %696, i64 %699
  %701 = load i32, ptr %700, align 4, !tbaa !50
  %702 = icmp sgt i32 %701, 0
  br i1 %702, label %703, label %705

703:                                              ; preds = %698
  %704 = sdiv i32 %701, %415
  br label %710

705:                                              ; preds = %698
  %706 = xor i32 %701, -1
  %707 = add i32 %415, %706
  %708 = sdiv i32 %707, %415
  %709 = sub nsw i32 0, %708
  br label %710

710:                                              ; preds = %705, %703
  %711 = phi i32 [ %704, %703 ], [ %709, %705 ]
  %712 = mul nsw i32 %711, %415
  %713 = sub nsw i32 %701, %712
  %714 = shl nsw i32 %713, 1
  %715 = icmp slt i32 %714, %415
  %716 = select i1 %715, i32 0, i32 %415
  %717 = sub nsw i32 %713, %716
  store i32 %717, ptr %700, align 4, !tbaa !50
  %718 = add nsw i64 %699, -1
  %719 = icmp sgt i64 %699, 0
  br i1 %719, label %698, label %720, !llvm.loop !147

720:                                              ; preds = %710, %662
  %721 = load ptr, ptr %168, align 8, !tbaa !68
  %722 = getelementptr inbounds %struct.eqn_d, ptr %721, i64 %665, i32 3
  %723 = load ptr, ptr %722, align 8, !tbaa !56
  %724 = sext i32 %654 to i64
  %725 = getelementptr inbounds i32, ptr %723, i64 %724
  store i32 %415, ptr %725, align 4, !tbaa !50
  %726 = add nsw i32 %571, 2
  %727 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %728 = icmp eq ptr %727, null
  br i1 %728, label %905, label %729

729:                                              ; preds = %720
  %730 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %731 = and i32 %730, 8
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %905, label %733

733:                                              ; preds = %729
  tail call void @omega_print_problem(ptr noundef nonnull %727, ptr noundef nonnull %0)
  br label %905

734:                                              ; preds = %616
  %735 = load i32, ptr %4, align 4, !tbaa !76
  %736 = icmp eq i32 %415, 0
  %737 = select i1 %736, i32 0, i32 %735
  br i1 %416, label %738, label %771

738:                                              ; preds = %734
  br i1 %618, label %740, label %739

739:                                              ; preds = %738
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3390, ptr noundef nonnull @.str.21) #22
  br label %740

740:                                              ; preds = %739, %738
  %741 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %742 = icmp eq ptr %741, null
  br i1 %742, label %753, label %743

743:                                              ; preds = %740
  %744 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %745 = and i32 %744, 8
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %753, label %747

747:                                              ; preds = %743
  %748 = tail call i64 @fwrite(ptr nonnull @.str.119, i64 23, i64 1, ptr nonnull %741)
  %749 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_eqn(ptr noundef %749, ptr noundef nonnull %0, ptr noundef %182, i8 noundef zeroext 0, i32 noundef 0)
  %750 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %751 = tail call i32 @fputc(i32 10, ptr %750)
  %752 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %752, ptr noundef nonnull %0)
  br label %753

753:                                              ; preds = %747, %743, %740
  %754 = load i32, ptr %0, align 8, !tbaa !54
  %755 = icmp sgt i32 %754, %737
  br i1 %755, label %756, label %792

756:                                              ; preds = %753
  %757 = load ptr, ptr %168, align 8, !tbaa !68
  %758 = sext i32 %571 to i64
  %759 = getelementptr inbounds %struct.eqn_d, ptr %757, i64 %758, i32 3
  %760 = load ptr, ptr %759, align 8, !tbaa !56
  %761 = sext i32 %754 to i64
  %762 = sext i32 %737 to i64
  br label %763

763:                                              ; preds = %756, %768
  %764 = phi i64 [ %761, %756 ], [ %769, %768 ]
  %765 = getelementptr inbounds i32, ptr %760, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !50
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %788

768:                                              ; preds = %763
  %769 = add nsw i64 %764, -1
  %770 = icmp sgt i64 %769, %762
  br i1 %770, label %763, label %792, !llvm.loop !148

771:                                              ; preds = %734
  %772 = load i32, ptr %0, align 8, !tbaa !54
  %773 = icmp sgt i32 %772, %737
  br i1 %773, label %774, label %792

774:                                              ; preds = %771
  %775 = load ptr, ptr %168, align 8, !tbaa !68
  %776 = sext i32 %571 to i64
  %777 = getelementptr inbounds %struct.eqn_d, ptr %775, i64 %776, i32 3
  %778 = load ptr, ptr %777, align 8, !tbaa !56
  %779 = sext i32 %772 to i64
  %780 = sext i32 %737 to i64
  br label %781

781:                                              ; preds = %774, %785
  %782 = phi i64 [ %779, %774 ], [ %786, %785 ]
  %783 = getelementptr inbounds i32, ptr %778, i64 %782
  %784 = load i32, ptr %783, align 4, !tbaa !50
  switch i32 %784, label %785 [
    i32 1, label %790
    i32 -1, label %790
  ]

785:                                              ; preds = %781
  %786 = add nsw i64 %782, -1
  %787 = icmp sgt i64 %786, %780
  br i1 %787, label %781, label %792, !llvm.loop !149

788:                                              ; preds = %763
  %789 = trunc i64 %764 to i32
  br label %792

790:                                              ; preds = %781, %781
  %791 = trunc i64 %782 to i32
  br label %792

792:                                              ; preds = %790, %785, %788, %768, %771, %753
  %793 = phi i32 [ %754, %753 ], [ %772, %771 ], [ %789, %788 ], [ %737, %768 ], [ %791, %790 ], [ %737, %785 ]
  %794 = icmp sgt i32 %793, %737
  br i1 %794, label %795, label %808

795:                                              ; preds = %792
  %796 = load i32, ptr %164, align 8, !tbaa !67
  %797 = add nsw i32 %796, -1
  store i32 %797, ptr %164, align 8, !tbaa !67
  tail call fastcc void @omega_do_elimination(ptr noundef nonnull %0, i32 noundef %571, i32 noundef %793)
  %798 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %799 = icmp eq ptr %798, null
  br i1 %799, label %905, label %800

800:                                              ; preds = %795
  %801 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %802 = and i32 %801, 8
  %803 = icmp ne i32 %802, 0
  %804 = and i1 %416, %803
  br i1 %804, label %805, label %905

805:                                              ; preds = %800
  %806 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 33, i64 1, ptr nonnull %798)
  %807 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %807, ptr noundef nonnull %0)
  br label %905

808:                                              ; preds = %792
  %809 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %810 = icmp eq ptr %809, null
  br i1 %810, label %817, label %811

811:                                              ; preds = %808
  %812 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %813 = and i32 %812, 8
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %817, label %815

815:                                              ; preds = %811
  %816 = tail call i64 @fwrite(ptr nonnull @.str.121, i64 13, i64 1, ptr nonnull %809)
  br label %817

817:                                              ; preds = %815, %811, %808
  %818 = load i32, ptr %0, align 8, !tbaa !54
  %819 = icmp eq i32 %818, %737
  br i1 %819, label %852, label %820

820:                                              ; preds = %817
  %821 = load ptr, ptr %168, align 8, !tbaa !68
  %822 = sext i32 %571 to i64
  %823 = getelementptr inbounds %struct.eqn_d, ptr %821, i64 %822, i32 3
  %824 = load ptr, ptr %823, align 8, !tbaa !56
  %825 = sext i32 %818 to i64
  br label %826

826:                                              ; preds = %820, %844
  %827 = phi i64 [ %825, %820 ], [ %845, %844 ]
  %828 = getelementptr inbounds i32, ptr %824, i64 %827
  %829 = load i32, ptr %828, align 4, !tbaa !50
  %830 = and i32 %829, 1
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %844, label %832

832:                                              ; preds = %826
  %833 = trunc i64 %827 to i32
  br label %834

834:                                              ; preds = %832, %839
  %835 = phi i64 [ %827, %832 ], [ %836, %839 ]
  %836 = add nsw i64 %835, -1
  %837 = trunc i64 %836 to i32
  %838 = icmp eq i32 %737, %837
  br i1 %838, label %852, label %839

839:                                              ; preds = %834
  %840 = getelementptr inbounds i32, ptr %824, i64 %836
  %841 = load i32, ptr %840, align 4, !tbaa !50
  %842 = and i32 %841, 1
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %834, label %850, !llvm.loop !150

844:                                              ; preds = %826
  %845 = add nsw i64 %827, -1
  %846 = trunc i64 %845 to i32
  %847 = icmp eq i32 %737, %846
  br i1 %847, label %848, label %826, !llvm.loop !151

848:                                              ; preds = %844
  %849 = trunc i64 %845 to i32
  br label %852

850:                                              ; preds = %839
  %851 = trunc i64 %836 to i32
  br label %852

852:                                              ; preds = %850, %834, %848, %817
  %853 = phi i32 [ 0, %817 ], [ 0, %848 ], [ %833, %834 ], [ %833, %850 ]
  %854 = phi i32 [ %818, %817 ], [ %849, %848 ], [ %851, %850 ], [ %737, %834 ]
  %855 = icmp eq i32 %853, 0
  %856 = icmp ne i32 %854, %737
  %857 = select i1 %855, i1 true, i1 %856
  br i1 %857, label %858, label %866

858:                                              ; preds = %852
  %859 = icmp eq i32 %818, %737
  br i1 %859, label %887, label %860

860:                                              ; preds = %858
  %861 = load ptr, ptr %168, align 8, !tbaa !68
  %862 = sext i32 %571 to i64
  %863 = getelementptr inbounds %struct.eqn_d, ptr %861, i64 %862, i32 3
  %864 = load ptr, ptr %863, align 8, !tbaa !56
  %865 = sext i32 %818 to i64
  br label %867

866:                                              ; preds = %852
  tail call fastcc void @omega_do_mod(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %571, i32 noundef %853)
  br label %902

867:                                              ; preds = %860, %881
  %868 = phi i64 [ %865, %860 ], [ %884, %881 ]
  %869 = phi i32 [ 2147483647, %860 ], [ %883, %881 ]
  %870 = phi i32 [ 0, %860 ], [ %882, %881 ]
  %871 = getelementptr inbounds i32, ptr %864, i64 %868
  %872 = load i32, ptr %871, align 4, !tbaa !50
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %881, label %874

874:                                              ; preds = %867
  %875 = tail call i32 @llvm.abs.i32(i32 %872, i1 true)
  %876 = add nuw nsw i32 %875, 1
  %877 = icmp sgt i32 %869, %876
  %878 = trunc i64 %868 to i32
  %879 = select i1 %877, i32 %878, i32 %870
  %880 = tail call i32 @llvm.smin.i32(i32 %869, i32 %876)
  br label %881

881:                                              ; preds = %874, %867
  %882 = phi i32 [ %870, %867 ], [ %879, %874 ]
  %883 = phi i32 [ %869, %867 ], [ %880, %874 ]
  %884 = add nsw i64 %868, -1
  %885 = trunc i64 %884 to i32
  %886 = icmp eq i32 %737, %885
  br i1 %886, label %887, label %867, !llvm.loop !152

887:                                              ; preds = %881, %858
  %888 = phi i32 [ 0, %858 ], [ %882, %881 ]
  %889 = phi i32 [ 2147483647, %858 ], [ %883, %881 ]
  %890 = icmp eq i32 %888, %737
  br i1 %890, label %891, label %901

891:                                              ; preds = %887
  %892 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %893 = icmp eq ptr %892, null
  br i1 %893, label %900, label %894

894:                                              ; preds = %891
  %895 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %896 = and i32 %895, 8
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %900, label %898

898:                                              ; preds = %894
  %899 = tail call i64 @fwrite(ptr nonnull @.str.122, i64 25, i64 1, ptr nonnull %892)
  br label %900

900:                                              ; preds = %898, %894, %891
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3461, ptr noundef nonnull @.str.21) #22
  br label %901

901:                                              ; preds = %900, %887
  tail call fastcc void @omega_do_mod(ptr noundef nonnull %0, i32 noundef %889, i32 noundef %571, i32 noundef %888)
  br label %902

902:                                              ; preds = %901, %866
  %903 = phi i32 [ 10, %866 ], [ 0, %901 ]
  %904 = add nsw i32 %571, 1
  br label %905

905:                                              ; preds = %565, %394, %397, %401, %635, %720, %729, %733, %795, %800, %805, %902, %272, %266, %264, %260, %257, %251, %249, %245, %242
  %906 = phi i32 [ %179, %251 ], [ %179, %266 ], [ %179, %272 ], [ %179, %242 ], [ %179, %245 ], [ %179, %249 ], [ %179, %257 ], [ %179, %260 ], [ %179, %264 ], [ %571, %635 ], [ %726, %733 ], [ %726, %729 ], [ %726, %720 ], [ %571, %805 ], [ %571, %800 ], [ %571, %795 ], [ %904, %902 ], [ %312, %394 ], [ %312, %397 ], [ %312, %401 ], [ %566, %565 ]
  %907 = phi i32 [ 10, %251 ], [ 10, %266 ], [ 0, %272 ], [ 1, %242 ], [ 1, %245 ], [ 1, %249 ], [ 1, %257 ], [ 1, %260 ], [ 1, %264 ], [ 10, %635 ], [ 10, %733 ], [ 10, %729 ], [ 10, %720 ], [ 0, %805 ], [ 0, %800 ], [ 0, %795 ], [ %903, %902 ], [ 1, %394 ], [ 1, %397 ], [ 1, %401 ], [ %569, %565 ]
  switch i32 %907, label %912 [
    i32 0, label %908
    i32 10, label %908
  ]

908:                                              ; preds = %905, %905
  %909 = icmp sgt i32 %906, 0
  br i1 %909, label %176, label %910, !llvm.loop !153

910:                                              ; preds = %908, %163
  %911 = phi i1 [ %166, %163 ], [ %909, %908 ]
  store i32 0, ptr %164, align 8, !tbaa !67
  br label %912

912:                                              ; preds = %905, %910
  %913 = phi i1 [ %911, %910 ], [ %177, %905 ]
  br i1 %913, label %3403, label %914

914:                                              ; preds = %912
  %915 = load i1, ptr @in_approximate_mode, align 1
  br i1 %915, label %916, label %922

916:                                              ; preds = %914
  %917 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %918 = load i32, ptr %917, align 4, !tbaa !70
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %922

920:                                              ; preds = %916
  %921 = load i32, ptr %4, align 4, !tbaa !76
  store i32 %921, ptr %0, align 8, !tbaa !54
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0)
  br label %3403

922:                                              ; preds = %916, %914
  br i1 %11, label %925, label %923

923:                                              ; preds = %922
  %924 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  store i32 0, ptr %924, align 8, !tbaa !73
  store i32 0, ptr %4, align 4, !tbaa !76
  br label %925

925:                                              ; preds = %923, %922
  %926 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %927 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %928 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 7
  %929 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %930 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %931 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %932 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %933 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %934 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %935 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %936 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %937 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %938 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %939 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %940 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %941 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %942 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %943 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %944 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %945 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %946 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %947 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %948 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %949 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %950 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  br label %951

951:                                              ; preds = %3400, %925
  %952 = phi i8 [ 0, %925 ], [ %3401, %3400 ]
  %953 = phi i32 [ undef, %925 ], [ %3402, %3400 ]
  br i1 %11, label %958, label %954

954:                                              ; preds = %951
  %955 = load i32, ptr %926, align 8, !tbaa !73
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %958, label %957

957:                                              ; preds = %954
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3541, ptr noundef nonnull @.str.21) #22
  br label %958

958:                                              ; preds = %957, %954, %951
  %959 = load i32, ptr %927, align 4, !tbaa !70
  %960 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %961 = getelementptr inbounds %struct.param_info, ptr %960, i64 65, i32 1
  %962 = load i32, ptr %961, align 8, !tbaa !87
  %963 = icmp sgt i32 %959, %962
  br i1 %963, label %964, label %965

964:                                              ; preds = %958
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3544, ptr noundef nonnull @.str.21) #22
  br label %965

965:                                              ; preds = %964, %958
  %966 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %967 = icmp eq ptr %966, null
  br i1 %967, label %978, label %968

968:                                              ; preds = %965
  %969 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %970 = and i32 %969, 8
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %978, label %972

972:                                              ; preds = %968
  %973 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %974 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %966, ptr noundef nonnull @.str.132, i32 noundef %1, i32 noundef %973)
  %975 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %975, ptr noundef %0)
  %976 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %977 = tail call i32 @fputc(i32 10, ptr %976)
  br label %978

978:                                              ; preds = %972, %968, %965
  %979 = load i32, ptr %0, align 8, !tbaa !54
  %980 = icmp eq i32 %979, 1
  br i1 %980, label %981, label %1175

981:                                              ; preds = %978
  %982 = load i32, ptr %927, align 4, !tbaa !70
  %983 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %984 = zext i32 %982 to i64
  br label %985

985:                                              ; preds = %1075, %981
  %986 = phi i64 [ %993, %1075 ], [ %984, %981 ]
  %987 = phi i32 [ %1077, %1075 ], [ -134217727, %981 ]
  %988 = phi i32 [ %1078, %1075 ], [ 134217727, %981 ]
  %989 = phi i32 [ %1079, %1075 ], [ 0, %981 ]
  %990 = phi i32 [ %1080, %1075 ], [ 0, %981 ]
  %991 = phi i32 [ %1081, %1075 ], [ %953, %981 ]
  %992 = add nsw i64 %986, -1
  %993 = add nsw i64 %986, -1
  %994 = trunc i64 %986 to i32
  %995 = icmp sgt i32 %994, 0
  br i1 %995, label %996, label %1082

996:                                              ; preds = %985
  %997 = load ptr, ptr %983, align 8, !tbaa !71
  %998 = getelementptr inbounds %struct.eqn_d, ptr %997, i64 %992, i32 3
  %999 = load ptr, ptr %998, align 8, !tbaa !56
  %1000 = getelementptr inbounds i32, ptr %999, i64 1
  %1001 = load i32, ptr %1000, align 4, !tbaa !50
  %1002 = load i32, ptr %999, align 4, !tbaa !50
  %1003 = icmp eq i32 %1001, 0
  br i1 %1003, label %1004, label %1015

1004:                                             ; preds = %996
  %1005 = icmp slt i32 %1002, 0
  br i1 %1005, label %1006, label %1075

1006:                                             ; preds = %1004
  %1007 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1075, label %1009

1009:                                             ; preds = %1006
  %1010 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1011 = and i32 %1010, 8
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1075, label %1013

1013:                                             ; preds = %1009
  %1014 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr nonnull %1007)
  br label %1075

1015:                                             ; preds = %996
  %1016 = icmp sgt i32 %1001, 0
  br i1 %1016, label %1017, label %1046

1017:                                             ; preds = %1015
  %1018 = icmp eq i32 %1001, 1
  br i1 %1018, label %1028, label %1019

1019:                                             ; preds = %1017
  %1020 = icmp sgt i32 %1002, 0
  br i1 %1020, label %1021, label %1023

1021:                                             ; preds = %1019
  %1022 = udiv i32 %1002, %1001
  br label %1028

1023:                                             ; preds = %1019
  %1024 = xor i32 %1002, -1
  %1025 = add i32 %1001, %1024
  %1026 = sdiv i32 %1025, %1001
  %1027 = sub nsw i32 0, %1026
  br label %1028

1028:                                             ; preds = %1023, %1021, %1017
  %1029 = phi i32 [ %1002, %1017 ], [ %1022, %1021 ], [ %1027, %1023 ]
  %1030 = sub nsw i32 0, %1029
  %1031 = icmp slt i32 %987, %1030
  br i1 %1031, label %1043, label %1032

1032:                                             ; preds = %1028
  %1033 = icmp eq i32 %987, %1030
  br i1 %1033, label %1034, label %1075

1034:                                             ; preds = %1032
  br i1 %11, label %1035, label %1040

1035:                                             ; preds = %1034
  %1036 = getelementptr inbounds %struct.eqn_d, ptr %997, i64 %992, i32 2
  %1037 = load i32, ptr %1036, align 8, !tbaa !60
  %1038 = icmp eq i32 %1037, 1
  %1039 = zext i1 %1038 to i8
  br label %1040

1040:                                             ; preds = %1034, %1035
  %1041 = phi i8 [ 0, %1034 ], [ %1039, %1035 ]
  %1042 = icmp eq i8 %1041, 0
  br i1 %1042, label %1043, label %1075

1043:                                             ; preds = %1040, %1028
  %1044 = getelementptr inbounds %struct.eqn_d, ptr %997, i64 %992, i32 2
  %1045 = load i32, ptr %1044, align 8, !tbaa !60
  br label %1075

1046:                                             ; preds = %1015
  %1047 = icmp eq i32 %1001, -1
  br i1 %1047, label %1058, label %1048

1048:                                             ; preds = %1046
  %1049 = sub nsw i32 0, %1001
  %1050 = icmp sgt i32 %1002, 0
  br i1 %1050, label %1051, label %1053

1051:                                             ; preds = %1048
  %1052 = sdiv i32 %1002, %1049
  br label %1058

1053:                                             ; preds = %1048
  %1054 = xor i32 %1002, -1
  %1055 = sub i32 %1054, %1001
  %1056 = sdiv i32 %1055, %1049
  %1057 = sub nsw i32 0, %1056
  br label %1058

1058:                                             ; preds = %1053, %1051, %1046
  %1059 = phi i32 [ %1002, %1046 ], [ %1052, %1051 ], [ %1057, %1053 ]
  %1060 = icmp sgt i32 %988, %1059
  br i1 %1060, label %1072, label %1061

1061:                                             ; preds = %1058
  %1062 = icmp eq i32 %988, %1059
  br i1 %1062, label %1063, label %1075

1063:                                             ; preds = %1061
  br i1 %11, label %1064, label %1069

1064:                                             ; preds = %1063
  %1065 = getelementptr inbounds %struct.eqn_d, ptr %997, i64 %992, i32 2
  %1066 = load i32, ptr %1065, align 8, !tbaa !60
  %1067 = icmp eq i32 %1066, 1
  %1068 = zext i1 %1067 to i8
  br label %1069

1069:                                             ; preds = %1063, %1064
  %1070 = phi i8 [ 0, %1063 ], [ %1068, %1064 ]
  %1071 = icmp eq i8 %1070, 0
  br i1 %1071, label %1072, label %1075

1072:                                             ; preds = %1069, %1058
  %1073 = getelementptr inbounds %struct.eqn_d, ptr %997, i64 %992, i32 2
  %1074 = load i32, ptr %1073, align 8, !tbaa !60
  br label %1075

1075:                                             ; preds = %1013, %1009, %1006, %1072, %1069, %1061, %1043, %1040, %1032, %1004
  %1076 = phi i1 [ true, %1043 ], [ true, %1040 ], [ true, %1032 ], [ true, %1072 ], [ true, %1069 ], [ true, %1061 ], [ true, %1004 ], [ false, %1006 ], [ false, %1009 ], [ false, %1013 ]
  %1077 = phi i32 [ %1030, %1043 ], [ %987, %1040 ], [ %987, %1032 ], [ %987, %1072 ], [ %987, %1069 ], [ %987, %1061 ], [ %987, %1004 ], [ %987, %1006 ], [ %987, %1009 ], [ %987, %1013 ]
  %1078 = phi i32 [ %988, %1043 ], [ %988, %1040 ], [ %988, %1032 ], [ %1059, %1072 ], [ %988, %1069 ], [ %988, %1061 ], [ %988, %1004 ], [ %988, %1006 ], [ %988, %1009 ], [ %988, %1013 ]
  %1079 = phi i32 [ %1045, %1043 ], [ %989, %1040 ], [ %989, %1032 ], [ %989, %1072 ], [ %989, %1069 ], [ %989, %1061 ], [ %989, %1004 ], [ %989, %1006 ], [ %989, %1009 ], [ %989, %1013 ]
  %1080 = phi i32 [ %990, %1043 ], [ %990, %1040 ], [ %990, %1032 ], [ %1074, %1072 ], [ %990, %1069 ], [ %990, %1061 ], [ %990, %1004 ], [ %990, %1006 ], [ %990, %1009 ], [ %990, %1013 ]
  %1081 = phi i32 [ %991, %1043 ], [ %991, %1040 ], [ %991, %1032 ], [ %991, %1072 ], [ %991, %1069 ], [ %991, %1061 ], [ %991, %1004 ], [ 0, %1006 ], [ 0, %1009 ], [ 0, %1013 ]
  br i1 %1076, label %985, label %3403, !llvm.loop !154

1082:                                             ; preds = %985
  %1083 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1093, label %1085

1085:                                             ; preds = %1082
  %1086 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1087 = and i32 %1086, 8
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1093, label %1089

1089:                                             ; preds = %1085
  %1090 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1083, ptr noundef nonnull @.str.133, i32 noundef %988)
  %1091 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1092 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1091, ptr noundef nonnull @.str.134, i32 noundef %987)
  br label %1093

1093:                                             ; preds = %1089, %1085, %1082
  %1094 = icmp sgt i32 %987, %988
  br i1 %1094, label %1095, label %1104

1095:                                             ; preds = %1093
  %1096 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1097 = icmp eq ptr %1096, null
  br i1 %1097, label %3403, label %1098

1098:                                             ; preds = %1095
  %1099 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1100 = and i32 %1099, 8
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %3403, label %1102

1102:                                             ; preds = %1098
  %1103 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr nonnull %1096)
  br label %3403

1104:                                             ; preds = %1093
  br i1 %11, label %1105, label %1156

1105:                                             ; preds = %1104
  store i32 0, ptr %927, align 4, !tbaa !70
  %1106 = load i32, ptr %4, align 4, !tbaa !76
  %1107 = icmp eq i32 %1106, 1
  br i1 %1107, label %1108, label %1154

1108:                                             ; preds = %1105
  %1109 = icmp eq i32 %987, %988
  %1110 = icmp eq i32 %990, 0
  %1111 = select i1 %1109, i1 %1110, i1 false
  %1112 = icmp eq i32 %989, 0
  %1113 = select i1 %1111, i1 %1112, i1 false
  br i1 %1113, label %1114, label %1123

1114:                                             ; preds = %1108
  %1115 = sub nsw i32 0, %987
  %1116 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %1117 = load ptr, ptr %1116, align 8, !tbaa !68
  %1118 = getelementptr inbounds %struct.eqn_d, ptr %1117, i64 0, i32 3
  %1119 = load ptr, ptr %1118, align 8, !tbaa !56
  store i32 %1115, ptr %1119, align 4, !tbaa !50
  %1120 = getelementptr inbounds i32, ptr %1119, i64 1
  store i32 1, ptr %1120, align 4, !tbaa !50
  %1121 = getelementptr inbounds %struct.eqn_d, ptr %1117, i64 0, i32 2
  store i32 0, ptr %1121, align 8, !tbaa !60
  store i32 1, ptr %164, align 8, !tbaa !67
  %1122 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 3)
  br label %3403

1123:                                             ; preds = %1108
  %1124 = icmp sgt i32 %987, -134217727
  br i1 %1124, label %1125, label %1134

1125:                                             ; preds = %1123
  %1126 = sub nsw i32 0, %987
  %1127 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %1128 = load ptr, ptr %1127, align 8, !tbaa !71
  %1129 = getelementptr inbounds %struct.eqn_d, ptr %1128, i64 0, i32 3
  %1130 = load ptr, ptr %1129, align 8, !tbaa !56
  store i32 %1126, ptr %1130, align 4, !tbaa !50
  %1131 = getelementptr inbounds i32, ptr %1130, i64 1
  store i32 1, ptr %1131, align 4, !tbaa !50
  store i32 1, ptr %1128, align 8, !tbaa !59
  %1132 = getelementptr inbounds %struct.eqn_d, ptr %1128, i64 0, i32 2
  store i32 %989, ptr %1132, align 8, !tbaa !60
  %1133 = getelementptr inbounds %struct.eqn_d, ptr %1128, i64 0, i32 1
  store i32 0, ptr %1133, align 4, !tbaa !58
  store i32 1, ptr %927, align 4, !tbaa !70
  br label %1134

1134:                                             ; preds = %1125, %1123
  %1135 = icmp slt i32 %988, 134217727
  br i1 %1135, label %1136, label %1155

1136:                                             ; preds = %1134
  %1137 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %1138 = load ptr, ptr %1137, align 8, !tbaa !71
  %1139 = load i32, ptr %927, align 4, !tbaa !70
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds %struct.eqn_d, ptr %1138, i64 %1140, i32 3
  %1142 = load ptr, ptr %1141, align 8, !tbaa !56
  store i32 %988, ptr %1142, align 4, !tbaa !50
  %1143 = load i32, ptr %927, align 4, !tbaa !70
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds %struct.eqn_d, ptr %1138, i64 %1144, i32 3
  %1146 = load ptr, ptr %1145, align 8, !tbaa !56
  %1147 = getelementptr inbounds i32, ptr %1146, i64 1
  store i32 -1, ptr %1147, align 4, !tbaa !50
  %1148 = load i32, ptr %927, align 4, !tbaa !70
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds %struct.eqn_d, ptr %1138, i64 %1149
  store i32 -1, ptr %1150, align 8, !tbaa !59
  %1151 = getelementptr inbounds %struct.eqn_d, ptr %1138, i64 %1149, i32 2
  store i32 %990, ptr %1151, align 8, !tbaa !60
  %1152 = getelementptr inbounds %struct.eqn_d, ptr %1138, i64 %1149, i32 1
  store i32 0, ptr %1152, align 4, !tbaa !58
  %1153 = add nsw i32 %1148, 1
  store i32 %1153, ptr %927, align 4, !tbaa !70
  br label %1155

1154:                                             ; preds = %1105
  store i32 0, ptr %0, align 8, !tbaa !54
  br label %1155

1155:                                             ; preds = %1154, %1136, %1134
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0)
  br label %3403

1156:                                             ; preds = %1104
  %1157 = load ptr, ptr @original_problem, align 8, !tbaa !35
  %1158 = icmp ne ptr %1157, null
  %1159 = icmp eq i32 %989, 0
  %1160 = select i1 %1158, i1 %1159, i1 false
  %1161 = icmp eq i32 %990, 0
  %1162 = select i1 %1160, i1 %1161, i1 false
  %1163 = load i32, ptr @conservative, align 4
  %1164 = icmp eq i32 %1163, 0
  %1165 = select i1 %1162, i1 %1164, i1 false
  %1166 = icmp eq i32 %987, %988
  %1167 = select i1 %1165, i1 %1166, i1 false
  br i1 %1167, label %1168, label %3403

1168:                                             ; preds = %1156
  %1169 = sub nsw i32 0, %987
  %1170 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %1171 = load ptr, ptr %1170, align 8, !tbaa !68
  %1172 = getelementptr inbounds %struct.eqn_d, ptr %1171, i64 0, i32 3
  %1173 = load ptr, ptr %1172, align 8, !tbaa !56
  store i32 %1169, ptr %1173, align 4, !tbaa !50
  %1174 = getelementptr inbounds i32, ptr %1173, i64 1
  store i32 1, ptr %1174, align 4, !tbaa !50
  store i32 1, ptr %164, align 8, !tbaa !67
  tail call fastcc void @adding_equality_constraint(ptr noundef nonnull %0, i32 noundef 0)
  br label %3403

1175:                                             ; preds = %978
  %1176 = load i8, ptr %928, align 1, !tbaa !125
  %1177 = icmp eq i8 %1176, 0
  br i1 %1177, label %1178, label %1185

1178:                                             ; preds = %1175
  store i8 1, ptr %928, align 1, !tbaa !125
  br i1 %11, label %1179, label %1181

1179:                                             ; preds = %1178
  %1180 = load i32, ptr %4, align 4, !tbaa !76
  br label %1181

1181:                                             ; preds = %1178, %1179
  %1182 = phi i32 [ %1180, %1179 ], [ 0, %1178 ]
  tail call fastcc void @omega_free_eliminations(ptr noundef nonnull %0, i32 noundef %1182)
  %1183 = load i32, ptr %0, align 8, !tbaa !54
  %1184 = icmp eq i32 %1183, 1
  br i1 %1184, label %3400, label %1185

1185:                                             ; preds = %1181, %1175
  %1186 = load i32, ptr %0, align 8, !tbaa !54
  %1187 = load i32, ptr %927, align 4, !tbaa !70
  %1188 = icmp sgt i32 %1187, 0
  br i1 %1188, label %1189, label %1935

1189:                                             ; preds = %1185
  %1190 = icmp slt i32 %1186, 1
  %1191 = add i32 %1186, 1
  %1192 = zext i32 %1191 to i64
  br label %1193

1193:                                             ; preds = %1189, %1929
  %1194 = phi i32 [ 0, %1189 ], [ %1932, %1929 ]
  %1195 = phi i32 [ 0, %1189 ], [ %1930, %1929 ]
  %1196 = load ptr, ptr %929, align 8, !tbaa !71
  %1197 = sext i32 %1194 to i64
  %1198 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197, i32 1
  %1199 = load i32, ptr %1198, align 4, !tbaa !58
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1218

1201:                                             ; preds = %1193
  %1202 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197
  %1203 = load i32, ptr %1202, align 8, !tbaa !59
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1214, label %1205

1205:                                             ; preds = %1201
  %1206 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1207 = getelementptr inbounds %struct.param_info, ptr %1206, i64 64, i32 1
  %1208 = load i32, ptr %1207, align 8, !tbaa !87
  %1209 = sub nsw i32 0, %1208
  %1210 = icmp slt i32 %1203, %1209
  br i1 %1210, label %1214, label %1211

1211:                                             ; preds = %1205
  %1212 = icmp sle i32 %1203, %1208
  %1213 = zext i1 %1212 to i8
  br label %1214

1214:                                             ; preds = %1211, %1205, %1201
  %1215 = phi i8 [ 0, %1205 ], [ 0, %1201 ], [ %1213, %1211 ]
  %1216 = icmp eq i8 %1215, 0
  %1217 = select i1 %1216, i32 1, i32 %1195
  br label %1582

1218:                                             ; preds = %1193
  %1219 = load ptr, ptr @packing, align 8, !tbaa !35
  br i1 %1190, label %1236, label %1220

1220:                                             ; preds = %1218
  %1221 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197, i32 3
  %1222 = load ptr, ptr %1221, align 8, !tbaa !56
  br label %1223

1223:                                             ; preds = %1220, %1232
  %1224 = phi i64 [ 1, %1220 ], [ %1234, %1232 ]
  %1225 = phi ptr [ %1219, %1220 ], [ %1233, %1232 ]
  %1226 = getelementptr inbounds i32, ptr %1222, i64 %1224
  %1227 = load i32, ptr %1226, align 4, !tbaa !50
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1232, label %1229

1229:                                             ; preds = %1223
  %1230 = getelementptr inbounds i32, ptr %1225, i64 1
  %1231 = trunc i64 %1224 to i32
  store i32 %1231, ptr %1225, align 4, !tbaa !50
  br label %1232

1232:                                             ; preds = %1229, %1223
  %1233 = phi ptr [ %1230, %1229 ], [ %1225, %1223 ]
  %1234 = add nuw nsw i64 %1224, 1
  %1235 = icmp eq i64 %1234, %1192
  br i1 %1235, label %1236, label %1223, !llvm.loop !155

1236:                                             ; preds = %1232, %1218
  %1237 = phi ptr [ %1219, %1218 ], [ %1233, %1232 ]
  %1238 = ptrtoint ptr %1237 to i64
  %1239 = ptrtoint ptr %1219 to i64
  %1240 = sub i64 %1238, %1239
  %1241 = lshr exact i64 %1240, 2
  %1242 = trunc i64 %1241 to i32
  %1243 = add i32 %1242, -1
  %1244 = icmp eq i32 %1242, 0
  br i1 %1244, label %1245, label %1263

1245:                                             ; preds = %1236
  %1246 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197
  %1247 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197, i32 3
  %1248 = load ptr, ptr %1247, align 8, !tbaa !56
  %1249 = load i32, ptr %1248, align 4, !tbaa !50
  %1250 = icmp slt i32 %1249, 0
  br i1 %1250, label %1251, label %1261

1251:                                             ; preds = %1245
  %1252 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %1578, label %1254

1254:                                             ; preds = %1251
  %1255 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1256 = and i32 %1255, 8
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1578, label %1258

1258:                                             ; preds = %1254
  tail call void @omega_print_eqn(ptr noundef nonnull %1252, ptr noundef nonnull %0, ptr noundef %1246, i8 noundef zeroext 1, i32 noundef 0)
  %1259 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1260 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr %1259)
  br label %1578

1261:                                             ; preds = %1245
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %1194, i32 noundef %1186)
  %1262 = add nsw i32 %1194, -1
  br label %1578

1263:                                             ; preds = %1236
  %1264 = icmp eq i32 %1243, 0
  br i1 %1264, label %1265, label %1294

1265:                                             ; preds = %1263
  %1266 = load i32, ptr %1219, align 4, !tbaa !50
  %1267 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197, i32 3
  %1268 = load ptr, ptr %1267, align 8, !tbaa !56
  %1269 = sext i32 %1266 to i64
  %1270 = getelementptr inbounds i32, ptr %1268, i64 %1269
  %1271 = load i32, ptr %1270, align 4, !tbaa !50
  %1272 = icmp sgt i32 %1271, 0
  br i1 %1272, label %1273, label %1274

1273:                                             ; preds = %1265
  store i32 1, ptr %1270, align 4, !tbaa !50
  br label %1277

1274:                                             ; preds = %1265
  %1275 = sub nsw i32 0, %1271
  store i32 -1, ptr %1270, align 4, !tbaa !50
  %1276 = sub nsw i32 0, %1266
  br label %1277

1277:                                             ; preds = %1274, %1273
  %1278 = phi i32 [ %1276, %1274 ], [ %1266, %1273 ]
  %1279 = phi i32 [ %1275, %1274 ], [ %1271, %1273 ]
  %1280 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197
  store i32 %1278, ptr %1280, align 8, !tbaa !59
  %1281 = icmp sgt i32 %1279, 1
  br i1 %1281, label %1282, label %1574

1282:                                             ; preds = %1277
  %1283 = load i32, ptr %1268, align 4, !tbaa !50
  %1284 = icmp sgt i32 %1283, 0
  br i1 %1284, label %1285, label %1287

1285:                                             ; preds = %1282
  %1286 = udiv i32 %1283, %1279
  br label %1292

1287:                                             ; preds = %1282
  %1288 = xor i32 %1283, -1
  %1289 = add i32 %1279, %1288
  %1290 = sdiv i32 %1289, %1279
  %1291 = sub nsw i32 0, %1290
  br label %1292

1292:                                             ; preds = %1287, %1285
  %1293 = phi i32 [ %1286, %1285 ], [ %1291, %1287 ]
  store i32 %1293, ptr %1268, align 4, !tbaa !50
  br label %1574

1294:                                             ; preds = %1263
  %1295 = add i32 %1242, -2
  %1296 = sext i32 %1243 to i64
  %1297 = getelementptr inbounds i32, ptr %1219, i64 %1296
  %1298 = load i32, ptr %1297, align 4, !tbaa !50
  %1299 = getelementptr inbounds %struct.eqn_d, ptr %1196, i64 %1197, i32 3
  %1300 = load ptr, ptr %1299, align 8, !tbaa !56
  %1301 = sext i32 %1298 to i64
  %1302 = getelementptr inbounds i32, ptr %1300, i64 %1301
  %1303 = load i32, ptr %1302, align 4, !tbaa !50
  %1304 = add nsw i32 %1298, 3
  %1305 = mul nsw i32 %1303, %1304
  %1306 = tail call i32 @llvm.abs.i32(i32 %1303, i1 true)
  %1307 = icmp sgt i32 %1295, -1
  br i1 %1307, label %1308, label %1339

1308:                                             ; preds = %1294, %1336
  %1309 = phi i32 [ %1335, %1336 ], [ %1306, %1294 ]
  %1310 = phi i32 [ %1321, %1336 ], [ %1305, %1294 ]
  %1311 = phi i32 [ %1337, %1336 ], [ %1295, %1294 ]
  %1312 = zext nneg i32 %1311 to i64
  %1313 = getelementptr inbounds i32, ptr %1219, i64 %1312
  %1314 = load i32, ptr %1313, align 4, !tbaa !50
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds i32, ptr %1300, i64 %1315
  %1317 = load i32, ptr %1316, align 4, !tbaa !50
  %1318 = mul nsw i32 %1310, 31
  %1319 = add nsw i32 %1314, 3
  %1320 = mul nsw i32 %1318, %1319
  %1321 = add nsw i32 %1320, %1317
  %1322 = tail call i32 @llvm.abs.i32(i32 %1317, i1 true)
  %1323 = icmp eq i32 %1322, 1
  br i1 %1323, label %1326, label %1324

1324:                                             ; preds = %1308
  %1325 = icmp eq i32 %1317, 0
  br i1 %1325, label %1333, label %1328

1326:                                             ; preds = %1308
  %1327 = add nsw i32 %1311, -1
  br label %1333

1328:                                             ; preds = %1324, %1328
  %1329 = phi i32 [ %1330, %1328 ], [ %1309, %1324 ]
  %1330 = phi i32 [ %1331, %1328 ], [ %1322, %1324 ]
  %1331 = urem i32 %1329, %1330
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1333, label %1328, !llvm.loop !139

1333:                                             ; preds = %1328, %1324, %1326
  %1334 = phi i32 [ %1327, %1326 ], [ %1311, %1324 ], [ %1311, %1328 ]
  %1335 = phi i32 [ 1, %1326 ], [ %1309, %1324 ], [ %1330, %1328 ]
  br i1 %1323, label %1339, label %1336

1336:                                             ; preds = %1333
  %1337 = add nsw i32 %1334, -1
  %1338 = icmp sgt i32 %1334, 0
  br i1 %1338, label %1308, label %1339, !llvm.loop !156

1339:                                             ; preds = %1336, %1333, %1294
  %1340 = phi i32 [ %1295, %1294 ], [ %1337, %1336 ], [ %1334, %1333 ]
  %1341 = phi i32 [ %1305, %1294 ], [ %1321, %1333 ], [ %1321, %1336 ]
  %1342 = phi i32 [ %1306, %1294 ], [ %1335, %1333 ], [ %1335, %1336 ]
  %1343 = icmp sgt i32 %1340, -1
  br i1 %1343, label %1344, label %1360

1344:                                             ; preds = %1339
  %1345 = zext nneg i32 %1340 to i64
  br label %1346

1346:                                             ; preds = %1344, %1346
  %1347 = phi i64 [ %1345, %1344 ], [ %1358, %1346 ]
  %1348 = phi i32 [ %1341, %1344 ], [ %1357, %1346 ]
  %1349 = getelementptr inbounds i32, ptr %1219, i64 %1347
  %1350 = load i32, ptr %1349, align 4, !tbaa !50
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds i32, ptr %1300, i64 %1351
  %1353 = load i32, ptr %1352, align 4, !tbaa !50
  %1354 = mul nsw i32 %1348, 31
  %1355 = add nsw i32 %1350, 3
  %1356 = mul nsw i32 %1354, %1355
  %1357 = add nsw i32 %1356, %1353
  %1358 = add nsw i64 %1347, -1
  %1359 = icmp sgt i64 %1347, 0
  br i1 %1359, label %1346, label %1360, !llvm.loop !157

1360:                                             ; preds = %1346, %1339
  %1361 = phi i32 [ %1341, %1339 ], [ %1357, %1346 ]
  %1362 = icmp sgt i32 %1342, 1
  br i1 %1362, label %1363, label %1400

1363:                                             ; preds = %1360
  %1364 = load i32, ptr %1300, align 4, !tbaa !50
  %1365 = icmp sgt i32 %1364, 0
  br i1 %1365, label %1366, label %1368

1366:                                             ; preds = %1363
  %1367 = udiv i32 %1364, %1342
  br label %1373

1368:                                             ; preds = %1363
  %1369 = xor i32 %1364, -1
  %1370 = add i32 %1342, %1369
  %1371 = sdiv i32 %1370, %1342
  %1372 = sub nsw i32 0, %1371
  br label %1373

1373:                                             ; preds = %1368, %1366
  %1374 = phi i32 [ %1367, %1366 ], [ %1372, %1368 ]
  store i32 %1374, ptr %1300, align 4, !tbaa !50
  %1375 = load i32, ptr %1297, align 4, !tbaa !50
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds i32, ptr %1300, i64 %1376
  %1378 = load i32, ptr %1377, align 4, !tbaa !50
  %1379 = sdiv i32 %1378, %1342
  store i32 %1379, ptr %1377, align 4, !tbaa !50
  %1380 = add nsw i32 %1375, 3
  %1381 = mul nsw i32 %1379, %1380
  %1382 = icmp sgt i32 %1295, -1
  br i1 %1382, label %1383, label %1400

1383:                                             ; preds = %1373
  %1384 = zext nneg i32 %1295 to i64
  br label %1385

1385:                                             ; preds = %1383, %1385
  %1386 = phi i64 [ %1384, %1383 ], [ %1398, %1385 ]
  %1387 = phi i32 [ %1381, %1383 ], [ %1397, %1385 ]
  %1388 = getelementptr inbounds i32, ptr %1219, i64 %1386
  %1389 = load i32, ptr %1388, align 4, !tbaa !50
  %1390 = sext i32 %1389 to i64
  %1391 = getelementptr inbounds i32, ptr %1300, i64 %1390
  %1392 = load i32, ptr %1391, align 4, !tbaa !50
  %1393 = sdiv i32 %1392, %1342
  store i32 %1393, ptr %1391, align 4, !tbaa !50
  %1394 = mul nsw i32 %1387, 31
  %1395 = add nsw i32 %1389, 3
  %1396 = mul nsw i32 %1394, %1395
  %1397 = add nsw i32 %1396, %1393
  %1398 = add nsw i64 %1386, -1
  %1399 = icmp sgt i64 %1386, 0
  br i1 %1399, label %1385, label %1400, !llvm.loop !158

1400:                                             ; preds = %1385, %1373, %1360
  %1401 = phi i32 [ %1361, %1360 ], [ %1381, %1373 ], [ %1397, %1385 ]
  %1402 = tail call i32 @llvm.abs.i32(i32 %1401, i1 true)
  %1403 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1404 = icmp eq ptr %1403, null
  br i1 %1404, label %1416, label %1405

1405:                                             ; preds = %1400
  %1406 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1407 = and i32 %1406, 8
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1416, label %1409

1409:                                             ; preds = %1405
  %1410 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1403, ptr noundef nonnull @.str.184, i32 noundef %1401)
  %1411 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1412 = load ptr, ptr %929, align 8, !tbaa !71
  %1413 = getelementptr inbounds %struct.eqn_d, ptr %1412, i64 %1197
  tail call void @omega_print_eqn(ptr noundef %1411, ptr noundef nonnull %0, ptr noundef %1413, i8 noundef zeroext 1, i32 noundef 0)
  %1414 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1415 = tail call i32 @fputc(i32 10, ptr %1414)
  br label %1416

1416:                                             ; preds = %1409, %1405, %1400
  %1417 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1418 = getelementptr inbounds %struct.param_info, ptr %1417, i64 68, i32 1
  %1419 = load i32, ptr %1418, align 8, !tbaa !87
  %1420 = srem i32 %1402, %1419
  %1421 = icmp sgt i32 %1401, -1
  %1422 = icmp sgt i32 %1243, -1
  %1423 = icmp sgt i32 %1243, -1
  %1424 = icmp sgt i32 %1401, -1
  %1425 = icmp sgt i32 %1243, -1
  %1426 = icmp sgt i32 %1243, -1
  %1427 = zext i32 %1243 to i64
  br label %1428

1428:                                             ; preds = %1571, %1416
  %1429 = phi i32 [ %1420, %1416 ], [ %1573, %1571 ]
  %1430 = load ptr, ptr @hash_master, align 8, !tbaa !35
  %1431 = sext i32 %1429 to i64
  %1432 = getelementptr inbounds %struct.eqn_d, ptr %1430, i64 %1431
  %1433 = getelementptr inbounds %struct.eqn_d, ptr %1430, i64 %1431, i32 1
  %1434 = load i32, ptr %1433, align 4, !tbaa !58
  %1435 = icmp eq i32 %1434, %1402
  br i1 %1435, label %1436, label %1492

1436:                                             ; preds = %1428
  %1437 = getelementptr inbounds %struct.eqn_d, ptr %1430, i64 %1431, i32 3
  %1438 = load ptr, ptr %1437, align 8, !tbaa !56
  %1439 = load i32, ptr %1438, align 4, !tbaa !50
  %1440 = icmp eq i32 %1439, %1243
  br i1 %1440, label %1441, label %1565

1441:                                             ; preds = %1436
  br i1 %1424, label %1448, label %1442

1442:                                             ; preds = %1441
  br i1 %1425, label %1443, label %1483

1443:                                             ; preds = %1442
  %1444 = load ptr, ptr @packing, align 8, !tbaa !35
  %1445 = load ptr, ptr %929, align 8, !tbaa !71
  %1446 = getelementptr inbounds %struct.eqn_d, ptr %1445, i64 %1197, i32 3
  %1447 = load ptr, ptr %1446, align 8, !tbaa !56
  br label %1471

1448:                                             ; preds = %1441
  br i1 %1426, label %1449, label %1483

1449:                                             ; preds = %1448
  %1450 = load ptr, ptr @packing, align 8, !tbaa !35
  %1451 = load ptr, ptr %929, align 8, !tbaa !71
  %1452 = getelementptr inbounds %struct.eqn_d, ptr %1451, i64 %1197, i32 3
  %1453 = load ptr, ptr %1452, align 8, !tbaa !56
  br label %1457

1454:                                             ; preds = %1457
  %1455 = add nsw i32 %1458, -1
  %1456 = icmp sgt i32 %1458, 0
  br i1 %1456, label %1457, label %1483, !llvm.loop !159

1457:                                             ; preds = %1449, %1454
  %1458 = phi i32 [ %1243, %1449 ], [ %1455, %1454 ]
  %1459 = zext nneg i32 %1458 to i64
  %1460 = getelementptr inbounds i32, ptr %1450, i64 %1459
  %1461 = load i32, ptr %1460, align 4, !tbaa !50
  %1462 = sext i32 %1461 to i64
  %1463 = getelementptr inbounds i32, ptr %1453, i64 %1462
  %1464 = load i32, ptr %1463, align 4, !tbaa !50
  %1465 = getelementptr inbounds i32, ptr %1438, i64 %1462
  %1466 = load i32, ptr %1465, align 4, !tbaa !50
  %1467 = icmp eq i32 %1464, %1466
  br i1 %1467, label %1454, label %1565

1468:                                             ; preds = %1471
  %1469 = add nsw i32 %1472, -1
  %1470 = icmp sgt i32 %1472, 0
  br i1 %1470, label %1471, label %1483, !llvm.loop !160

1471:                                             ; preds = %1443, %1468
  %1472 = phi i32 [ %1243, %1443 ], [ %1469, %1468 ]
  %1473 = zext nneg i32 %1472 to i64
  %1474 = getelementptr inbounds i32, ptr %1444, i64 %1473
  %1475 = load i32, ptr %1474, align 4, !tbaa !50
  %1476 = sext i32 %1475 to i64
  %1477 = getelementptr inbounds i32, ptr %1447, i64 %1476
  %1478 = load i32, ptr %1477, align 4, !tbaa !50
  %1479 = getelementptr inbounds i32, ptr %1438, i64 %1476
  %1480 = load i32, ptr %1479, align 4, !tbaa !50
  %1481 = sub nsw i32 0, %1480
  %1482 = icmp eq i32 %1478, %1481
  br i1 %1482, label %1468, label %1565

1483:                                             ; preds = %1468, %1454, %1442, %1448
  %1484 = load i32, ptr %1432, align 8, !tbaa !59
  br i1 %1424, label %1485, label %1488

1485:                                             ; preds = %1483
  %1486 = load ptr, ptr %929, align 8, !tbaa !71
  %1487 = getelementptr inbounds %struct.eqn_d, ptr %1486, i64 %1197
  store i32 %1484, ptr %1487, align 8, !tbaa !59
  br label %1571

1488:                                             ; preds = %1483
  %1489 = sub nsw i32 0, %1484
  %1490 = load ptr, ptr %929, align 8, !tbaa !71
  %1491 = getelementptr inbounds %struct.eqn_d, ptr %1490, i64 %1197
  store i32 %1489, ptr %1491, align 8, !tbaa !59
  br label %1571

1492:                                             ; preds = %1428
  %1493 = icmp slt i32 %1434, 0
  br i1 %1493, label %1494, label %1565

1494:                                             ; preds = %1492
  %1495 = load i32, ptr %0, align 8, !tbaa !54
  store i32 0, ptr %1432, align 8, !tbaa !59
  store i32 0, ptr %1433, align 4, !tbaa !58
  %1496 = getelementptr inbounds %struct.eqn_d, ptr %1430, i64 %1431, i32 2
  store i32 0, ptr %1496, align 8, !tbaa !60
  %1497 = getelementptr inbounds %struct.eqn_d, ptr %1430, i64 %1431, i32 3
  %1498 = load ptr, ptr %1497, align 8, !tbaa !56
  %1499 = add nsw i32 %1495, 1
  %1500 = sext i32 %1499 to i64
  %1501 = shl nsw i64 %1500, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1498, i8 0, i64 %1501, i1 false)
  br i1 %1421, label %1509, label %1502

1502:                                             ; preds = %1494
  br i1 %1422, label %1503, label %1537

1503:                                             ; preds = %1502
  %1504 = load ptr, ptr @packing, align 8, !tbaa !35
  %1505 = load ptr, ptr %929, align 8, !tbaa !71
  %1506 = getelementptr inbounds %struct.eqn_d, ptr %1505, i64 %1197, i32 3
  %1507 = load ptr, ptr %1506, align 8, !tbaa !56
  %1508 = load ptr, ptr %1497, align 8, !tbaa !56
  br label %1526

1509:                                             ; preds = %1494
  br i1 %1423, label %1510, label %1537

1510:                                             ; preds = %1509
  %1511 = load ptr, ptr @packing, align 8, !tbaa !35
  %1512 = load ptr, ptr %929, align 8, !tbaa !71
  %1513 = getelementptr inbounds %struct.eqn_d, ptr %1512, i64 %1197, i32 3
  %1514 = load ptr, ptr %1513, align 8, !tbaa !56
  %1515 = load ptr, ptr %1497, align 8, !tbaa !56
  br label %1516

1516:                                             ; preds = %1510, %1516
  %1517 = phi i64 [ %1427, %1510 ], [ %1524, %1516 ]
  %1518 = getelementptr inbounds i32, ptr %1511, i64 %1517
  %1519 = load i32, ptr %1518, align 4, !tbaa !50
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds i32, ptr %1514, i64 %1520
  %1522 = load i32, ptr %1521, align 4, !tbaa !50
  %1523 = getelementptr inbounds i32, ptr %1515, i64 %1520
  store i32 %1522, ptr %1523, align 4, !tbaa !50
  %1524 = add nsw i64 %1517, -1
  %1525 = icmp sgt i64 %1517, 0
  br i1 %1525, label %1516, label %1537, !llvm.loop !161

1526:                                             ; preds = %1503, %1526
  %1527 = phi i64 [ %1427, %1503 ], [ %1535, %1526 ]
  %1528 = getelementptr inbounds i32, ptr %1504, i64 %1527
  %1529 = load i32, ptr %1528, align 4, !tbaa !50
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds i32, ptr %1507, i64 %1530
  %1532 = load i32, ptr %1531, align 4, !tbaa !50
  %1533 = sub nsw i32 0, %1532
  %1534 = getelementptr inbounds i32, ptr %1508, i64 %1530
  store i32 %1533, ptr %1534, align 4, !tbaa !50
  %1535 = add nsw i64 %1527, -1
  %1536 = icmp sgt i64 %1527, 0
  br i1 %1536, label %1526, label %1537, !llvm.loop !162

1537:                                             ; preds = %1526, %1516, %1502, %1509
  %1538 = load ptr, ptr %1497, align 8, !tbaa !56
  store i32 %1243, ptr %1538, align 4, !tbaa !50
  store i32 %1402, ptr %1433, align 4, !tbaa !58
  %1539 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1540 = icmp eq ptr %1539, null
  br i1 %1540, label %1548, label %1541

1541:                                             ; preds = %1537
  %1542 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1543 = and i32 %1542, 8
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1548, label %1545

1545:                                             ; preds = %1541
  %1546 = load i32, ptr @next_key, align 4, !tbaa !50
  %1547 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1539, ptr noundef nonnull @.str.185, i32 noundef %1546)
  br label %1548

1548:                                             ; preds = %1545, %1541, %1537
  %1549 = load i32, ptr @next_key, align 4, !tbaa !50
  %1550 = add nsw i32 %1549, 1
  store i32 %1550, ptr @next_key, align 4, !tbaa !50
  store i32 %1549, ptr %1432, align 8, !tbaa !59
  %1551 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1552 = getelementptr inbounds %struct.param_info, ptr %1551, i64 69, i32 1
  %1553 = load i32, ptr %1552, align 8, !tbaa !87
  %1554 = icmp sgt i32 %1549, %1553
  br i1 %1554, label %1555, label %1556

1555:                                             ; preds = %1548
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1604, ptr noundef nonnull @.str.21) #22
  br label %1556

1556:                                             ; preds = %1555, %1548
  %1557 = load i32, ptr %1432, align 8, !tbaa !59
  br i1 %1421, label %1558, label %1561

1558:                                             ; preds = %1556
  %1559 = load ptr, ptr %929, align 8, !tbaa !71
  %1560 = getelementptr inbounds %struct.eqn_d, ptr %1559, i64 %1197
  store i32 %1557, ptr %1560, align 8, !tbaa !59
  br label %1571

1561:                                             ; preds = %1556
  %1562 = sub nsw i32 0, %1557
  %1563 = load ptr, ptr %929, align 8, !tbaa !71
  %1564 = getelementptr inbounds %struct.eqn_d, ptr %1563, i64 %1197
  store i32 %1562, ptr %1564, align 8, !tbaa !59
  br label %1571

1565:                                             ; preds = %1471, %1457, %1492, %1436
  %1566 = add nsw i32 %1429, 1
  %1567 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1568 = getelementptr inbounds %struct.param_info, ptr %1567, i64 68, i32 1
  %1569 = load i32, ptr %1568, align 8, !tbaa !87
  %1570 = srem i32 %1566, %1569
  br label %1571

1571:                                             ; preds = %1565, %1561, %1558, %1488, %1485
  %1572 = phi i1 [ true, %1565 ], [ false, %1488 ], [ false, %1485 ], [ false, %1561 ], [ false, %1558 ]
  %1573 = phi i32 [ %1570, %1565 ], [ %1429, %1488 ], [ %1429, %1485 ], [ %1429, %1561 ], [ %1429, %1558 ]
  br i1 %1572, label %1428, label %1574

1574:                                             ; preds = %1571, %1292, %1277
  %1575 = phi i32 [ %1195, %1292 ], [ %1195, %1277 ], [ 1, %1571 ]
  %1576 = load ptr, ptr %929, align 8, !tbaa !71
  %1577 = getelementptr inbounds %struct.eqn_d, ptr %1576, i64 %1197, i32 1
  store i32 0, ptr %1577, align 4, !tbaa !58
  br label %1578

1578:                                             ; preds = %1574, %1261, %1258, %1254, %1251
  %1579 = phi i32 [ 4, %1261 ], [ 0, %1574 ], [ 1, %1258 ], [ 1, %1254 ], [ 1, %1251 ]
  %1580 = phi i32 [ %1195, %1261 ], [ %1575, %1574 ], [ %1195, %1258 ], [ %1195, %1254 ], [ %1195, %1251 ]
  %1581 = phi i32 [ %1262, %1261 ], [ %1194, %1574 ], [ %1194, %1258 ], [ %1194, %1254 ], [ %1194, %1251 ]
  switch i32 %1579, label %1939 [
    i32 0, label %1582
    i32 4, label %1929
  ]

1582:                                             ; preds = %1578, %1214
  %1583 = phi i32 [ %1580, %1578 ], [ %1217, %1214 ]
  %1584 = phi i32 [ %1581, %1578 ], [ %1194, %1214 ]
  %1585 = load ptr, ptr %929, align 8, !tbaa !71
  %1586 = sext i32 %1584 to i64
  %1587 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1586
  %1588 = load i32, ptr %1587, align 8, !tbaa !59
  %1589 = icmp sgt i32 %1584, 0
  br i1 %1589, label %1590, label %1910

1590:                                             ; preds = %1582
  %1591 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1586, i32 3
  %1592 = load ptr, ptr %1591, align 8, !tbaa !56
  %1593 = load i32, ptr %1592, align 4, !tbaa !50
  %1594 = load ptr, ptr @fast_lookup, align 8, !tbaa !35
  %1595 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1596 = getelementptr inbounds %struct.param_info, ptr %1595, i64 69, i32 1
  %1597 = load i32, ptr %1596, align 8, !tbaa !87
  %1598 = sub nsw i32 %1597, %1588
  %1599 = sext i32 %1598 to i64
  %1600 = getelementptr inbounds i32, ptr %1594, i64 %1599
  %1601 = load i32, ptr %1600, align 4, !tbaa !50
  %1602 = icmp slt i32 %1601, %1584
  br i1 %1602, label %1603, label %1674

1603:                                             ; preds = %1590
  %1604 = sext i32 %1601 to i64
  %1605 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1604
  %1606 = load i32, ptr %1605, align 8, !tbaa !59
  %1607 = sub nsw i32 0, %1588
  %1608 = icmp eq i32 %1606, %1607
  br i1 %1608, label %1609, label %1674

1609:                                             ; preds = %1603
  %1610 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1604, i32 2
  %1611 = load i32, ptr %1610, align 8, !tbaa !60
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1613, label %1674

1613:                                             ; preds = %1609
  %1614 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1604, i32 3
  %1615 = load ptr, ptr %1614, align 8, !tbaa !56
  %1616 = load i32, ptr %1615, align 4, !tbaa !50
  %1617 = sub nsw i32 0, %1593
  %1618 = icmp slt i32 %1616, %1617
  br i1 %1618, label %1619, label %1634

1619:                                             ; preds = %1613
  %1620 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1621 = icmp eq ptr %1620, null
  br i1 %1621, label %1906, label %1622

1622:                                             ; preds = %1619
  %1623 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1624 = and i32 %1623, 8
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1906, label %1626

1626:                                             ; preds = %1622
  tail call void @omega_print_eqn(ptr noundef nonnull %1620, ptr noundef nonnull %0, ptr noundef nonnull %1587, i8 noundef zeroext 1, i32 noundef 0)
  %1627 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1628 = tail call i32 @fputc(i32 10, ptr %1627)
  %1629 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1630 = load ptr, ptr %929, align 8, !tbaa !71
  %1631 = getelementptr inbounds %struct.eqn_d, ptr %1630, i64 %1604
  tail call void @omega_print_eqn(ptr noundef %1629, ptr noundef nonnull %0, ptr noundef %1631, i8 noundef zeroext 1, i32 noundef 0)
  %1632 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1633 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr %1632)
  br label %1906

1634:                                             ; preds = %1613
  %1635 = icmp eq i32 %1616, %1617
  br i1 %1635, label %1636, label %1674

1636:                                             ; preds = %1634
  %1637 = load i1, ptr @create_color, align 1
  br i1 %1637, label %1642, label %1638

1638:                                             ; preds = %1636
  %1639 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1586, i32 2
  %1640 = load i32, ptr %1639, align 8, !tbaa !60
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1642, label %1674

1642:                                             ; preds = %1638, %1636
  %1643 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %1644 = load ptr, ptr %1643, align 8, !tbaa !68
  %1645 = load i32, ptr %164, align 8, !tbaa !67
  %1646 = sext i32 %1645 to i64
  %1647 = getelementptr inbounds %struct.eqn_d, ptr %1644, i64 %1646
  %1648 = load i32, ptr %0, align 8, !tbaa !54
  store i32 %1588, ptr %1647, align 8, !tbaa !59
  %1649 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1586, i32 1
  %1650 = load i32, ptr %1649, align 4, !tbaa !58
  %1651 = getelementptr inbounds %struct.eqn_d, ptr %1644, i64 %1646, i32 1
  store i32 %1650, ptr %1651, align 4, !tbaa !58
  %1652 = getelementptr inbounds %struct.eqn_d, ptr %1585, i64 %1586, i32 2
  %1653 = load i32, ptr %1652, align 8, !tbaa !60
  %1654 = getelementptr inbounds %struct.eqn_d, ptr %1644, i64 %1646, i32 2
  store i32 %1653, ptr %1654, align 8, !tbaa !60
  %1655 = getelementptr inbounds %struct.eqn_d, ptr %1644, i64 %1646, i32 3
  %1656 = load ptr, ptr %1655, align 8, !tbaa !56
  %1657 = add nsw i32 %1648, 1
  %1658 = sext i32 %1657 to i64
  %1659 = shl nsw i64 %1658, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1656, ptr nonnull align 4 %1592, i64 %1659, i1 false)
  %1660 = load ptr, ptr %929, align 8, !tbaa !71
  %1661 = getelementptr inbounds %struct.eqn_d, ptr %1660, i64 %1586, i32 2
  %1662 = load i32, ptr %1661, align 8, !tbaa !60
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1664, label %1666

1664:                                             ; preds = %1642
  %1665 = load i32, ptr %164, align 8, !tbaa !67
  tail call fastcc void @adding_equality_constraint(ptr noundef nonnull %0, i32 noundef %1665)
  br label %1666

1666:                                             ; preds = %1664, %1642
  %1667 = load i32, ptr %164, align 8, !tbaa !67
  %1668 = add nsw i32 %1667, 1
  store i32 %1668, ptr %164, align 8, !tbaa !67
  %1669 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1670 = getelementptr inbounds %struct.param_info, ptr %1669, i64 66, i32 1
  %1671 = load i32, ptr %1670, align 8, !tbaa !87
  %1672 = icmp slt i32 %1667, %1671
  br i1 %1672, label %1674, label %1673

1673:                                             ; preds = %1666
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1654, ptr noundef nonnull @.str.21) #22
  br label %1674

1674:                                             ; preds = %1673, %1666, %1638, %1634, %1609, %1603, %1590
  %1675 = load ptr, ptr @fast_lookup_red, align 8, !tbaa !35
  %1676 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1677 = getelementptr inbounds %struct.param_info, ptr %1676, i64 69, i32 1
  %1678 = load i32, ptr %1677, align 8, !tbaa !87
  %1679 = sub nsw i32 %1678, %1588
  %1680 = sext i32 %1679 to i64
  %1681 = getelementptr inbounds i32, ptr %1675, i64 %1680
  %1682 = load i32, ptr %1681, align 4, !tbaa !50
  %1683 = icmp slt i32 %1682, %1584
  br i1 %1683, label %1684, label %1753

1684:                                             ; preds = %1674
  %1685 = load ptr, ptr %929, align 8, !tbaa !71
  %1686 = sext i32 %1682 to i64
  %1687 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1686
  %1688 = load i32, ptr %1687, align 8, !tbaa !59
  %1689 = sub nsw i32 0, %1588
  %1690 = icmp eq i32 %1688, %1689
  br i1 %1690, label %1691, label %1753

1691:                                             ; preds = %1684
  %1692 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1686, i32 2
  %1693 = load i32, ptr %1692, align 8, !tbaa !60
  %1694 = icmp eq i32 %1693, 1
  br i1 %1694, label %1695, label %1753

1695:                                             ; preds = %1691
  %1696 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1686, i32 3
  %1697 = load ptr, ptr %1696, align 8, !tbaa !56
  %1698 = load i32, ptr %1697, align 4, !tbaa !50
  %1699 = sub nsw i32 0, %1593
  %1700 = icmp slt i32 %1698, %1699
  br i1 %1700, label %1701, label %1717

1701:                                             ; preds = %1695
  %1702 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1703 = icmp eq ptr %1702, null
  br i1 %1703, label %1906, label %1704

1704:                                             ; preds = %1701
  %1705 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1706 = and i32 %1705, 8
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1906, label %1708

1708:                                             ; preds = %1704
  %1709 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1586
  tail call void @omega_print_eqn(ptr noundef nonnull %1702, ptr noundef nonnull %0, ptr noundef %1709, i8 noundef zeroext 1, i32 noundef 0)
  %1710 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1711 = tail call i32 @fputc(i32 10, ptr %1710)
  %1712 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1713 = load ptr, ptr %929, align 8, !tbaa !71
  %1714 = getelementptr inbounds %struct.eqn_d, ptr %1713, i64 %1686
  tail call void @omega_print_eqn(ptr noundef %1712, ptr noundef nonnull %0, ptr noundef %1714, i8 noundef zeroext 1, i32 noundef 0)
  %1715 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1716 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 29, i64 1, ptr %1715)
  br label %1906

1717:                                             ; preds = %1695
  %1718 = icmp eq i32 %1698, %1699
  %1719 = load i1, ptr @create_color, align 1
  %1720 = select i1 %1718, i1 %1719, i1 false
  br i1 %1720, label %1721, label %1753

1721:                                             ; preds = %1717
  %1722 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %1723 = load ptr, ptr %1722, align 8, !tbaa !68
  %1724 = load i32, ptr %164, align 8, !tbaa !67
  %1725 = sext i32 %1724 to i64
  %1726 = getelementptr inbounds %struct.eqn_d, ptr %1723, i64 %1725
  %1727 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1586
  %1728 = load i32, ptr %0, align 8, !tbaa !54
  %1729 = load i32, ptr %1727, align 8, !tbaa !59
  store i32 %1729, ptr %1726, align 8, !tbaa !59
  %1730 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1586, i32 1
  %1731 = load i32, ptr %1730, align 4, !tbaa !58
  %1732 = getelementptr inbounds %struct.eqn_d, ptr %1723, i64 %1725, i32 1
  store i32 %1731, ptr %1732, align 4, !tbaa !58
  %1733 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1586, i32 2
  %1734 = load i32, ptr %1733, align 8, !tbaa !60
  %1735 = getelementptr inbounds %struct.eqn_d, ptr %1723, i64 %1725, i32 2
  store i32 %1734, ptr %1735, align 8, !tbaa !60
  %1736 = getelementptr inbounds %struct.eqn_d, ptr %1723, i64 %1725, i32 3
  %1737 = load ptr, ptr %1736, align 8, !tbaa !56
  %1738 = getelementptr inbounds %struct.eqn_d, ptr %1685, i64 %1586, i32 3
  %1739 = load ptr, ptr %1738, align 8, !tbaa !56
  %1740 = add nsw i32 %1728, 1
  %1741 = sext i32 %1740 to i64
  %1742 = shl nsw i64 %1741, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1737, ptr align 4 %1739, i64 %1742, i1 false)
  %1743 = load ptr, ptr %1722, align 8, !tbaa !68
  %1744 = load i32, ptr %164, align 8, !tbaa !67
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds %struct.eqn_d, ptr %1743, i64 %1745, i32 2
  store i32 1, ptr %1746, align 8, !tbaa !60
  %1747 = add nsw i32 %1744, 1
  store i32 %1747, ptr %164, align 8, !tbaa !67
  %1748 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1749 = getelementptr inbounds %struct.param_info, ptr %1748, i64 66, i32 1
  %1750 = load i32, ptr %1749, align 8, !tbaa !87
  %1751 = icmp slt i32 %1744, %1750
  br i1 %1751, label %1753, label %1752

1752:                                             ; preds = %1721
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1682, ptr noundef nonnull @.str.21) #22
  br label %1753

1753:                                             ; preds = %1752, %1721, %1717, %1691, %1684, %1674
  %1754 = load ptr, ptr @fast_lookup, align 8, !tbaa !35
  %1755 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1756 = getelementptr inbounds %struct.param_info, ptr %1755, i64 69, i32 1
  %1757 = load i32, ptr %1756, align 8, !tbaa !87
  %1758 = add nsw i32 %1757, %1588
  %1759 = sext i32 %1758 to i64
  %1760 = getelementptr inbounds i32, ptr %1754, i64 %1759
  %1761 = load i32, ptr %1760, align 4, !tbaa !50
  %1762 = icmp slt i32 %1761, %1584
  br i1 %1762, label %1763, label %1831

1763:                                             ; preds = %1753
  %1764 = load ptr, ptr %929, align 8, !tbaa !71
  %1765 = sext i32 %1761 to i64
  %1766 = getelementptr inbounds %struct.eqn_d, ptr %1764, i64 %1765
  %1767 = load i32, ptr %1766, align 8, !tbaa !59
  %1768 = icmp eq i32 %1767, %1588
  br i1 %1768, label %1769, label %1831

1769:                                             ; preds = %1763
  %1770 = getelementptr inbounds %struct.eqn_d, ptr %1764, i64 %1765, i32 2
  %1771 = load i32, ptr %1770, align 8, !tbaa !60
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1773, label %1831

1773:                                             ; preds = %1769
  %1774 = getelementptr inbounds %struct.eqn_d, ptr %1764, i64 %1765, i32 3
  %1775 = load ptr, ptr %1774, align 8, !tbaa !56
  %1776 = load i32, ptr %1775, align 4, !tbaa !50
  %1777 = icmp sgt i32 %1776, %1593
  br i1 %1777, label %1778, label %1808

1778:                                             ; preds = %1773
  %1779 = getelementptr inbounds %struct.eqn_d, ptr %1764, i64 %1586, i32 2
  %1780 = load i32, ptr %1779, align 8, !tbaa !60
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1782, label %1831

1782:                                             ; preds = %1778
  %1783 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %1803, label %1785

1785:                                             ; preds = %1782
  %1786 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1787 = and i32 %1786, 8
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1803, label %1789

1789:                                             ; preds = %1785
  %1790 = tail call i64 @fwrite(ptr nonnull @.str.186, i64 29, i64 1, ptr nonnull %1783)
  %1791 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1792 = load ptr, ptr %929, align 8, !tbaa !71
  %1793 = getelementptr inbounds %struct.eqn_d, ptr %1792, i64 %1765
  tail call void @omega_print_eqn(ptr noundef %1791, ptr noundef nonnull %0, ptr noundef %1793, i8 noundef zeroext 1, i32 noundef 0)
  %1794 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1795 = tail call i32 @fputc(i32 10, ptr %1794)
  %1796 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1797 = tail call i64 @fwrite(ptr nonnull @.str.187, i64 28, i64 1, ptr %1796)
  %1798 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1799 = load ptr, ptr %929, align 8, !tbaa !71
  %1800 = getelementptr inbounds %struct.eqn_d, ptr %1799, i64 %1586
  tail call void @omega_print_eqn(ptr noundef %1798, ptr noundef nonnull %0, ptr noundef %1800, i8 noundef zeroext 1, i32 noundef 0)
  %1801 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1802 = tail call i32 @fputc(i32 10, ptr %1801)
  br label %1803

1803:                                             ; preds = %1789, %1785, %1782
  %1804 = load ptr, ptr %929, align 8, !tbaa !71
  %1805 = getelementptr inbounds %struct.eqn_d, ptr %1804, i64 %1765, i32 3
  %1806 = load ptr, ptr %1805, align 8, !tbaa !56
  store i32 %1593, ptr %1806, align 4, !tbaa !50
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %1584, i32 noundef %1186)
  %1807 = add nsw i32 %1584, -1
  br label %1906

1808:                                             ; preds = %1773
  %1809 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1810 = icmp eq ptr %1809, null
  br i1 %1810, label %1829, label %1811

1811:                                             ; preds = %1808
  %1812 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1813 = and i32 %1812, 8
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %1829, label %1815

1815:                                             ; preds = %1811
  %1816 = tail call i64 @fwrite(ptr nonnull @.str.186, i64 29, i64 1, ptr nonnull %1809)
  %1817 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1818 = load ptr, ptr %929, align 8, !tbaa !71
  %1819 = getelementptr inbounds %struct.eqn_d, ptr %1818, i64 %1586
  tail call void @omega_print_eqn(ptr noundef %1817, ptr noundef nonnull %0, ptr noundef %1819, i8 noundef zeroext 1, i32 noundef 0)
  %1820 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1821 = tail call i32 @fputc(i32 10, ptr %1820)
  %1822 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1823 = tail call i64 @fwrite(ptr nonnull @.str.188, i64 28, i64 1, ptr %1822)
  %1824 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1825 = load ptr, ptr %929, align 8, !tbaa !71
  %1826 = getelementptr inbounds %struct.eqn_d, ptr %1825, i64 %1765
  tail call void @omega_print_eqn(ptr noundef %1824, ptr noundef nonnull %0, ptr noundef %1826, i8 noundef zeroext 1, i32 noundef 0)
  %1827 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1828 = tail call i32 @fputc(i32 10, ptr %1827)
  br label %1829

1829:                                             ; preds = %1815, %1811, %1808
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %1584, i32 noundef %1186)
  %1830 = add nsw i32 %1584, -1
  br label %1906

1831:                                             ; preds = %1778, %1769, %1763, %1753
  %1832 = load ptr, ptr @fast_lookup_red, align 8, !tbaa !35
  %1833 = getelementptr inbounds i32, ptr %1832, i64 %1759
  %1834 = load i32, ptr %1833, align 4, !tbaa !50
  %1835 = icmp slt i32 %1834, %1584
  br i1 %1835, label %1836, label %1906

1836:                                             ; preds = %1831
  %1837 = load ptr, ptr %929, align 8, !tbaa !71
  %1838 = sext i32 %1834 to i64
  %1839 = getelementptr inbounds %struct.eqn_d, ptr %1837, i64 %1838
  %1840 = load i32, ptr %1839, align 8, !tbaa !59
  %1841 = icmp eq i32 %1840, %1588
  br i1 %1841, label %1842, label %1906

1842:                                             ; preds = %1836
  %1843 = getelementptr inbounds %struct.eqn_d, ptr %1837, i64 %1838, i32 2
  %1844 = load i32, ptr %1843, align 8, !tbaa !60
  %1845 = icmp eq i32 %1844, 1
  br i1 %1845, label %1846, label %1906

1846:                                             ; preds = %1842
  %1847 = getelementptr inbounds %struct.eqn_d, ptr %1837, i64 %1838, i32 3
  %1848 = load ptr, ptr %1847, align 8, !tbaa !56
  %1849 = load i32, ptr %1848, align 4, !tbaa !50
  %1850 = icmp slt i32 %1849, %1593
  br i1 %1850, label %1879, label %1851

1851:                                             ; preds = %1846
  %1852 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1853 = icmp eq ptr %1852, null
  br i1 %1853, label %1872, label %1854

1854:                                             ; preds = %1851
  %1855 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1856 = and i32 %1855, 8
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1872, label %1858

1858:                                             ; preds = %1854
  %1859 = tail call i64 @fwrite(ptr nonnull @.str.186, i64 29, i64 1, ptr nonnull %1852)
  %1860 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1861 = load ptr, ptr %929, align 8, !tbaa !71
  %1862 = getelementptr inbounds %struct.eqn_d, ptr %1861, i64 %1838
  tail call void @omega_print_eqn(ptr noundef %1860, ptr noundef nonnull %0, ptr noundef %1862, i8 noundef zeroext 1, i32 noundef 0)
  %1863 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1864 = tail call i32 @fputc(i32 10, ptr %1863)
  %1865 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1866 = tail call i64 @fwrite(ptr nonnull @.str.189, i64 28, i64 1, ptr %1865)
  %1867 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1868 = load ptr, ptr %929, align 8, !tbaa !71
  %1869 = getelementptr inbounds %struct.eqn_d, ptr %1868, i64 %1586
  tail call void @omega_print_eqn(ptr noundef %1867, ptr noundef nonnull %0, ptr noundef %1869, i8 noundef zeroext 1, i32 noundef 0)
  %1870 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1871 = tail call i32 @fputc(i32 10, ptr %1870)
  br label %1872

1872:                                             ; preds = %1858, %1854, %1851
  %1873 = load ptr, ptr %929, align 8, !tbaa !71
  %1874 = getelementptr inbounds %struct.eqn_d, ptr %1873, i64 %1838, i32 3
  %1875 = load ptr, ptr %1874, align 8, !tbaa !56
  store i32 %1593, ptr %1875, align 4, !tbaa !50
  %1876 = getelementptr inbounds %struct.eqn_d, ptr %1873, i64 %1586, i32 2
  %1877 = load i32, ptr %1876, align 8, !tbaa !60
  %1878 = getelementptr inbounds %struct.eqn_d, ptr %1873, i64 %1838, i32 2
  store i32 %1877, ptr %1878, align 8, !tbaa !60
  br label %1904

1879:                                             ; preds = %1846
  %1880 = getelementptr inbounds %struct.eqn_d, ptr %1837, i64 %1586, i32 2
  %1881 = load i32, ptr %1880, align 8, !tbaa !60
  %1882 = icmp eq i32 %1881, 1
  %1883 = load ptr, ptr @dump_file, align 8
  %1884 = icmp ne ptr %1883, null
  %1885 = select i1 %1882, i1 %1884, i1 false
  br i1 %1885, label %1886, label %1904

1886:                                             ; preds = %1879
  %1887 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1888 = and i32 %1887, 8
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1904, label %1890

1890:                                             ; preds = %1886
  %1891 = tail call i64 @fwrite(ptr nonnull @.str.186, i64 29, i64 1, ptr nonnull %1883)
  %1892 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1893 = load ptr, ptr %929, align 8, !tbaa !71
  %1894 = getelementptr inbounds %struct.eqn_d, ptr %1893, i64 %1586
  tail call void @omega_print_eqn(ptr noundef %1892, ptr noundef nonnull %0, ptr noundef %1894, i8 noundef zeroext 1, i32 noundef 0)
  %1895 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1896 = tail call i32 @fputc(i32 10, ptr %1895)
  %1897 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1898 = tail call i64 @fwrite(ptr nonnull @.str.190, i64 28, i64 1, ptr %1897)
  %1899 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1900 = load ptr, ptr %929, align 8, !tbaa !71
  %1901 = getelementptr inbounds %struct.eqn_d, ptr %1900, i64 %1838
  tail call void @omega_print_eqn(ptr noundef %1899, ptr noundef nonnull %0, ptr noundef %1901, i8 noundef zeroext 1, i32 noundef 0)
  %1902 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1903 = tail call i32 @fputc(i32 10, ptr %1902)
  br label %1904

1904:                                             ; preds = %1890, %1886, %1879, %1872
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %1584, i32 noundef %1186)
  %1905 = add nsw i32 %1584, -1
  br label %1906

1906:                                             ; preds = %1904, %1842, %1836, %1831, %1829, %1803, %1708, %1704, %1701, %1626, %1622, %1619
  %1907 = phi i1 [ false, %1803 ], [ false, %1904 ], [ false, %1829 ], [ false, %1626 ], [ false, %1622 ], [ false, %1619 ], [ false, %1708 ], [ false, %1704 ], [ false, %1701 ], [ true, %1842 ], [ true, %1836 ], [ true, %1831 ]
  %1908 = phi i32 [ 4, %1803 ], [ 4, %1904 ], [ 4, %1829 ], [ 1, %1626 ], [ 1, %1622 ], [ 1, %1619 ], [ 1, %1708 ], [ 1, %1704 ], [ 1, %1701 ], [ 0, %1842 ], [ 0, %1836 ], [ 0, %1831 ]
  %1909 = phi i32 [ %1807, %1803 ], [ %1905, %1904 ], [ %1830, %1829 ], [ %1584, %1626 ], [ %1584, %1622 ], [ %1584, %1619 ], [ %1584, %1708 ], [ %1584, %1704 ], [ %1584, %1701 ], [ %1584, %1842 ], [ %1584, %1836 ], [ %1584, %1831 ]
  br i1 %1907, label %1910, label %1926

1910:                                             ; preds = %1906, %1582
  %1911 = phi i32 [ %1909, %1906 ], [ %1584, %1582 ]
  %1912 = load ptr, ptr %929, align 8, !tbaa !71
  %1913 = sext i32 %1911 to i64
  %1914 = getelementptr inbounds %struct.eqn_d, ptr %1912, i64 %1913, i32 2
  %1915 = load i32, ptr %1914, align 8, !tbaa !60
  %1916 = icmp eq i32 %1915, 1
  %1917 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1918 = getelementptr inbounds %struct.param_info, ptr %1917, i64 69, i32 1
  %1919 = load i32, ptr %1918, align 8, !tbaa !87
  %1920 = add nsw i32 %1919, %1588
  %1921 = sext i32 %1920 to i64
  %1922 = load ptr, ptr @fast_lookup_red, align 8
  %1923 = load ptr, ptr @fast_lookup, align 8
  %1924 = select i1 %1916, ptr %1922, ptr %1923
  %1925 = getelementptr inbounds i32, ptr %1924, i64 %1921
  store i32 %1911, ptr %1925, align 4, !tbaa !50
  br label %1926

1926:                                             ; preds = %1910, %1906
  %1927 = phi i32 [ %1908, %1906 ], [ 0, %1910 ]
  %1928 = phi i32 [ %1909, %1906 ], [ %1911, %1910 ]
  switch i32 %1927, label %1939 [
    i32 0, label %1929
    i32 4, label %1929
  ]

1929:                                             ; preds = %1926, %1926, %1578
  %1930 = phi i32 [ %1580, %1578 ], [ %1583, %1926 ], [ %1583, %1926 ]
  %1931 = phi i32 [ %1581, %1578 ], [ %1928, %1926 ], [ %1928, %1926 ]
  %1932 = add nsw i32 %1931, 1
  %1933 = load i32, ptr %927, align 4, !tbaa !70
  %1934 = icmp slt i32 %1932, %1933
  br i1 %1934, label %1193, label %1935, !llvm.loop !163

1935:                                             ; preds = %1929, %1185
  %1936 = phi i32 [ 0, %1185 ], [ %1930, %1929 ]
  store i1 false, ptr @create_color, align 1
  %1937 = icmp eq i32 %1936, 0
  %1938 = select i1 %1937, i32 1, i32 2
  br label %1939

1939:                                             ; preds = %1578, %1926, %1935
  %1940 = phi i32 [ %1938, %1935 ], [ 0, %1926 ], [ 0, %1578 ]
  switch i32 %1940, label %1942 [
    i32 0, label %3403
    i32 2, label %1943
    i32 1, label %1941
  ]

1941:                                             ; preds = %1939
  br label %1943

1942:                                             ; preds = %1939
  unreachable

1943:                                             ; preds = %1941, %1939
  %1944 = phi i1 [ true, %1941 ], [ false, %1939 ]
  %1945 = load i32, ptr %0, align 8, !tbaa !54
  %1946 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1947 = icmp eq ptr %1946, null
  br i1 %1947, label %1959, label %1948

1948:                                             ; preds = %1943
  %1949 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1950 = and i32 %1949, 8
  %1951 = icmp eq i32 %1950, 0
  br i1 %1951, label %1959, label %1952

1952:                                             ; preds = %1948
  %1953 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 22, i64 1, ptr nonnull %1946)
  %1954 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %1954, ptr noundef nonnull %0)
  %1955 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1956 = tail call i32 @fputc(i32 10, ptr %1955)
  %1957 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1958 = tail call i64 @fwrite(ptr nonnull @.str.136, i64 44, i64 1, ptr %1957)
  br label %1959

1959:                                             ; preds = %1952, %1948, %1943
  br label %1960

1960:                                             ; preds = %1959, %3398
  %1961 = phi i8 [ %3394, %3398 ], [ %952, %1959 ]
  %1962 = phi i32 [ %3396, %3398 ], [ %1945, %1959 ]
  %1963 = phi i32 [ %3397, %3398 ], [ %953, %1959 ]
  %1964 = load i32, ptr %164, align 8, !tbaa !67
  %1965 = icmp sgt i32 %1964, 0
  br i1 %1965, label %1966, label %1968

1966:                                             ; preds = %1960
  %1967 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef %1)
  br label %3392

1968:                                             ; preds = %1960
  br i1 %1944, label %1969, label %1997

1969:                                             ; preds = %1968
  %1970 = load i32, ptr %4, align 4, !tbaa !76
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %1972, label %1973

1972:                                             ; preds = %1969
  store i32 0, ptr %927, align 4, !tbaa !70
  br label %1994

1973:                                             ; preds = %1969
  %1974 = load i32, ptr %927, align 4, !tbaa !70
  %1975 = icmp sgt i32 %1974, 0
  br i1 %1975, label %1976, label %1994

1976:                                             ; preds = %1973
  %1977 = zext nneg i32 %1974 to i64
  br label %1978

1978:                                             ; preds = %1976, %1992
  %1979 = phi i64 [ %1977, %1976 ], [ %1980, %1992 ]
  %1980 = add nsw i64 %1979, -1
  %1981 = load ptr, ptr %950, align 8, !tbaa !71
  %1982 = getelementptr inbounds %struct.eqn_d, ptr %1981, i64 %1980
  %1983 = load i32, ptr %1982, align 8, !tbaa !59
  %1984 = tail call i32 @llvm.abs.i32(i32 %1983, i1 true)
  %1985 = icmp eq i32 %1983, 0
  br i1 %1985, label %1986, label %1987

1986:                                             ; preds = %1978
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %1987

1987:                                             ; preds = %1978, %1986
  %1988 = load i32, ptr %4, align 4, !tbaa !76
  %1989 = icmp slt i32 %1988, %1984
  br i1 %1989, label %1990, label %1992

1990:                                             ; preds = %1987
  %1991 = trunc i64 %1980 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %1991, i32 noundef %1962)
  br label %1992

1992:                                             ; preds = %1990, %1987
  %1993 = icmp sgt i64 %1979, 1
  br i1 %1993, label %1978, label %1994, !llvm.loop !164

1994:                                             ; preds = %1992, %1973, %1972
  %1995 = load i32, ptr %4, align 4, !tbaa !76
  store i32 %1995, ptr %0, align 8, !tbaa !54
  br i1 %11, label %1996, label %3392

1996:                                             ; preds = %1994
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0)
  br label %3392

1997:                                             ; preds = %1968
  %1998 = load i32, ptr %927, align 4, !tbaa !70
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2000, label %2003

2000:                                             ; preds = %1997
  br i1 %11, label %2001, label %3392

2001:                                             ; preds = %2000
  %2002 = load i32, ptr %4, align 4, !tbaa !76
  store i32 %2002, ptr %0, align 8, !tbaa !54
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0)
  br label %3392

2003:                                             ; preds = %1997
  br i1 %11, label %2004, label %2008

2004:                                             ; preds = %2003
  %2005 = load i32, ptr %4, align 4, !tbaa !76
  %2006 = icmp eq i32 %1962, %2005
  br i1 %2006, label %2007, label %2008

2007:                                             ; preds = %2004
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0)
  br label %3392

2008:                                             ; preds = %2004, %2003
  %2009 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %2010 = getelementptr inbounds %struct.param_info, ptr %2009, i64 65, i32 1
  %2011 = load i32, ptr %2010, align 8, !tbaa !87
  %2012 = add nsw i32 %2011, -30
  %2013 = icmp sgt i32 %1998, %2012
  br i1 %2013, label %2020, label %2014

2014:                                             ; preds = %2008
  %2015 = shl nsw i32 %1962, 1
  %2016 = add i32 %2015, 4
  %2017 = mul i32 %2016, %1962
  %2018 = add nsw i32 %2017, 10
  %2019 = icmp sgt i32 %1998, %2018
  br i1 %2019, label %2020, label %2047

2020:                                             ; preds = %2014, %2008
  %2021 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2022 = icmp eq ptr %2021, null
  br i1 %2022, label %2029, label %2023

2023:                                             ; preds = %2020
  %2024 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2025 = and i32 %2024, 8
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2029, label %2027

2027:                                             ; preds = %2023
  %2028 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2021, ptr noundef nonnull @.str.137, i32 noundef %1998, i32 noundef %1962)
  br label %2029

2029:                                             ; preds = %2027, %2023, %2020
  %2030 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %0, i8 noundef zeroext 0), !range !89
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %3392, label %2032

2032:                                             ; preds = %2029
  %2033 = load i32, ptr %0, align 8, !tbaa !54
  %2034 = load i32, ptr %164, align 8, !tbaa !67
  %2035 = icmp sgt i32 %2034, 0
  br i1 %2035, label %2036, label %2038

2036:                                             ; preds = %2032
  %2037 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef %1)
  br label %3392

2038:                                             ; preds = %2032
  %2039 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %2047, label %2041

2041:                                             ; preds = %2038
  %2042 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2043 = and i32 %2042, 8
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2047, label %2045

2045:                                             ; preds = %2041
  %2046 = tail call i64 @fwrite(ptr nonnull @.str.138, i64 39, i64 1, ptr nonnull %2039)
  br label %2047

2047:                                             ; preds = %2045, %2041, %2038, %2014
  %2048 = phi i32 [ %2033, %2045 ], [ %2033, %2041 ], [ %2033, %2038 ], [ %1962, %2014 ]
  br i1 %11, label %2049, label %2051

2049:                                             ; preds = %2047
  %2050 = load i32, ptr %4, align 4, !tbaa !76
  br label %2051

2051:                                             ; preds = %2049, %2047
  %2052 = phi i32 [ %2050, %2049 ], [ 0, %2047 ]
  %2053 = icmp eq i32 %2048, %2052
  br i1 %2053, label %2245, label %2054

2054:                                             ; preds = %2051
  %2055 = sext i32 %2048 to i64
  br label %2056

2056:                                             ; preds = %2054, %2231
  %2057 = phi i64 [ %2055, %2054 ], [ %2241, %2231 ]
  %2058 = phi i32 [ 0, %2054 ], [ %2239, %2231 ]
  %2059 = phi i32 [ 0, %2054 ], [ %2118, %2231 ]
  %2060 = phi i32 [ 0, %2054 ], [ %2237, %2231 ]
  %2061 = phi i32 [ 0, %2054 ], [ %2236, %2231 ]
  %2062 = phi i32 [ 0, %2054 ], [ %2235, %2231 ]
  %2063 = phi i32 [ 2147483647, %2054 ], [ %2234, %2231 ]
  %2064 = phi i8 [ 0, %2054 ], [ %2233, %2231 ]
  %2065 = phi i8 [ 0, %2054 ], [ %2232, %2231 ]
  %2066 = load i32, ptr %927, align 4, !tbaa !70
  %2067 = icmp sgt i32 %2066, 0
  br i1 %2067, label %2068, label %2114

2068:                                             ; preds = %2056
  %2069 = load ptr, ptr %930, align 8, !tbaa !71
  %2070 = zext nneg i32 %2066 to i64
  br label %2071

2071:                                             ; preds = %2068, %2105
  %2072 = phi i64 [ %2070, %2068 ], [ %2080, %2105 ]
  %2073 = phi i32 [ 0, %2068 ], [ %2112, %2105 ]
  %2074 = phi i32 [ 0, %2068 ], [ %2111, %2105 ]
  %2075 = phi i32 [ 0, %2068 ], [ %2110, %2105 ]
  %2076 = phi i32 [ %2059, %2068 ], [ %2109, %2105 ]
  %2077 = phi i32 [ 0, %2068 ], [ %2108, %2105 ]
  %2078 = phi i32 [ -2, %2068 ], [ %2107, %2105 ]
  %2079 = phi i32 [ -2, %2068 ], [ %2106, %2105 ]
  %2080 = add nsw i64 %2072, -1
  %2081 = getelementptr inbounds %struct.eqn_d, ptr %2069, i64 %2080, i32 3
  %2082 = load ptr, ptr %2081, align 8, !tbaa !56
  %2083 = getelementptr inbounds i32, ptr %2082, i64 %2057
  %2084 = load i32, ptr %2083, align 4, !tbaa !50
  %2085 = icmp slt i32 %2084, 0
  br i1 %2085, label %2086, label %2094

2086:                                             ; preds = %2071
  %2087 = tail call i32 @llvm.smin.i32(i32 %2073, i32 %2084)
  %2088 = add nsw i32 %2077, 1
  %2089 = icmp eq i32 %2084, -1
  br i1 %2089, label %2105, label %2090

2090:                                             ; preds = %2086
  %2091 = icmp eq i32 %2079, -2
  %2092 = trunc i64 %2080 to i32
  %2093 = select i1 %2091, i32 %2092, i32 -1
  br label %2105

2094:                                             ; preds = %2071
  %2095 = icmp eq i32 %2084, 0
  br i1 %2095, label %2105, label %2096

2096:                                             ; preds = %2094
  %2097 = tail call i32 @llvm.smax.i32(i32 %2074, i32 %2084)
  %2098 = add nsw i32 %2075, 1
  %2099 = icmp sgt i32 %2084, 1
  %2100 = trunc i64 %2080 to i32
  br i1 %2099, label %2101, label %2105

2101:                                             ; preds = %2096
  %2102 = icmp eq i32 %2078, -2
  %2103 = trunc i64 %2080 to i32
  %2104 = select i1 %2102, i32 %2103, i32 -1
  br label %2105

2105:                                             ; preds = %2101, %2096, %2094, %2090, %2086
  %2106 = phi i32 [ %2079, %2086 ], [ %2079, %2096 ], [ %2079, %2094 ], [ %2093, %2090 ], [ %2079, %2101 ]
  %2107 = phi i32 [ %2078, %2086 ], [ %2078, %2096 ], [ %2078, %2094 ], [ %2078, %2090 ], [ %2104, %2101 ]
  %2108 = phi i32 [ %2088, %2086 ], [ %2077, %2096 ], [ %2077, %2094 ], [ %2088, %2090 ], [ %2077, %2101 ]
  %2109 = phi i32 [ %2076, %2086 ], [ %2100, %2096 ], [ %2076, %2094 ], [ %2076, %2090 ], [ %2100, %2101 ]
  %2110 = phi i32 [ %2075, %2086 ], [ %2098, %2096 ], [ %2075, %2094 ], [ %2075, %2090 ], [ %2098, %2101 ]
  %2111 = phi i32 [ %2074, %2086 ], [ %2097, %2096 ], [ %2074, %2094 ], [ %2074, %2090 ], [ %2097, %2101 ]
  %2112 = phi i32 [ %2087, %2086 ], [ %2073, %2096 ], [ %2073, %2094 ], [ %2087, %2090 ], [ %2073, %2101 ]
  %2113 = icmp sgt i64 %2072, 1
  br i1 %2113, label %2071, label %2114, !llvm.loop !165

2114:                                             ; preds = %2105, %2056
  %2115 = phi i32 [ -2, %2056 ], [ %2106, %2105 ]
  %2116 = phi i32 [ -2, %2056 ], [ %2107, %2105 ]
  %2117 = phi i32 [ 0, %2056 ], [ %2108, %2105 ]
  %2118 = phi i32 [ %2059, %2056 ], [ %2109, %2105 ]
  %2119 = phi i32 [ 0, %2056 ], [ %2110, %2105 ]
  %2120 = phi i32 [ 0, %2056 ], [ %2111, %2105 ]
  %2121 = phi i32 [ 0, %2056 ], [ %2112, %2105 ]
  %2122 = icmp eq i32 %2119, 0
  %2123 = icmp eq i32 %2117, 0
  %2124 = select i1 %2122, i1 true, i1 %2123
  br i1 %2124, label %2231, label %2125

2125:                                             ; preds = %2114
  %2126 = icmp sgt i32 %2115, -1
  %2127 = icmp sgt i32 %2116, -1
  %2128 = select i1 %2126, i1 %2127, i1 false
  br i1 %2128, label %2129, label %2158

2129:                                             ; preds = %2125
  %2130 = load ptr, ptr %931, align 8, !tbaa !71
  %2131 = zext nneg i32 %2116 to i64
  %2132 = getelementptr inbounds %struct.eqn_d, ptr %2130, i64 %2131
  %2133 = load i32, ptr %2132, align 8, !tbaa !59
  %2134 = zext nneg i32 %2115 to i64
  %2135 = getelementptr inbounds %struct.eqn_d, ptr %2130, i64 %2134
  %2136 = load i32, ptr %2135, align 8, !tbaa !59
  %2137 = sub nsw i32 0, %2136
  %2138 = icmp eq i32 %2133, %2137
  br i1 %2138, label %2139, label %2158

2139:                                             ; preds = %2129
  %2140 = getelementptr inbounds %struct.eqn_d, ptr %2130, i64 %2131, i32 3
  %2141 = load ptr, ptr %2140, align 8, !tbaa !56
  %2142 = getelementptr inbounds i32, ptr %2141, i64 %2057
  %2143 = load i32, ptr %2142, align 4, !tbaa !50
  %2144 = getelementptr inbounds %struct.eqn_d, ptr %2130, i64 %2134, i32 3
  %2145 = load ptr, ptr %2144, align 8, !tbaa !56
  %2146 = getelementptr inbounds i32, ptr %2145, i64 %2057
  %2147 = load i32, ptr %2146, align 4, !tbaa !50
  %2148 = load i32, ptr %2145, align 4, !tbaa !50
  %2149 = mul nsw i32 %2148, %2143
  %2150 = load i32, ptr %2141, align 4, !tbaa !50
  %2151 = mul i32 %2150, %2147
  %2152 = sub i32 %2149, %2151
  %2153 = xor i32 %2147, -1
  %2154 = add nsw i32 %2143, -1
  %2155 = mul nsw i32 %2154, %2153
  %2156 = icmp sge i32 %2152, %2155
  %2157 = zext i1 %2156 to i8
  br label %2158

2158:                                             ; preds = %2139, %2129, %2125
  %2159 = phi i8 [ %2157, %2139 ], [ 0, %2129 ], [ 0, %2125 ]
  %2160 = icmp eq i32 %2120, 1
  %2161 = icmp eq i32 %2121, -1
  %2162 = select i1 %2160, i1 true, i1 %2161
  %2163 = zext nneg i8 %2159 to i32
  %2164 = icmp ne i8 %2159, 0
  %2165 = select i1 %2162, i1 true, i1 %2164
  %2166 = load i1, ptr @in_approximate_mode, align 1
  %2167 = select i1 %2165, i1 true, i1 %2166
  %2168 = trunc i64 %2057 to i32
  br i1 %2167, label %2169, label %2201

2169:                                             ; preds = %2158
  %2170 = mul nsw i32 %2119, %2117
  %2171 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2172 = icmp eq ptr %2171, null
  br i1 %2172, label %2195, label %2173

2173:                                             ; preds = %2169
  %2174 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2175 = and i32 %2174, 8
  %2176 = icmp eq i32 %2175, 0
  br i1 %2176, label %2195, label %2177

2177:                                             ; preds = %2173
  %2178 = load ptr, ptr %933, align 8, !tbaa !61
  %2179 = getelementptr inbounds i32, ptr %2178, i64 %2057
  %2180 = load i32, ptr %2179, align 4, !tbaa !50
  %2181 = icmp ult i32 %2180, 21
  br i1 %2181, label %2182, label %2185

2182:                                             ; preds = %2177
  %2183 = zext nneg i32 %2180 to i64
  %2184 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2183
  br label %2191

2185:                                             ; preds = %2177
  %2186 = icmp ugt i32 %2180, -20
  br i1 %2186, label %2187, label %2191

2187:                                             ; preds = %2185
  %2188 = add nsw i32 %2180, 40
  %2189 = zext nneg i32 %2188 to i64
  %2190 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2189
  br label %2191

2191:                                             ; preds = %2182, %2185, %2187
  %2192 = phi ptr [ %2184, %2182 ], [ %2190, %2187 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2185 ]
  %2193 = zext i1 %2166 to i32
  %2194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2171, ptr noundef nonnull @.str.139, ptr noundef nonnull %2192, i32 noundef %2117, i32 noundef %2119, i32 noundef %2121, i32 noundef %2120, i32 noundef %2163, i32 noundef %2193)
  br label %2195

2195:                                             ; preds = %2191, %2173, %2169
  %2196 = icmp eq i8 %2065, 0
  %2197 = icmp slt i32 %2170, %2063
  %2198 = select i1 %2196, i1 true, i1 %2197
  br i1 %2198, label %2199, label %2231

2199:                                             ; preds = %2195
  %2200 = icmp eq i32 %2170, 1
  br label %2231

2201:                                             ; preds = %2158
  %2202 = icmp eq i8 %2065, 0
  br i1 %2202, label %2203, label %2231

2203:                                             ; preds = %2201
  %2204 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2205 = icmp eq ptr %2204, null
  br i1 %2205, label %2227, label %2206

2206:                                             ; preds = %2203
  %2207 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2208 = and i32 %2207, 8
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2227, label %2210

2210:                                             ; preds = %2206
  %2211 = load ptr, ptr %932, align 8, !tbaa !61
  %2212 = getelementptr inbounds i32, ptr %2211, i64 %2057
  %2213 = load i32, ptr %2212, align 4, !tbaa !50
  %2214 = icmp ult i32 %2213, 21
  br i1 %2214, label %2215, label %2218

2215:                                             ; preds = %2210
  %2216 = zext nneg i32 %2213 to i64
  %2217 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2216
  br label %2224

2218:                                             ; preds = %2210
  %2219 = icmp ugt i32 %2213, -20
  br i1 %2219, label %2220, label %2224

2220:                                             ; preds = %2218
  %2221 = add nsw i32 %2213, 40
  %2222 = zext nneg i32 %2221 to i64
  %2223 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2222
  br label %2224

2224:                                             ; preds = %2215, %2218, %2220
  %2225 = phi ptr [ %2217, %2215 ], [ %2223, %2220 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2218 ]
  %2226 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2204, ptr noundef nonnull @.str.140, ptr noundef nonnull %2225, i32 noundef %2117, i32 noundef %2119, i32 noundef %2121, i32 noundef %2120)
  br label %2227

2227:                                             ; preds = %2224, %2206, %2203
  %2228 = sub nsw i32 %2120, %2121
  %2229 = icmp sgt i32 %2063, %2228
  br i1 %2229, label %2230, label %2231

2230:                                             ; preds = %2227
  br label %2231

2231:                                             ; preds = %2230, %2227, %2201, %2199, %2195, %2114
  %2232 = phi i8 [ %2065, %2114 ], [ 1, %2201 ], [ 0, %2230 ], [ 0, %2227 ], [ 1, %2195 ], [ 1, %2199 ]
  %2233 = phi i8 [ %2064, %2114 ], [ %2064, %2201 ], [ %2064, %2230 ], [ %2064, %2227 ], [ %2064, %2195 ], [ %2159, %2199 ]
  %2234 = phi i32 [ %2063, %2114 ], [ %2063, %2201 ], [ %2228, %2230 ], [ %2063, %2227 ], [ %2063, %2195 ], [ %2170, %2199 ]
  %2235 = phi i32 [ %2062, %2114 ], [ %2062, %2201 ], [ %2168, %2230 ], [ %2062, %2227 ], [ %2062, %2195 ], [ %2168, %2199 ]
  %2236 = phi i32 [ %2061, %2114 ], [ %2061, %2201 ], [ %2118, %2230 ], [ %2061, %2227 ], [ %2061, %2195 ], [ %2118, %2199 ]
  %2237 = phi i32 [ %2060, %2114 ], [ %2060, %2201 ], [ %2119, %2230 ], [ %2060, %2227 ], [ %2060, %2195 ], [ %2119, %2199 ]
  %2238 = phi i32 [ 0, %2114 ], [ %2119, %2201 ], [ %2119, %2230 ], [ %2119, %2227 ], [ %2119, %2195 ], [ %2119, %2199 ]
  %2239 = phi i32 [ %2058, %2114 ], [ %2058, %2201 ], [ %2121, %2230 ], [ %2058, %2227 ], [ %2058, %2195 ], [ %2121, %2199 ]
  %2240 = phi i1 [ true, %2114 ], [ false, %2201 ], [ false, %2230 ], [ false, %2227 ], [ false, %2195 ], [ %2200, %2199 ]
  %2241 = add nsw i64 %2057, -1
  %2242 = trunc i64 %2241 to i32
  %2243 = icmp eq i32 %2052, %2242
  %2244 = select i1 %2240, i1 true, i1 %2243
  br i1 %2244, label %2245, label %2056, !llvm.loop !166

2245:                                             ; preds = %2231, %2051
  %2246 = phi i8 [ 0, %2051 ], [ %2232, %2231 ]
  %2247 = phi i8 [ 0, %2051 ], [ %2233, %2231 ]
  %2248 = phi i32 [ 0, %2051 ], [ %2235, %2231 ]
  %2249 = phi i32 [ 0, %2051 ], [ %2236, %2231 ]
  %2250 = phi i32 [ 0, %2051 ], [ %2237, %2231 ]
  %2251 = phi i32 [ 0, %2051 ], [ %2238, %2231 ]
  %2252 = phi i32 [ 0, %2051 ], [ %2239, %2231 ]
  %2253 = icmp eq i32 %2251, 0
  br i1 %2253, label %2254, label %2257

2254:                                             ; preds = %2245
  %2255 = load i32, ptr %4, align 4, !tbaa !76
  tail call fastcc void @omega_free_eliminations(ptr noundef nonnull %0, i32 noundef %2255)
  %2256 = load i32, ptr %0, align 8, !tbaa !54
  br label %3392

2257:                                             ; preds = %2245
  %2258 = load i32, ptr %927, align 4, !tbaa !70
  %2259 = icmp sgt i32 %2258, 0
  br i1 %2259, label %2260, label %2295

2260:                                             ; preds = %2257
  %2261 = sext i32 %2248 to i64
  %2262 = sub nsw i32 0, %2252
  %2263 = xor i32 %2252, -1
  %2264 = xor i32 %2252, -1
  %2265 = zext nneg i32 %2258 to i64
  br label %2266

2266:                                             ; preds = %2260, %2292
  %2267 = phi i64 [ %2265, %2260 ], [ %2269, %2292 ]
  %2268 = phi i32 [ 1, %2260 ], [ %2293, %2292 ]
  %2269 = add nsw i64 %2267, -1
  %2270 = load ptr, ptr %934, align 8, !tbaa !71
  %2271 = getelementptr inbounds %struct.eqn_d, ptr %2270, i64 %2269, i32 3
  %2272 = load ptr, ptr %2271, align 8, !tbaa !56
  %2273 = getelementptr inbounds i32, ptr %2272, i64 %2261
  %2274 = load i32, ptr %2273, align 4, !tbaa !50
  %2275 = icmp sgt i32 %2274, 0
  br i1 %2275, label %2276, label %2292

2276:                                             ; preds = %2266
  %2277 = icmp eq i32 %2274, %2262
  br i1 %2277, label %2278, label %2280

2278:                                             ; preds = %2276
  %2279 = add nsw i32 %2268, %2264
  br label %2292

2280:                                             ; preds = %2276
  %2281 = add nsw i32 %2274, -1
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2287, label %2283

2283:                                             ; preds = %2280
  %2284 = sdiv i32 2147483647, %2281
  %2285 = icmp sgt i32 %2284, %2263
  br i1 %2285, label %2287, label %2286

2286:                                             ; preds = %2283
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 123, ptr noundef nonnull @.str.21) #22
  br label %2287

2287:                                             ; preds = %2280, %2283, %2286
  %2288 = mul nsw i32 %2281, %2263
  %2289 = sdiv i32 %2288, %2262
  %2290 = add i32 %2268, 1
  %2291 = add i32 %2290, %2289
  br label %2292

2292:                                             ; preds = %2287, %2278, %2266
  %2293 = phi i32 [ %2279, %2278 ], [ %2291, %2287 ], [ %2268, %2266 ]
  %2294 = icmp sgt i64 %2267, 1
  br i1 %2294, label %2266, label %2295, !llvm.loop !167

2295:                                             ; preds = %2292, %2257
  %2296 = phi i32 [ 1, %2257 ], [ %2293, %2292 ]
  %2297 = icmp ne i8 %2246, 0
  %2298 = icmp ne i8 %1961, 0
  %2299 = select i1 %2297, i1 true, i1 %2298
  br i1 %2299, label %2302, label %2300

2300:                                             ; preds = %2295
  %2301 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %0, i8 noundef zeroext 0), !range !89
  br label %3392

2302:                                             ; preds = %2295
  br i1 %2297, label %2305, label %2303

2303:                                             ; preds = %2302
  %2304 = tail call i32 @omega_eliminate_redundant(ptr noundef nonnull %0, i8 noundef zeroext 0), !range !89
  br label %3392

2305:                                             ; preds = %2302
  %2306 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2307 = icmp eq ptr %2306, null
  br i1 %2307, label %2341, label %2308

2308:                                             ; preds = %2305
  %2309 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2310 = and i32 %2309, 8
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2341, label %2312

2312:                                             ; preds = %2308
  %2313 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %2314 = load ptr, ptr %2313, align 8, !tbaa !61
  %2315 = sext i32 %2248 to i64
  %2316 = getelementptr inbounds i32, ptr %2314, i64 %2315
  %2317 = load i32, ptr %2316, align 4, !tbaa !50
  %2318 = icmp ult i32 %2317, 21
  br i1 %2318, label %2319, label %2322

2319:                                             ; preds = %2312
  %2320 = zext nneg i32 %2317 to i64
  %2321 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2320
  br label %2328

2322:                                             ; preds = %2312
  %2323 = icmp ugt i32 %2317, -20
  br i1 %2323, label %2324, label %2328

2324:                                             ; preds = %2322
  %2325 = add nsw i32 %2317, 40
  %2326 = zext nneg i32 %2325 to i64
  %2327 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2326
  br label %2328

2328:                                             ; preds = %2319, %2322, %2324
  %2329 = phi ptr [ %2321, %2319 ], [ %2327, %2324 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2322 ]
  %2330 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2306, ptr noundef nonnull @.str.142, ptr noundef nonnull %2329, i32 noundef %2248, i32 noundef %2252, i32 noundef %2250)
  %2331 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %2331, ptr noundef nonnull %0)
  %2332 = icmp eq i8 %2247, 0
  %2333 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %2332, label %2336, label %2334

2334:                                             ; preds = %2328
  %2335 = tail call i64 @fwrite(ptr nonnull @.str.143, i64 28, i64 1, ptr %2333)
  br label %2338

2336:                                             ; preds = %2328
  %2337 = tail call i64 @fwrite(ptr nonnull @.str.144, i64 23, i64 1, ptr %2333)
  br label %2338

2338:                                             ; preds = %2336, %2334
  %2339 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2340 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2339, ptr noundef nonnull @.str.145, i32 noundef %2296)
  br label %2341

2341:                                             ; preds = %2338, %2308, %2305
  %2342 = icmp sgt i32 %2296, 0
  br i1 %2342, label %2344, label %2343

2343:                                             ; preds = %2341
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 4015, ptr noundef nonnull @.str.21) #22
  br label %2344

2344:                                             ; preds = %2343, %2341
  %2345 = icmp eq i32 %2248, %2048
  br i1 %2345, label %2417, label %2346

2346:                                             ; preds = %2344
  %2347 = load i32, ptr %0, align 8, !tbaa !54
  %2348 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2349 = icmp eq ptr %2348, null
  br i1 %2349, label %2357, label %2350

2350:                                             ; preds = %2346
  %2351 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2352 = and i32 %2351, 8
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2357, label %2354

2354:                                             ; preds = %2350
  %2355 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2348, ptr noundef nonnull @.str.146, i32 noundef %2248, i32 noundef %2347)
  %2356 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %2356, ptr noundef nonnull %0)
  br label %2357

2357:                                             ; preds = %2354, %2350, %2346
  %2358 = load ptr, ptr %935, align 8, !tbaa !61
  %2359 = sext i32 %2248 to i64
  %2360 = getelementptr inbounds i32, ptr %2358, i64 %2359
  %2361 = sext i32 %2347 to i64
  %2362 = getelementptr inbounds i32, ptr %2358, i64 %2361
  %2363 = load i32, ptr %2360, align 4, !tbaa !50
  %2364 = load i32, ptr %2362, align 4, !tbaa !50
  store i32 %2364, ptr %2360, align 4, !tbaa !50
  store i32 %2363, ptr %2362, align 4, !tbaa !50
  %2365 = load i32, ptr %927, align 4, !tbaa !70
  %2366 = icmp sgt i32 %2365, 0
  br i1 %2366, label %2367, label %2386

2367:                                             ; preds = %2357
  %2368 = load ptr, ptr %936, align 8, !tbaa !71
  %2369 = zext nneg i32 %2365 to i64
  br label %2370

2370:                                             ; preds = %2367, %2384
  %2371 = phi i64 [ %2369, %2367 ], [ %2372, %2384 ]
  %2372 = add nsw i64 %2371, -1
  %2373 = getelementptr inbounds %struct.eqn_d, ptr %2368, i64 %2372, i32 3
  %2374 = load ptr, ptr %2373, align 8, !tbaa !56
  %2375 = getelementptr inbounds i32, ptr %2374, i64 %2359
  %2376 = load i32, ptr %2375, align 4, !tbaa !50
  %2377 = getelementptr inbounds i32, ptr %2374, i64 %2361
  %2378 = load i32, ptr %2377, align 4, !tbaa !50
  %2379 = icmp eq i32 %2376, %2378
  br i1 %2379, label %2384, label %2380

2380:                                             ; preds = %2370
  %2381 = getelementptr inbounds %struct.eqn_d, ptr %2368, i64 %2372, i32 1
  store i32 1, ptr %2381, align 4, !tbaa !58
  %2382 = load i32, ptr %2375, align 4, !tbaa !50
  %2383 = load i32, ptr %2377, align 4, !tbaa !50
  store i32 %2383, ptr %2375, align 4, !tbaa !50
  store i32 %2382, ptr %2377, align 4, !tbaa !50
  br label %2384

2384:                                             ; preds = %2380, %2370
  %2385 = icmp sgt i64 %2371, 1
  br i1 %2385, label %2370, label %2386, !llvm.loop !168

2386:                                             ; preds = %2384, %2357
  %2387 = load i32, ptr %937, align 8, !tbaa !73
  %2388 = icmp sgt i32 %2387, 0
  br i1 %2388, label %2389, label %2405

2389:                                             ; preds = %2386
  %2390 = load ptr, ptr %938, align 8, !tbaa !74
  %2391 = zext nneg i32 %2387 to i64
  br label %2392

2392:                                             ; preds = %2389, %2403
  %2393 = phi i64 [ %2391, %2389 ], [ %2394, %2403 ]
  %2394 = add nsw i64 %2393, -1
  %2395 = getelementptr inbounds %struct.eqn_d, ptr %2390, i64 %2394, i32 3
  %2396 = load ptr, ptr %2395, align 8, !tbaa !56
  %2397 = getelementptr inbounds i32, ptr %2396, i64 %2359
  %2398 = load i32, ptr %2397, align 4, !tbaa !50
  %2399 = getelementptr inbounds i32, ptr %2396, i64 %2361
  %2400 = load i32, ptr %2399, align 4, !tbaa !50
  %2401 = icmp eq i32 %2398, %2400
  br i1 %2401, label %2403, label %2402

2402:                                             ; preds = %2392
  store i32 %2400, ptr %2397, align 4, !tbaa !50
  store i32 %2398, ptr %2399, align 4, !tbaa !50
  br label %2403

2403:                                             ; preds = %2402, %2392
  %2404 = icmp sgt i64 %2393, 1
  br i1 %2404, label %2392, label %2405, !llvm.loop !169

2405:                                             ; preds = %2403, %2386
  %2406 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2407 = icmp eq ptr %2406, null
  br i1 %2407, label %2427, label %2408

2408:                                             ; preds = %2405
  %2409 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2410 = and i32 %2409, 8
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2427, label %2412

2412:                                             ; preds = %2408
  %2413 = tail call i64 @fwrite(ptr nonnull @.str.147, i64 19, i64 1, ptr nonnull %2406)
  %2414 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %2414, ptr noundef nonnull %0)
  %2415 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2416 = tail call i32 @fputc(i32 10, ptr %2415)
  br label %2427

2417:                                             ; preds = %2344
  %2418 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2419 = icmp eq ptr %2418, null
  br i1 %2419, label %2427, label %2420

2420:                                             ; preds = %2417
  %2421 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2422 = and i32 %2421, 8
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2427, label %2424

2424:                                             ; preds = %2420
  %2425 = tail call i64 @fwrite(ptr nonnull @.str.148, i64 15, i64 1, ptr nonnull %2418)
  %2426 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %2426, ptr noundef nonnull %0)
  br label %2427

2427:                                             ; preds = %2424, %2420, %2417, %2412, %2408, %2405
  %2428 = phi i32 [ %2248, %2424 ], [ %2248, %2420 ], [ %2248, %2417 ], [ %2347, %2412 ], [ %2347, %2408 ], [ %2347, %2405 ]
  %2429 = load i32, ptr %0, align 8, !tbaa !54
  %2430 = add nsw i32 %2429, -1
  store i32 %2430, ptr %0, align 8, !tbaa !54
  %2431 = icmp eq i32 %2430, 1
  br i1 %2431, label %2432, label %2986

2432:                                             ; preds = %2427
  %2433 = load i32, ptr %927, align 4, !tbaa !70
  %2434 = sext i32 %2428 to i64
  %2435 = icmp sgt i32 %2433, 0
  br i1 %2435, label %2436, label %2827

2436:                                             ; preds = %2432
  %2437 = add nsw i32 %2433, -1
  %2438 = zext i32 %2437 to i64
  br label %2439

2439:                                             ; preds = %2436, %2820
  %2440 = phi i64 [ %2438, %2436 ], [ %2825, %2820 ]
  %2441 = phi i32 [ 0, %2436 ], [ %2824, %2820 ]
  %2442 = phi i32 [ 0, %2436 ], [ %2823, %2820 ]
  %2443 = phi i32 [ -134217727, %2436 ], [ %2822, %2820 ]
  %2444 = phi i32 [ 134217727, %2436 ], [ %2821, %2820 ]
  %2445 = load ptr, ptr %940, align 8, !tbaa !71
  %2446 = getelementptr inbounds %struct.eqn_d, ptr %2445, i64 %2440, i32 3
  %2447 = load ptr, ptr %2446, align 8, !tbaa !56
  %2448 = getelementptr inbounds i32, ptr %2447, i64 %2434
  %2449 = load i32, ptr %2448, align 4, !tbaa !50
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2451, label %2583

2451:                                             ; preds = %2439
  %2452 = getelementptr inbounds i32, ptr %2447, i64 1
  %2453 = load i32, ptr %2452, align 4, !tbaa !50
  %2454 = icmp eq i32 %2453, 1
  %2455 = load i32, ptr %2447, align 4, !tbaa !50
  br i1 %2454, label %2456, label %2520

2456:                                             ; preds = %2451
  %2457 = sub nsw i32 0, %2455
  %2458 = icmp slt i32 %2443, %2457
  br i1 %2458, label %2470, label %2459

2459:                                             ; preds = %2456
  %2460 = icmp eq i32 %2443, %2457
  br i1 %2460, label %2461, label %2473

2461:                                             ; preds = %2459
  br i1 %11, label %2462, label %2467

2462:                                             ; preds = %2461
  %2463 = getelementptr inbounds %struct.eqn_d, ptr %2445, i64 %2440, i32 2
  %2464 = load i32, ptr %2463, align 8, !tbaa !60
  %2465 = icmp eq i32 %2464, 1
  %2466 = zext i1 %2465 to i8
  br label %2467

2467:                                             ; preds = %2461, %2462
  %2468 = phi i8 [ 0, %2461 ], [ %2466, %2462 ]
  %2469 = icmp eq i8 %2468, 0
  br i1 %2469, label %2470, label %2473

2470:                                             ; preds = %2467, %2456
  %2471 = getelementptr inbounds %struct.eqn_d, ptr %2445, i64 %2440, i32 2
  %2472 = load i32, ptr %2471, align 8, !tbaa !60
  br label %2473

2473:                                             ; preds = %2470, %2467, %2459
  %2474 = phi i32 [ %2457, %2470 ], [ %2443, %2467 ], [ %2443, %2459 ]
  %2475 = phi i32 [ %2472, %2470 ], [ %2441, %2467 ], [ %2441, %2459 ]
  %2476 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2477 = icmp eq ptr %2476, null
  br i1 %2477, label %2820, label %2478

2478:                                             ; preds = %2473
  %2479 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2480 = and i32 %2479, 8
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2820, label %2482

2482:                                             ; preds = %2478
  %2483 = getelementptr inbounds %struct.eqn_d, ptr %2445, i64 %2440, i32 2
  %2484 = load i32, ptr %2483, align 8, !tbaa !60
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2486, label %2503

2486:                                             ; preds = %2482
  %2487 = load ptr, ptr %948, align 8, !tbaa !61
  %2488 = getelementptr inbounds i32, ptr %2487, i64 1
  %2489 = load i32, ptr %2488, align 4, !tbaa !50
  %2490 = icmp ult i32 %2489, 21
  br i1 %2490, label %2491, label %2494

2491:                                             ; preds = %2486
  %2492 = zext nneg i32 %2489 to i64
  %2493 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2492
  br label %2500

2494:                                             ; preds = %2486
  %2495 = icmp ugt i32 %2489, -20
  br i1 %2495, label %2496, label %2500

2496:                                             ; preds = %2494
  %2497 = add nsw i32 %2489, 40
  %2498 = zext nneg i32 %2497 to i64
  %2499 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2498
  br label %2500

2500:                                             ; preds = %2491, %2494, %2496
  %2501 = phi ptr [ %2493, %2491 ], [ %2499, %2496 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2494 ]
  %2502 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2476, ptr noundef nonnull @.str.149, ptr noundef nonnull %2501, i32 noundef %2457)
  br label %2820

2503:                                             ; preds = %2482
  %2504 = load ptr, ptr %947, align 8, !tbaa !61
  %2505 = getelementptr inbounds i32, ptr %2504, i64 1
  %2506 = load i32, ptr %2505, align 4, !tbaa !50
  %2507 = icmp ult i32 %2506, 21
  br i1 %2507, label %2508, label %2511

2508:                                             ; preds = %2503
  %2509 = zext nneg i32 %2506 to i64
  %2510 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2509
  br label %2517

2511:                                             ; preds = %2503
  %2512 = icmp ugt i32 %2506, -20
  br i1 %2512, label %2513, label %2517

2513:                                             ; preds = %2511
  %2514 = add nsw i32 %2506, 40
  %2515 = zext nneg i32 %2514 to i64
  %2516 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2515
  br label %2517

2517:                                             ; preds = %2508, %2511, %2513
  %2518 = phi ptr [ %2510, %2508 ], [ %2516, %2513 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2511 ]
  %2519 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2476, ptr noundef nonnull @.str.150, ptr noundef nonnull %2518, i32 noundef %2457)
  br label %2820

2520:                                             ; preds = %2451
  %2521 = icmp slt i32 %2455, %2444
  br i1 %2521, label %2533, label %2522

2522:                                             ; preds = %2520
  %2523 = icmp eq i32 %2455, %2444
  br i1 %2523, label %2524, label %2536

2524:                                             ; preds = %2522
  br i1 %11, label %2525, label %2530

2525:                                             ; preds = %2524
  %2526 = getelementptr inbounds %struct.eqn_d, ptr %2445, i64 %2440, i32 2
  %2527 = load i32, ptr %2526, align 8, !tbaa !60
  %2528 = icmp eq i32 %2527, 1
  %2529 = zext i1 %2528 to i8
  br label %2530

2530:                                             ; preds = %2524, %2525
  %2531 = phi i8 [ 0, %2524 ], [ %2529, %2525 ]
  %2532 = icmp eq i8 %2531, 0
  br i1 %2532, label %2533, label %2536

2533:                                             ; preds = %2530, %2520
  %2534 = getelementptr inbounds %struct.eqn_d, ptr %2445, i64 %2440, i32 2
  %2535 = load i32, ptr %2534, align 8, !tbaa !60
  br label %2536

2536:                                             ; preds = %2533, %2530, %2522
  %2537 = phi i32 [ %2455, %2533 ], [ %2444, %2530 ], [ %2444, %2522 ]
  %2538 = phi i32 [ %2535, %2533 ], [ %2442, %2530 ], [ %2442, %2522 ]
  %2539 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2540 = icmp eq ptr %2539, null
  br i1 %2540, label %2820, label %2541

2541:                                             ; preds = %2536
  %2542 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2543 = and i32 %2542, 8
  %2544 = icmp eq i32 %2543, 0
  br i1 %2544, label %2820, label %2545

2545:                                             ; preds = %2541
  %2546 = getelementptr inbounds %struct.eqn_d, ptr %2445, i64 %2440, i32 2
  %2547 = load i32, ptr %2546, align 8, !tbaa !60
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %2549, label %2566

2549:                                             ; preds = %2545
  %2550 = load ptr, ptr %946, align 8, !tbaa !61
  %2551 = getelementptr inbounds i32, ptr %2550, i64 1
  %2552 = load i32, ptr %2551, align 4, !tbaa !50
  %2553 = icmp ult i32 %2552, 21
  br i1 %2553, label %2554, label %2557

2554:                                             ; preds = %2549
  %2555 = zext nneg i32 %2552 to i64
  %2556 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2555
  br label %2563

2557:                                             ; preds = %2549
  %2558 = icmp ugt i32 %2552, -20
  br i1 %2558, label %2559, label %2563

2559:                                             ; preds = %2557
  %2560 = add nsw i32 %2552, 40
  %2561 = zext nneg i32 %2560 to i64
  %2562 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2561
  br label %2563

2563:                                             ; preds = %2554, %2557, %2559
  %2564 = phi ptr [ %2556, %2554 ], [ %2562, %2559 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2557 ]
  %2565 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2539, ptr noundef nonnull @.str.151, ptr noundef nonnull %2564, i32 noundef %2455)
  br label %2820

2566:                                             ; preds = %2545
  %2567 = load ptr, ptr %945, align 8, !tbaa !61
  %2568 = getelementptr inbounds i32, ptr %2567, i64 1
  %2569 = load i32, ptr %2568, align 4, !tbaa !50
  %2570 = icmp ult i32 %2569, 21
  br i1 %2570, label %2571, label %2574

2571:                                             ; preds = %2566
  %2572 = zext nneg i32 %2569 to i64
  %2573 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2572
  br label %2580

2574:                                             ; preds = %2566
  %2575 = icmp ugt i32 %2569, -20
  br i1 %2575, label %2576, label %2580

2576:                                             ; preds = %2574
  %2577 = add nsw i32 %2569, 40
  %2578 = zext nneg i32 %2577 to i64
  %2579 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2578
  br label %2580

2580:                                             ; preds = %2571, %2574, %2576
  %2581 = phi ptr [ %2573, %2571 ], [ %2579, %2576 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2574 ]
  %2582 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2539, ptr noundef nonnull @.str.152, ptr noundef nonnull %2581, i32 noundef %2455)
  br label %2820

2583:                                             ; preds = %2439
  %2584 = icmp sgt i32 %2449, 0
  br i1 %2584, label %2585, label %2820

2585:                                             ; preds = %2583, %2813
  %2586 = phi i64 [ %2818, %2813 ], [ %2438, %2583 ]
  %2587 = phi i32 [ %2817, %2813 ], [ %2441, %2583 ]
  %2588 = phi i32 [ %2816, %2813 ], [ %2442, %2583 ]
  %2589 = phi i32 [ %2815, %2813 ], [ %2443, %2583 ]
  %2590 = phi i32 [ %2814, %2813 ], [ %2444, %2583 ]
  %2591 = load ptr, ptr %940, align 8, !tbaa !71
  %2592 = getelementptr inbounds %struct.eqn_d, ptr %2591, i64 %2586
  %2593 = getelementptr inbounds %struct.eqn_d, ptr %2591, i64 %2586, i32 3
  %2594 = load ptr, ptr %2593, align 8, !tbaa !56
  %2595 = getelementptr inbounds i32, ptr %2594, i64 %2434
  %2596 = load i32, ptr %2595, align 4, !tbaa !50
  %2597 = icmp slt i32 %2596, 0
  br i1 %2597, label %2598, label %2813

2598:                                             ; preds = %2585
  %2599 = getelementptr inbounds %struct.eqn_d, ptr %2591, i64 %2440
  %2600 = load i32, ptr %2599, align 8, !tbaa !59
  %2601 = load i32, ptr %2592, align 8, !tbaa !59
  %2602 = sub nsw i32 0, %2601
  %2603 = icmp eq i32 %2600, %2602
  br i1 %2603, label %2813, label %2604

2604:                                             ; preds = %2598
  %2605 = sub nsw i32 0, %2596
  %2606 = getelementptr inbounds i32, ptr %2594, i64 1
  %2607 = load i32, ptr %2606, align 4, !tbaa !50
  %2608 = mul nsw i32 %2607, %2449
  %2609 = getelementptr inbounds %struct.eqn_d, ptr %2591, i64 %2440, i32 3
  %2610 = load ptr, ptr %2609, align 8, !tbaa !56
  %2611 = getelementptr inbounds i32, ptr %2610, i64 1
  %2612 = load i32, ptr %2611, align 4, !tbaa !50
  %2613 = mul nsw i32 %2612, %2605
  %2614 = add nsw i32 %2613, %2608
  %2615 = load i32, ptr %2594, align 4, !tbaa !50
  %2616 = mul nsw i32 %2615, %2449
  %2617 = load i32, ptr %2610, align 4, !tbaa !50
  %2618 = mul nsw i32 %2617, %2605
  %2619 = add nsw i32 %2618, %2616
  %2620 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2621 = icmp eq ptr %2620, null
  br i1 %2621, label %2634, label %2622

2622:                                             ; preds = %2604
  %2623 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2624 = and i32 %2623, 8
  %2625 = icmp eq i32 %2624, 0
  br i1 %2625, label %2634, label %2626

2626:                                             ; preds = %2622
  tail call void @omega_print_eqn(ptr noundef nonnull %2620, ptr noundef %0, ptr noundef nonnull %2592, i8 noundef zeroext 1, i32 noundef 1)
  %2627 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2628 = tail call i32 @fputc(i32 10, ptr %2627)
  %2629 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2630 = load ptr, ptr %940, align 8, !tbaa !71
  %2631 = getelementptr inbounds %struct.eqn_d, ptr %2630, i64 %2440
  tail call void @omega_print_eqn(ptr noundef %2629, ptr noundef %0, ptr noundef %2631, i8 noundef zeroext 1, i32 noundef 1)
  %2632 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2633 = tail call i32 @fputc(i32 10, ptr %2632)
  br label %2634

2634:                                             ; preds = %2626, %2622, %2604
  %2635 = icmp sgt i32 %2614, 0
  br i1 %2635, label %2636, label %2725

2636:                                             ; preds = %2634
  %2637 = icmp sgt i32 %2619, 0
  br i1 %2637, label %2638, label %2640

2638:                                             ; preds = %2636
  %2639 = udiv i32 %2619, %2614
  br label %2645

2640:                                             ; preds = %2636
  %2641 = xor i32 %2619, -1
  %2642 = add i32 %2614, %2641
  %2643 = sdiv i32 %2642, %2614
  %2644 = sub nsw i32 0, %2643
  br label %2645

2645:                                             ; preds = %2638, %2640
  %2646 = phi i32 [ %2639, %2638 ], [ %2644, %2640 ]
  %2647 = sub nsw i32 0, %2646
  %2648 = icmp slt i32 %2589, %2647
  br i1 %2648, label %2661, label %2649

2649:                                             ; preds = %2645
  %2650 = icmp eq i32 %2589, %2647
  br i1 %2650, label %2651, label %2673

2651:                                             ; preds = %2649
  br i1 %11, label %2652, label %2661

2652:                                             ; preds = %2651
  %2653 = load ptr, ptr %940, align 8, !tbaa !71
  %2654 = getelementptr inbounds %struct.eqn_d, ptr %2653, i64 %2586, i32 2
  %2655 = load i32, ptr %2654, align 8, !tbaa !60
  %2656 = icmp eq i32 %2655, 0
  br i1 %2656, label %2657, label %2673

2657:                                             ; preds = %2652
  %2658 = getelementptr inbounds %struct.eqn_d, ptr %2653, i64 %2440, i32 2
  %2659 = load i32, ptr %2658, align 8, !tbaa !60
  %2660 = icmp eq i32 %2659, 0
  br i1 %2660, label %2661, label %2673

2661:                                             ; preds = %2657, %2651, %2645
  %2662 = load ptr, ptr %940, align 8, !tbaa !71
  %2663 = getelementptr inbounds %struct.eqn_d, ptr %2662, i64 %2586, i32 2
  %2664 = load i32, ptr %2663, align 8, !tbaa !60
  %2665 = icmp eq i32 %2664, 1
  br i1 %2665, label %2670, label %2666

2666:                                             ; preds = %2661
  %2667 = getelementptr inbounds %struct.eqn_d, ptr %2662, i64 %2440, i32 2
  %2668 = load i32, ptr %2667, align 8, !tbaa !60
  %2669 = icmp eq i32 %2668, 1
  br label %2670

2670:                                             ; preds = %2666, %2661
  %2671 = phi i1 [ true, %2661 ], [ %2669, %2666 ]
  %2672 = zext i1 %2671 to i32
  br label %2673

2673:                                             ; preds = %2670, %2657, %2652, %2649
  %2674 = phi i32 [ %2647, %2670 ], [ %2589, %2657 ], [ %2589, %2652 ], [ %2589, %2649 ]
  %2675 = phi i32 [ %2672, %2670 ], [ %2587, %2657 ], [ %2587, %2652 ], [ %2587, %2649 ]
  %2676 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2677 = icmp eq ptr %2676, null
  br i1 %2677, label %2813, label %2678

2678:                                             ; preds = %2673
  %2679 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2680 = and i32 %2679, 8
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2813, label %2682

2682:                                             ; preds = %2678
  %2683 = load ptr, ptr %940, align 8, !tbaa !71
  %2684 = getelementptr inbounds %struct.eqn_d, ptr %2683, i64 %2586, i32 2
  %2685 = load i32, ptr %2684, align 8, !tbaa !60
  %2686 = icmp eq i32 %2685, 1
  br i1 %2686, label %2691, label %2687

2687:                                             ; preds = %2682
  %2688 = getelementptr inbounds %struct.eqn_d, ptr %2683, i64 %2440, i32 2
  %2689 = load i32, ptr %2688, align 8, !tbaa !60
  %2690 = icmp eq i32 %2689, 1
  br i1 %2690, label %2691, label %2708

2691:                                             ; preds = %2687, %2682
  %2692 = load ptr, ptr %944, align 8, !tbaa !61
  %2693 = getelementptr inbounds i32, ptr %2692, i64 1
  %2694 = load i32, ptr %2693, align 4, !tbaa !50
  %2695 = icmp ult i32 %2694, 21
  br i1 %2695, label %2696, label %2699

2696:                                             ; preds = %2691
  %2697 = zext nneg i32 %2694 to i64
  %2698 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2697
  br label %2705

2699:                                             ; preds = %2691
  %2700 = icmp ugt i32 %2694, -20
  br i1 %2700, label %2701, label %2705

2701:                                             ; preds = %2699
  %2702 = add nsw i32 %2694, 40
  %2703 = zext nneg i32 %2702 to i64
  %2704 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2703
  br label %2705

2705:                                             ; preds = %2696, %2699, %2701
  %2706 = phi ptr [ %2698, %2696 ], [ %2704, %2701 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2699 ]
  %2707 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2676, ptr noundef nonnull @.str.153, ptr noundef nonnull %2706, i32 noundef %2647)
  br label %2813

2708:                                             ; preds = %2687
  %2709 = load ptr, ptr %943, align 8, !tbaa !61
  %2710 = getelementptr inbounds i32, ptr %2709, i64 1
  %2711 = load i32, ptr %2710, align 4, !tbaa !50
  %2712 = icmp ult i32 %2711, 21
  br i1 %2712, label %2713, label %2716

2713:                                             ; preds = %2708
  %2714 = zext nneg i32 %2711 to i64
  %2715 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2714
  br label %2722

2716:                                             ; preds = %2708
  %2717 = icmp ugt i32 %2711, -20
  br i1 %2717, label %2718, label %2722

2718:                                             ; preds = %2716
  %2719 = add nsw i32 %2711, 40
  %2720 = zext nneg i32 %2719 to i64
  %2721 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2720
  br label %2722

2722:                                             ; preds = %2713, %2716, %2718
  %2723 = phi ptr [ %2715, %2713 ], [ %2721, %2718 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2716 ]
  %2724 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2676, ptr noundef nonnull @.str.154, ptr noundef nonnull %2723, i32 noundef %2647)
  br label %2813

2725:                                             ; preds = %2634
  %2726 = sub nsw i32 0, %2614
  %2727 = icmp sgt i32 %2619, 0
  br i1 %2727, label %2728, label %2730

2728:                                             ; preds = %2725
  %2729 = sdiv i32 %2619, %2726
  br label %2735

2730:                                             ; preds = %2725
  %2731 = xor i32 %2619, -1
  %2732 = sub i32 %2731, %2614
  %2733 = sdiv i32 %2732, %2726
  %2734 = sub nsw i32 0, %2733
  br label %2735

2735:                                             ; preds = %2728, %2730
  %2736 = phi i32 [ %2729, %2728 ], [ %2734, %2730 ]
  %2737 = icmp slt i32 %2736, %2590
  br i1 %2737, label %2749, label %2738

2738:                                             ; preds = %2735
  %2739 = icmp eq i32 %2736, %2590
  br i1 %2739, label %2740, label %2761

2740:                                             ; preds = %2738
  %2741 = load ptr, ptr %940, align 8, !tbaa !71
  %2742 = getelementptr inbounds %struct.eqn_d, ptr %2741, i64 %2586, i32 2
  %2743 = load i32, ptr %2742, align 8, !tbaa !60
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %2745, label %2761

2745:                                             ; preds = %2740
  %2746 = getelementptr inbounds %struct.eqn_d, ptr %2741, i64 %2440, i32 2
  %2747 = load i32, ptr %2746, align 8, !tbaa !60
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2749, label %2761

2749:                                             ; preds = %2745, %2735
  %2750 = load ptr, ptr %940, align 8, !tbaa !71
  %2751 = getelementptr inbounds %struct.eqn_d, ptr %2750, i64 %2586, i32 2
  %2752 = load i32, ptr %2751, align 8, !tbaa !60
  %2753 = icmp eq i32 %2752, 1
  br i1 %2753, label %2758, label %2754

2754:                                             ; preds = %2749
  %2755 = getelementptr inbounds %struct.eqn_d, ptr %2750, i64 %2440, i32 2
  %2756 = load i32, ptr %2755, align 8, !tbaa !60
  %2757 = icmp eq i32 %2756, 1
  br label %2758

2758:                                             ; preds = %2754, %2749
  %2759 = phi i1 [ true, %2749 ], [ %2757, %2754 ]
  %2760 = zext i1 %2759 to i32
  br label %2761

2761:                                             ; preds = %2758, %2745, %2740, %2738
  %2762 = phi i32 [ %2736, %2758 ], [ %2590, %2745 ], [ %2590, %2740 ], [ %2590, %2738 ]
  %2763 = phi i32 [ %2760, %2758 ], [ %2588, %2745 ], [ %2588, %2740 ], [ %2588, %2738 ]
  %2764 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2765 = icmp eq ptr %2764, null
  br i1 %2765, label %2813, label %2766

2766:                                             ; preds = %2761
  %2767 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2768 = and i32 %2767, 8
  %2769 = icmp eq i32 %2768, 0
  br i1 %2769, label %2813, label %2770

2770:                                             ; preds = %2766
  %2771 = load ptr, ptr %940, align 8, !tbaa !71
  %2772 = getelementptr inbounds %struct.eqn_d, ptr %2771, i64 %2586, i32 2
  %2773 = load i32, ptr %2772, align 8, !tbaa !60
  %2774 = icmp eq i32 %2773, 1
  br i1 %2774, label %2779, label %2775

2775:                                             ; preds = %2770
  %2776 = getelementptr inbounds %struct.eqn_d, ptr %2771, i64 %2440, i32 2
  %2777 = load i32, ptr %2776, align 8, !tbaa !60
  %2778 = icmp eq i32 %2777, 1
  br i1 %2778, label %2779, label %2796

2779:                                             ; preds = %2775, %2770
  %2780 = load ptr, ptr %942, align 8, !tbaa !61
  %2781 = getelementptr inbounds i32, ptr %2780, i64 1
  %2782 = load i32, ptr %2781, align 4, !tbaa !50
  %2783 = icmp ult i32 %2782, 21
  br i1 %2783, label %2784, label %2787

2784:                                             ; preds = %2779
  %2785 = zext nneg i32 %2782 to i64
  %2786 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2785
  br label %2793

2787:                                             ; preds = %2779
  %2788 = icmp ugt i32 %2782, -20
  br i1 %2788, label %2789, label %2793

2789:                                             ; preds = %2787
  %2790 = add nsw i32 %2782, 40
  %2791 = zext nneg i32 %2790 to i64
  %2792 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2791
  br label %2793

2793:                                             ; preds = %2784, %2787, %2789
  %2794 = phi ptr [ %2786, %2784 ], [ %2792, %2789 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2787 ]
  %2795 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2764, ptr noundef nonnull @.str.155, ptr noundef nonnull %2794, i32 noundef %2736)
  br label %2813

2796:                                             ; preds = %2775
  %2797 = load ptr, ptr %941, align 8, !tbaa !61
  %2798 = getelementptr inbounds i32, ptr %2797, i64 1
  %2799 = load i32, ptr %2798, align 4, !tbaa !50
  %2800 = icmp ult i32 %2799, 21
  br i1 %2800, label %2801, label %2804

2801:                                             ; preds = %2796
  %2802 = zext nneg i32 %2799 to i64
  %2803 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2802
  br label %2810

2804:                                             ; preds = %2796
  %2805 = icmp ugt i32 %2799, -20
  br i1 %2805, label %2806, label %2810

2806:                                             ; preds = %2804
  %2807 = add nsw i32 %2799, 40
  %2808 = zext nneg i32 %2807 to i64
  %2809 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2808
  br label %2810

2810:                                             ; preds = %2801, %2804, %2806
  %2811 = phi ptr [ %2803, %2801 ], [ %2809, %2806 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2804 ]
  %2812 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2764, ptr noundef nonnull @.str.156, ptr noundef nonnull %2811, i32 noundef %2736)
  br label %2813

2813:                                             ; preds = %2810, %2793, %2766, %2761, %2722, %2705, %2678, %2673, %2598, %2585
  %2814 = phi i32 [ %2590, %2598 ], [ %2590, %2585 ], [ %2590, %2705 ], [ %2590, %2722 ], [ %2590, %2678 ], [ %2590, %2673 ], [ %2762, %2793 ], [ %2762, %2810 ], [ %2762, %2766 ], [ %2762, %2761 ]
  %2815 = phi i32 [ %2589, %2598 ], [ %2589, %2585 ], [ %2674, %2705 ], [ %2674, %2722 ], [ %2674, %2678 ], [ %2674, %2673 ], [ %2589, %2793 ], [ %2589, %2810 ], [ %2589, %2766 ], [ %2589, %2761 ]
  %2816 = phi i32 [ %2588, %2598 ], [ %2588, %2585 ], [ %2588, %2705 ], [ %2588, %2722 ], [ %2588, %2678 ], [ %2588, %2673 ], [ %2763, %2793 ], [ %2763, %2810 ], [ %2763, %2766 ], [ %2763, %2761 ]
  %2817 = phi i32 [ %2587, %2598 ], [ %2587, %2585 ], [ %2675, %2705 ], [ %2675, %2722 ], [ %2675, %2678 ], [ %2675, %2673 ], [ %2587, %2793 ], [ %2587, %2810 ], [ %2587, %2766 ], [ %2587, %2761 ]
  %2818 = add nsw i64 %2586, -1
  %2819 = icmp sgt i64 %2586, 0
  br i1 %2819, label %2585, label %2820, !llvm.loop !170

2820:                                             ; preds = %2813, %2583, %2580, %2563, %2541, %2536, %2517, %2500, %2478, %2473
  %2821 = phi i32 [ %2444, %2500 ], [ %2444, %2517 ], [ %2444, %2478 ], [ %2444, %2473 ], [ %2537, %2563 ], [ %2537, %2580 ], [ %2537, %2541 ], [ %2537, %2536 ], [ %2444, %2583 ], [ %2814, %2813 ]
  %2822 = phi i32 [ %2474, %2500 ], [ %2474, %2517 ], [ %2474, %2478 ], [ %2474, %2473 ], [ %2443, %2563 ], [ %2443, %2580 ], [ %2443, %2541 ], [ %2443, %2536 ], [ %2443, %2583 ], [ %2815, %2813 ]
  %2823 = phi i32 [ %2442, %2500 ], [ %2442, %2517 ], [ %2442, %2478 ], [ %2442, %2473 ], [ %2538, %2563 ], [ %2538, %2580 ], [ %2538, %2541 ], [ %2538, %2536 ], [ %2442, %2583 ], [ %2816, %2813 ]
  %2824 = phi i32 [ %2475, %2500 ], [ %2475, %2517 ], [ %2475, %2478 ], [ %2475, %2473 ], [ %2441, %2563 ], [ %2441, %2580 ], [ %2441, %2541 ], [ %2441, %2536 ], [ %2441, %2583 ], [ %2817, %2813 ]
  %2825 = add nsw i64 %2440, -1
  %2826 = icmp sgt i64 %2440, 0
  br i1 %2826, label %2439, label %2827, !llvm.loop !171

2827:                                             ; preds = %2820, %2432
  %2828 = phi i32 [ 134217727, %2432 ], [ %2821, %2820 ]
  %2829 = phi i32 [ -134217727, %2432 ], [ %2822, %2820 ]
  %2830 = phi i32 [ 0, %2432 ], [ %2823, %2820 ]
  %2831 = phi i32 [ 0, %2432 ], [ %2824, %2820 ]
  store i32 0, ptr %927, align 4, !tbaa !70
  %2832 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2833 = icmp eq ptr %2832, null
  br i1 %2833, label %2865, label %2834

2834:                                             ; preds = %2827
  %2835 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2836 = and i32 %2835, 8
  %2837 = icmp eq i32 %2836, 0
  br i1 %2837, label %2865, label %2838

2838:                                             ; preds = %2834
  %2839 = icmp eq i32 %2831, 1
  %2840 = select i1 %2839, i32 91, i32 32
  %2841 = icmp eq i32 %2830, 0
  %2842 = select i1 %2839, i1 %2841, i1 false
  %2843 = select i1 %2842, i32 93, i32 32
  %2844 = load ptr, ptr %949, align 8, !tbaa !61
  %2845 = getelementptr inbounds i32, ptr %2844, i64 1
  %2846 = load i32, ptr %2845, align 4, !tbaa !50
  %2847 = icmp ult i32 %2846, 21
  br i1 %2847, label %2848, label %2851

2848:                                             ; preds = %2838
  %2849 = zext nneg i32 %2846 to i64
  %2850 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2849
  br label %2857

2851:                                             ; preds = %2838
  %2852 = icmp ugt i32 %2846, -20
  br i1 %2852, label %2853, label %2857

2853:                                             ; preds = %2851
  %2854 = add nsw i32 %2846, 40
  %2855 = zext nneg i32 %2854 to i64
  %2856 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %2855
  br label %2857

2857:                                             ; preds = %2848, %2851, %2853
  %2858 = phi ptr [ %2850, %2848 ], [ %2856, %2853 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %2851 ]
  %2859 = icmp eq i32 %2831, 0
  %2860 = icmp eq i32 %2830, 1
  %2861 = and i1 %2860, %2859
  %2862 = select i1 %2861, i32 91, i32 32
  %2863 = select i1 %2860, i32 93, i32 32
  %2864 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2832, ptr noundef nonnull @.str.157, i32 noundef %2840, i32 noundef %2829, i32 noundef %2843, ptr noundef nonnull %2858, i32 noundef %2862, i32 noundef %2828, i32 noundef %2863)
  br label %2865

2865:                                             ; preds = %2857, %2834, %2827
  %2866 = icmp sgt i32 %2829, %2828
  br i1 %2866, label %3392, label %2867

2867:                                             ; preds = %2865
  %2868 = load i32, ptr %4, align 4, !tbaa !76
  %2869 = icmp eq i32 %2868, 1
  br i1 %2869, label %2870, label %2924

2870:                                             ; preds = %2867
  %2871 = icmp ne i32 %2828, %2829
  %2872 = icmp eq i32 %2830, 1
  %2873 = select i1 %2871, i1 true, i1 %2872
  %2874 = icmp eq i32 %2831, 1
  %2875 = select i1 %2873, i1 true, i1 %2874
  %2876 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4
  %2877 = icmp ne i32 %2876, 0
  %2878 = select i1 %2875, i1 true, i1 %2877
  br i1 %2878, label %2893, label %2879

2879:                                             ; preds = %2870
  %2880 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %2881 = load i32, ptr %164, align 8, !tbaa !67
  %2882 = add nsw i32 %2881, 1
  store i32 %2882, ptr %164, align 8, !tbaa !67
  %2883 = load ptr, ptr %2880, align 8, !tbaa !68
  %2884 = getelementptr inbounds %struct.eqn_d, ptr %2883, i64 0, i32 3
  %2885 = load ptr, ptr %2884, align 8, !tbaa !56
  %2886 = getelementptr inbounds i32, ptr %2885, i64 1
  store i32 -1, ptr %2886, align 4, !tbaa !50
  store i32 %2828, ptr %2885, align 4, !tbaa !50
  br i1 %11, label %2887, label %2893

2887:                                             ; preds = %2879
  %2888 = getelementptr inbounds %struct.eqn_d, ptr %2883, i64 0, i32 2
  %2889 = load i32, ptr %2888, align 8, !tbaa !60
  %2890 = icmp eq i32 %2889, 0
  br i1 %2890, label %2891, label %2893

2891:                                             ; preds = %2887
  %2892 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 3)
  br label %3392

2893:                                             ; preds = %2887, %2879, %2870
  %2894 = icmp eq i32 %2828, 134217727
  br i1 %2894, label %2904, label %2895

2895:                                             ; preds = %2893
  %2896 = load ptr, ptr %940, align 8, !tbaa !71
  %2897 = getelementptr inbounds %struct.eqn_d, ptr %2896, i64 0, i32 3
  %2898 = load ptr, ptr %2897, align 8, !tbaa !56
  %2899 = getelementptr inbounds i32, ptr %2898, i64 1
  store i32 -1, ptr %2899, align 4, !tbaa !50
  store i32 %2828, ptr %2898, align 4, !tbaa !50
  %2900 = getelementptr inbounds %struct.eqn_d, ptr %2896, i64 0, i32 2
  store i32 %2830, ptr %2900, align 8, !tbaa !60
  store i32 -1, ptr %2896, align 8, !tbaa !59
  %2901 = getelementptr inbounds %struct.eqn_d, ptr %2896, i64 0, i32 1
  store i32 0, ptr %2901, align 4, !tbaa !58
  %2902 = load i32, ptr %927, align 4, !tbaa !70
  %2903 = add nsw i32 %2902, 1
  store i32 %2903, ptr %927, align 4, !tbaa !70
  br label %2904

2904:                                             ; preds = %2895, %2893
  %2905 = icmp eq i32 %2829, -134217727
  br i1 %2905, label %2924, label %2906

2906:                                             ; preds = %2904
  %2907 = load ptr, ptr %940, align 8, !tbaa !71
  %2908 = load i32, ptr %927, align 4, !tbaa !70
  %2909 = sext i32 %2908 to i64
  %2910 = getelementptr inbounds %struct.eqn_d, ptr %2907, i64 %2909, i32 3
  %2911 = load ptr, ptr %2910, align 8, !tbaa !56
  %2912 = getelementptr inbounds i32, ptr %2911, i64 1
  store i32 1, ptr %2912, align 4, !tbaa !50
  %2913 = sub nsw i32 0, %2829
  %2914 = load i32, ptr %927, align 4, !tbaa !70
  %2915 = sext i32 %2914 to i64
  %2916 = getelementptr inbounds %struct.eqn_d, ptr %2907, i64 %2915, i32 3
  %2917 = load ptr, ptr %2916, align 8, !tbaa !56
  store i32 %2913, ptr %2917, align 4, !tbaa !50
  %2918 = load i32, ptr %927, align 4, !tbaa !70
  %2919 = sext i32 %2918 to i64
  %2920 = getelementptr inbounds %struct.eqn_d, ptr %2907, i64 %2919, i32 2
  store i32 %2831, ptr %2920, align 8, !tbaa !60
  %2921 = getelementptr inbounds %struct.eqn_d, ptr %2907, i64 %2919
  store i32 1, ptr %2921, align 8, !tbaa !59
  %2922 = getelementptr inbounds %struct.eqn_d, ptr %2907, i64 %2919, i32 1
  store i32 0, ptr %2922, align 4, !tbaa !58
  %2923 = add nsw i32 %2918, 1
  store i32 %2923, ptr %927, align 4, !tbaa !70
  br label %2924

2924:                                             ; preds = %2906, %2904, %2867
  br i1 %11, label %2925, label %2926

2925:                                             ; preds = %2924
  tail call fastcc void @omega_problem_reduced(ptr noundef nonnull %0)
  br label %3392

2926:                                             ; preds = %2924
  %2927 = load i32, ptr @conservative, align 4, !tbaa !50
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %2929, label %3392

2929:                                             ; preds = %2926
  %2930 = load ptr, ptr @original_problem, align 8, !tbaa !35
  %2931 = icmp ne ptr %2930, null
  %2932 = icmp eq i32 %2829, %2828
  %2933 = select i1 %2931, i1 %2932, i1 false
  br i1 %2933, label %2934, label %3392

2934:                                             ; preds = %2929
  %2935 = load i32, ptr %2930, align 8, !tbaa !54
  %2936 = icmp sgt i32 %2935, -1
  br i1 %2936, label %2937, label %2953

2937:                                             ; preds = %2934
  %2938 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %2939 = getelementptr inbounds %struct.omega_pb_d, ptr %2930, i64 0, i32 8
  %2940 = load ptr, ptr %2939, align 8, !tbaa !61
  %2941 = load ptr, ptr %2938, align 8, !tbaa !61
  %2942 = getelementptr inbounds i32, ptr %2941, i64 1
  %2943 = load i32, ptr %2942, align 4, !tbaa !50
  br label %2944

2944:                                             ; preds = %2937, %2950
  %2945 = phi i32 [ %2935, %2937 ], [ %2951, %2950 ]
  %2946 = zext nneg i32 %2945 to i64
  %2947 = getelementptr inbounds i32, ptr %2940, i64 %2946
  %2948 = load i32, ptr %2947, align 4, !tbaa !50
  %2949 = icmp eq i32 %2948, %2943
  br i1 %2949, label %2953, label %2950

2950:                                             ; preds = %2944
  %2951 = add nsw i32 %2945, -1
  %2952 = icmp sgt i32 %2945, 0
  br i1 %2952, label %2944, label %2953, !llvm.loop !172

2953:                                             ; preds = %2950, %2944, %2934
  %2954 = phi i32 [ %2935, %2934 ], [ -1, %2950 ], [ %2945, %2944 ]
  %2955 = icmp eq i32 %2954, 0
  br i1 %2955, label %3392, label %2956

2956:                                             ; preds = %2953
  %2957 = getelementptr inbounds %struct.omega_pb_d, ptr %2930, i64 0, i32 2
  %2958 = load i32, ptr %2957, align 8, !tbaa !67
  %2959 = add nsw i32 %2958, 1
  store i32 %2959, ptr %2957, align 8, !tbaa !67
  %2960 = getelementptr inbounds %struct.omega_pb_d, ptr %2930, i64 0, i32 11
  %2961 = load ptr, ptr %2960, align 8, !tbaa !68
  %2962 = sext i32 %2958 to i64
  %2963 = getelementptr inbounds %struct.eqn_d, ptr %2961, i64 %2962
  store i32 0, ptr %2963, align 8, !tbaa !59
  %2964 = getelementptr inbounds %struct.eqn_d, ptr %2961, i64 %2962, i32 1
  store i32 0, ptr %2964, align 4, !tbaa !58
  %2965 = getelementptr inbounds %struct.eqn_d, ptr %2961, i64 %2962, i32 2
  store i32 0, ptr %2965, align 8, !tbaa !60
  %2966 = getelementptr inbounds %struct.eqn_d, ptr %2961, i64 %2962, i32 3
  %2967 = load ptr, ptr %2966, align 8, !tbaa !56
  %2968 = add nsw i32 %2935, 1
  %2969 = sext i32 %2968 to i64
  %2970 = shl nsw i64 %2969, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2967, i8 0, i64 %2970, i1 false)
  %2971 = load ptr, ptr %2960, align 8, !tbaa !68
  %2972 = getelementptr inbounds %struct.eqn_d, ptr %2971, i64 %2962, i32 3
  %2973 = load ptr, ptr %2972, align 8, !tbaa !56
  %2974 = sext i32 %2954 to i64
  %2975 = getelementptr inbounds i32, ptr %2973, i64 %2974
  store i32 -1, ptr %2975, align 4, !tbaa !50
  store i32 %2828, ptr %2973, align 4, !tbaa !50
  %2976 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2977 = icmp eq ptr %2976, null
  br i1 %2977, label %3392, label %2978

2978:                                             ; preds = %2956
  %2979 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %2980 = and i32 %2979, 8
  %2981 = icmp eq i32 %2980, 0
  br i1 %2981, label %3392, label %2982

2982:                                             ; preds = %2978
  %2983 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2976, ptr noundef nonnull @.str.158, i32 noundef %2958)
  %2984 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2985 = load ptr, ptr @original_problem, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %2984, ptr noundef %2985)
  br label %3392

2986:                                             ; preds = %2427
  %2987 = icmp eq i32 %2250, 1
  br i1 %2987, label %2988, label %3137

2988:                                             ; preds = %2986
  %2989 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %2990 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #22
  %2991 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %2992 = getelementptr inbounds %struct.param_info, ptr %2991, i64 64, i32 1
  %2993 = load i32, ptr %2992, align 8, !tbaa !87
  %2994 = add nsw i32 %2993, 1
  %2995 = sext i32 %2994 to i64
  %2996 = tail call ptr @xcalloc(i64 noundef %2995, i64 noundef 4) #22
  %2997 = getelementptr inbounds %struct.eqn_d, ptr %2990, i64 0, i32 3
  store ptr %2996, ptr %2997, align 8, !tbaa !56
  store i32 0, ptr %2990, align 8, !tbaa !59
  %2998 = getelementptr inbounds %struct.eqn_d, ptr %2990, i64 0, i32 1
  store i32 0, ptr %2998, align 4, !tbaa !58
  %2999 = getelementptr inbounds %struct.eqn_d, ptr %2990, i64 0, i32 2
  store i32 0, ptr %2999, align 8, !tbaa !60
  store i32 0, ptr %2996, align 4
  %3000 = load ptr, ptr %2989, align 8, !tbaa !71
  %3001 = zext nneg i32 %2249 to i64
  %3002 = getelementptr inbounds %struct.eqn_d, ptr %3000, i64 %3001, i32 3
  %3003 = load ptr, ptr %3002, align 8, !tbaa !56
  %3004 = sext i32 %2428 to i64
  %3005 = getelementptr inbounds i32, ptr %3003, i64 %3004
  %3006 = load i32, ptr %3005, align 4, !tbaa !50
  %3007 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3008 = icmp eq ptr %3007, null
  br i1 %3008, label %3015, label %3009

3009:                                             ; preds = %2988
  %3010 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %3011 = and i32 %3010, 8
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3015, label %3013

3013:                                             ; preds = %3009
  %3014 = tail call i64 @fwrite(ptr nonnull @.str.159, i64 23, i64 1, ptr nonnull %3007)
  br label %3015

3015:                                             ; preds = %3013, %3009, %2988
  %3016 = load ptr, ptr %2989, align 8, !tbaa !71
  %3017 = getelementptr inbounds %struct.eqn_d, ptr %3016, i64 %3001
  %3018 = load i32, ptr %3017, align 8, !tbaa !59
  store i32 %3018, ptr %2990, align 8, !tbaa !59
  %3019 = getelementptr inbounds %struct.eqn_d, ptr %3016, i64 %3001, i32 1
  %3020 = load i32, ptr %3019, align 4, !tbaa !58
  %3021 = getelementptr inbounds %struct.eqn_d, ptr %2990, i64 0, i32 1
  store i32 %3020, ptr %3021, align 4, !tbaa !58
  %3022 = getelementptr inbounds %struct.eqn_d, ptr %3016, i64 %3001, i32 2
  %3023 = load i32, ptr %3022, align 8, !tbaa !60
  %3024 = getelementptr inbounds %struct.eqn_d, ptr %2990, i64 0, i32 2
  store i32 %3023, ptr %3024, align 8, !tbaa !60
  %3025 = getelementptr inbounds %struct.eqn_d, ptr %2990, i64 0, i32 3
  %3026 = load ptr, ptr %3025, align 8, !tbaa !56
  %3027 = getelementptr inbounds %struct.eqn_d, ptr %3016, i64 %3001, i32 3
  %3028 = load ptr, ptr %3027, align 8, !tbaa !56
  %3029 = add nsw i32 %2429, 1
  %3030 = sext i32 %3029 to i64
  %3031 = shl nsw i64 %3030, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3026, ptr align 4 %3028, i64 %3031, i1 false)
  tail call fastcc void @omega_delete_geq_extra(ptr noundef nonnull %0, i32 noundef %2249, i32 noundef %2429)
  %3032 = load i32, ptr %927, align 4, !tbaa !70
  %3033 = icmp sgt i32 %3032, 0
  br i1 %3033, label %3034, label %3134

3034:                                             ; preds = %3015
  %3035 = icmp sgt i32 %2429, 0
  %3036 = icmp sgt i32 %3006, -1
  %3037 = sub nsw i32 0, %3006
  %3038 = icmp sgt i32 %3006, -1
  %3039 = sub nsw i32 0, %3006
  %3040 = zext nneg i32 %3032 to i64
  %3041 = zext nneg i32 %2429 to i64
  br label %3042

3042:                                             ; preds = %3034, %3131
  %3043 = phi i64 [ %3040, %3034 ], [ %3045, %3131 ]
  %3044 = phi i8 [ 1, %3034 ], [ %3132, %3131 ]
  %3045 = add nsw i64 %3043, -1
  %3046 = load ptr, ptr %2989, align 8, !tbaa !71
  %3047 = getelementptr inbounds %struct.eqn_d, ptr %3046, i64 %3045, i32 3
  %3048 = load ptr, ptr %3047, align 8, !tbaa !56
  %3049 = getelementptr inbounds i32, ptr %3048, i64 %3004
  %3050 = load i32, ptr %3049, align 4, !tbaa !50
  %3051 = icmp slt i32 %3050, 0
  br i1 %3051, label %3052, label %3131

3052:                                             ; preds = %3042
  %3053 = getelementptr inbounds %struct.eqn_d, ptr %3046, i64 %3045
  %3054 = load i32, ptr %2990, align 8, !tbaa !59
  %3055 = load i32, ptr %3053, align 8, !tbaa !59
  %3056 = sub nsw i32 0, %3055
  %3057 = icmp eq i32 %3054, %3056
  br i1 %3057, label %3058, label %3060

3058:                                             ; preds = %3052
  %3059 = trunc i64 %3045 to i32
  tail call fastcc void @omega_delete_geq_extra(ptr noundef nonnull %0, i32 noundef %3059, i32 noundef %2429)
  br label %3131

3060:                                             ; preds = %3052
  %3061 = sub nsw i32 0, %3050
  %3062 = getelementptr inbounds %struct.eqn_d, ptr %3046, i64 %3045, i32 1
  store i32 1, ptr %3062, align 4, !tbaa !58
  %3063 = load i32, ptr %3024, align 8, !tbaa !60
  %3064 = icmp eq i32 %3063, 1
  br i1 %3064, label %3065, label %3067

3065:                                             ; preds = %3060
  %3066 = getelementptr inbounds %struct.eqn_d, ptr %3046, i64 %3045, i32 2
  store i32 1, ptr %3066, align 8, !tbaa !60
  br label %3067

3067:                                             ; preds = %3065, %3060
  br i1 %3035, label %3068, label %3119

3068:                                             ; preds = %3067, %3110
  %3069 = phi i64 [ %3117, %3110 ], [ 0, %3067 ]
  %3070 = load ptr, ptr %2989, align 8, !tbaa !71
  %3071 = getelementptr inbounds %struct.eqn_d, ptr %3070, i64 %3045, i32 3
  %3072 = load ptr, ptr %3071, align 8, !tbaa !56
  %3073 = getelementptr inbounds i32, ptr %3072, i64 %3069
  %3074 = load i32, ptr %3073, align 4, !tbaa !50
  %3075 = icmp sgt i32 %3074, -1
  br i1 %3075, label %3076, label %3086

3076:                                             ; preds = %3068
  %3077 = icmp eq i32 %3074, 0
  br i1 %3038, label %3078, label %3082

3078:                                             ; preds = %3076
  br i1 %3077, label %3094, label %3079

3079:                                             ; preds = %3078
  %3080 = udiv i32 2147483647, %3074
  %3081 = icmp sgt i32 %3080, %3006
  br i1 %3081, label %3094, label %3093

3082:                                             ; preds = %3076
  br i1 %3077, label %3094, label %3083

3083:                                             ; preds = %3082
  %3084 = udiv i32 2147483647, %3074
  %3085 = icmp sgt i32 %3084, %3039
  br i1 %3085, label %3094, label %3093

3086:                                             ; preds = %3068
  %3087 = sub nsw i32 0, %3074
  %3088 = udiv i32 2147483647, %3087
  br i1 %3036, label %3089, label %3091

3089:                                             ; preds = %3086
  %3090 = icmp sgt i32 %3088, %3006
  br i1 %3090, label %3094, label %3093

3091:                                             ; preds = %3086
  %3092 = icmp sgt i32 %3088, %3037
  br i1 %3092, label %3094, label %3093

3093:                                             ; preds = %3091, %3089, %3083, %3079
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 123, ptr noundef nonnull @.str.21) #22
  br label %3094

3094:                                             ; preds = %3093, %3091, %3089, %3082, %3083, %3078, %3079
  %3095 = mul nsw i32 %3074, %3006
  %3096 = load ptr, ptr %3025, align 8, !tbaa !56
  %3097 = getelementptr inbounds i32, ptr %3096, i64 %3069
  %3098 = load i32, ptr %3097, align 4, !tbaa !50
  %3099 = icmp sgt i32 %3098, -1
  br i1 %3099, label %3100, label %3105

3100:                                             ; preds = %3094
  %3101 = icmp eq i32 %3098, 0
  br i1 %3101, label %3110, label %3102

3102:                                             ; preds = %3100
  %3103 = udiv i32 2147483647, %3098
  %3104 = icmp sgt i32 %3103, %3061
  br i1 %3104, label %3110, label %3109

3105:                                             ; preds = %3094
  %3106 = sub nsw i32 0, %3098
  %3107 = udiv i32 2147483647, %3106
  %3108 = icmp sgt i32 %3107, %3061
  br i1 %3108, label %3110, label %3109

3109:                                             ; preds = %3105, %3102
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 123, ptr noundef nonnull @.str.21) #22
  br label %3110

3110:                                             ; preds = %3109, %3105, %3100, %3102
  %3111 = mul nsw i32 %3098, %3061
  %3112 = add nsw i32 %3111, %3095
  %3113 = load ptr, ptr %2989, align 8, !tbaa !71
  %3114 = getelementptr inbounds %struct.eqn_d, ptr %3113, i64 %3045, i32 3
  %3115 = load ptr, ptr %3114, align 8, !tbaa !56
  %3116 = getelementptr inbounds i32, ptr %3115, i64 %3069
  store i32 %3112, ptr %3116, align 4, !tbaa !50
  %3117 = add nuw nsw i64 %3069, 1
  %3118 = icmp eq i64 %3117, %3041
  br i1 %3118, label %3119, label %3068, !llvm.loop !173

3119:                                             ; preds = %3110, %3067
  %3120 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3121 = icmp eq ptr %3120, null
  br i1 %3121, label %3131, label %3122

3122:                                             ; preds = %3119
  %3123 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %3124 = and i32 %3123, 8
  %3125 = icmp eq i32 %3124, 0
  br i1 %3125, label %3131, label %3126

3126:                                             ; preds = %3122
  %3127 = load ptr, ptr %2989, align 8, !tbaa !71
  %3128 = getelementptr inbounds %struct.eqn_d, ptr %3127, i64 %3045
  tail call void @omega_print_eqn(ptr noundef nonnull %3120, ptr noundef %0, ptr noundef %3128, i8 noundef zeroext 1, i32 noundef 0)
  %3129 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3130 = tail call i32 @fputc(i32 10, ptr %3129)
  br label %3131

3131:                                             ; preds = %3126, %3122, %3119, %3058, %3042
  %3132 = phi i8 [ %3044, %3058 ], [ %3044, %3042 ], [ 0, %3126 ], [ 0, %3122 ], [ 0, %3119 ]
  %3133 = icmp sgt i64 %3043, 1
  br i1 %3133, label %3042, label %3134, !llvm.loop !174

3134:                                             ; preds = %3131, %3015
  %3135 = phi i8 [ 1, %3015 ], [ %3132, %3131 ]
  %3136 = load ptr, ptr %3025, align 8, !tbaa !56
  tail call void @free(ptr noundef %3136)
  tail call void @free(ptr noundef %2990)
  br label %3392

3137:                                             ; preds = %2986
  %3138 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %3139 = getelementptr inbounds %struct.param_info, ptr %3138, i64 65, i32 1
  %3140 = load i32, ptr %3139, align 8, !tbaa !87
  %3141 = sext i32 %3140 to i64
  %3142 = shl nsw i64 %3141, 2
  %3143 = tail call ptr @xmalloc(i64 noundef %3142) #22
  %3144 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %3145 = getelementptr inbounds %struct.param_info, ptr %3144, i64 65, i32 1
  %3146 = load i32, ptr %3145, align 8, !tbaa !87
  %3147 = sext i32 %3146 to i64
  %3148 = tail call ptr @xmalloc(i64 noundef %3147) #22
  %3149 = load i32, ptr %927, align 4, !tbaa !70
  %3150 = add i32 %3149, -1
  %3151 = add nsw i32 %2250, -1
  %3152 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3153 = icmp eq ptr %3152, null
  br i1 %3153, label %3160, label %3154

3154:                                             ; preds = %3137
  %3155 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %3156 = and i32 %3155, 8
  %3157 = icmp eq i32 %3156, 0
  br i1 %3157, label %3160, label %3158

3158:                                             ; preds = %3154
  %3159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3152, ptr noundef nonnull @.str.160, i32 noundef %3151)
  br label %3160

3160:                                             ; preds = %3158, %3154, %3137
  %3161 = icmp sgt i32 %3149, 0
  br i1 %3161, label %3162, label %3357

3162:                                             ; preds = %3160
  %3163 = sext i32 %2428 to i64
  %3164 = icmp sgt i32 %2429, 0
  %3165 = sext i32 %2429 to i64
  %3166 = zext i32 %2430 to i64
  %3167 = zext i32 %3150 to i64
  br label %3168

3168:                                             ; preds = %3162, %3351
  %3169 = phi i64 [ %3167, %3162 ], [ %3355, %3351 ]
  %3170 = phi i8 [ 1, %3162 ], [ %3354, %3351 ]
  %3171 = phi i32 [ 0, %3162 ], [ %3353, %3351 ]
  %3172 = phi i32 [ %3151, %3162 ], [ %3352, %3351 ]
  %3173 = load ptr, ptr %939, align 8, !tbaa !71
  %3174 = getelementptr inbounds %struct.eqn_d, ptr %3173, i64 %3169, i32 3
  %3175 = load ptr, ptr %3174, align 8, !tbaa !56
  %3176 = getelementptr inbounds i32, ptr %3175, i64 %3163
  %3177 = load i32, ptr %3176, align 4, !tbaa !50
  %3178 = icmp sgt i32 %3177, 0
  br i1 %3178, label %3179, label %3351

3179:                                             ; preds = %3168
  %3180 = icmp eq i32 %3172, 0
  br label %3181

3181:                                             ; preds = %3179, %3331
  %3182 = phi i64 [ %3167, %3179 ], [ %3334, %3331 ]
  %3183 = phi i8 [ %3170, %3179 ], [ %3333, %3331 ]
  %3184 = phi i32 [ %3171, %3179 ], [ %3332, %3331 ]
  %3185 = load ptr, ptr %939, align 8, !tbaa !71
  %3186 = getelementptr inbounds %struct.eqn_d, ptr %3185, i64 %3182, i32 3
  %3187 = load ptr, ptr %3186, align 8, !tbaa !56
  %3188 = getelementptr inbounds i32, ptr %3187, i64 %3163
  %3189 = load i32, ptr %3188, align 4, !tbaa !50
  %3190 = icmp slt i32 %3189, 0
  br i1 %3190, label %3191, label %3331

3191:                                             ; preds = %3181
  %3192 = getelementptr inbounds %struct.eqn_d, ptr %3185, i64 %3182
  %3193 = getelementptr inbounds %struct.eqn_d, ptr %3185, i64 %3169
  %3194 = load i32, ptr %3193, align 8, !tbaa !59
  %3195 = load i32, ptr %3192, align 8, !tbaa !59
  %3196 = sub nsw i32 0, %3195
  %3197 = icmp eq i32 %3194, %3196
  br i1 %3197, label %3314, label %3198

3198:                                             ; preds = %3191
  %3199 = sub nsw i32 0, %3189
  %3200 = icmp eq i32 %3184, 0
  br i1 %3200, label %3201, label %3204

3201:                                             ; preds = %3198
  %3202 = load i32, ptr %927, align 4, !tbaa !70
  %3203 = add nsw i32 %3202, 1
  store i32 %3203, ptr %927, align 4, !tbaa !70
  br label %3209

3204:                                             ; preds = %3198
  %3205 = add nsw i32 %3184, -1
  %3206 = sext i32 %3205 to i64
  %3207 = getelementptr inbounds i32, ptr %3143, i64 %3206
  %3208 = load i32, ptr %3207, align 4, !tbaa !50
  br label %3209

3209:                                             ; preds = %3204, %3201
  %3210 = phi i32 [ %3202, %3201 ], [ %3208, %3204 ]
  %3211 = phi i32 [ 0, %3201 ], [ %3205, %3204 ]
  %3212 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %3213 = getelementptr inbounds %struct.param_info, ptr %3212, i64 65, i32 1
  %3214 = load i32, ptr %3213, align 8, !tbaa !87
  %3215 = icmp slt i32 %3210, %3214
  br i1 %3215, label %3217, label %3216

3216:                                             ; preds = %3209
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 4390, ptr noundef nonnull @.str.21) #22
  br label %3217

3217:                                             ; preds = %3216, %3209
  %3218 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3219 = icmp eq ptr %3218, null
  br i1 %3219, label %3238, label %3220

3220:                                             ; preds = %3217
  %3221 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %3222 = and i32 %3221, 8
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3238, label %3224

3224:                                             ; preds = %3220
  %3225 = trunc i64 %3169 to i32
  %3226 = trunc i64 %3182 to i32
  %3227 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3218, ptr noundef nonnull @.str.161, i32 noundef %3225, i32 noundef %3226, i32 noundef %3210)
  %3228 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3229 = load ptr, ptr %939, align 8, !tbaa !71
  %3230 = getelementptr inbounds %struct.eqn_d, ptr %3229, i64 %3169
  tail call void @omega_print_eqn(ptr noundef %3228, ptr noundef %0, ptr noundef %3230, i8 noundef zeroext 1, i32 noundef 1)
  %3231 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3232 = tail call i32 @fputc(i32 10, ptr %3231)
  %3233 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3234 = load ptr, ptr %939, align 8, !tbaa !71
  %3235 = getelementptr inbounds %struct.eqn_d, ptr %3234, i64 %3182
  tail call void @omega_print_eqn(ptr noundef %3233, ptr noundef %0, ptr noundef %3235, i8 noundef zeroext 1, i32 noundef 1)
  %3236 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3237 = tail call i32 @fputc(i32 10, ptr %3236)
  br label %3238

3238:                                             ; preds = %3224, %3220, %3217
  br i1 %3164, label %3239, label %3286

3239:                                             ; preds = %3238
  %3240 = sext i32 %3210 to i64
  br label %3241

3241:                                             ; preds = %3239, %3277
  %3242 = phi i64 [ %3166, %3239 ], [ %3284, %3277 ]
  %3243 = load ptr, ptr %939, align 8, !tbaa !71
  %3244 = getelementptr inbounds %struct.eqn_d, ptr %3243, i64 %3182, i32 3
  %3245 = load ptr, ptr %3244, align 8, !tbaa !56
  %3246 = getelementptr inbounds i32, ptr %3245, i64 %3242
  %3247 = load i32, ptr %3246, align 4, !tbaa !50
  %3248 = icmp sgt i32 %3247, -1
  br i1 %3248, label %3249, label %3254

3249:                                             ; preds = %3241
  %3250 = icmp eq i32 %3247, 0
  br i1 %3250, label %3259, label %3251

3251:                                             ; preds = %3249
  %3252 = udiv i32 2147483647, %3247
  %3253 = icmp sgt i32 %3252, %3177
  br i1 %3253, label %3259, label %3258

3254:                                             ; preds = %3241
  %3255 = sub nsw i32 0, %3247
  %3256 = udiv i32 2147483647, %3255
  %3257 = icmp sgt i32 %3256, %3177
  br i1 %3257, label %3259, label %3258

3258:                                             ; preds = %3254, %3251
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 123, ptr noundef nonnull @.str.21) #22
  br label %3259

3259:                                             ; preds = %3258, %3254, %3249, %3251
  %3260 = mul nsw i32 %3247, %3177
  %3261 = load ptr, ptr %939, align 8, !tbaa !71
  %3262 = getelementptr inbounds %struct.eqn_d, ptr %3261, i64 %3169, i32 3
  %3263 = load ptr, ptr %3262, align 8, !tbaa !56
  %3264 = getelementptr inbounds i32, ptr %3263, i64 %3242
  %3265 = load i32, ptr %3264, align 4, !tbaa !50
  %3266 = icmp sgt i32 %3265, -1
  br i1 %3266, label %3267, label %3272

3267:                                             ; preds = %3259
  %3268 = icmp eq i32 %3265, 0
  br i1 %3268, label %3277, label %3269

3269:                                             ; preds = %3267
  %3270 = udiv i32 2147483647, %3265
  %3271 = icmp sgt i32 %3270, %3199
  br i1 %3271, label %3277, label %3276

3272:                                             ; preds = %3259
  %3273 = sub nsw i32 0, %3265
  %3274 = udiv i32 2147483647, %3273
  %3275 = icmp sgt i32 %3274, %3199
  br i1 %3275, label %3277, label %3276

3276:                                             ; preds = %3272, %3269
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 123, ptr noundef nonnull @.str.21) #22
  br label %3277

3277:                                             ; preds = %3276, %3272, %3267, %3269
  %3278 = mul nsw i32 %3265, %3199
  %3279 = add nsw i32 %3278, %3260
  %3280 = load ptr, ptr %939, align 8, !tbaa !71
  %3281 = getelementptr inbounds %struct.eqn_d, ptr %3280, i64 %3240, i32 3
  %3282 = load ptr, ptr %3281, align 8, !tbaa !56
  %3283 = getelementptr inbounds i32, ptr %3282, i64 %3242
  store i32 %3279, ptr %3283, align 4, !tbaa !50
  %3284 = add nsw i64 %3242, -1
  %3285 = icmp sgt i64 %3242, 0
  br i1 %3285, label %3241, label %3286, !llvm.loop !175

3286:                                             ; preds = %3277, %3238
  %3287 = load ptr, ptr %939, align 8, !tbaa !71
  %3288 = sext i32 %3210 to i64
  %3289 = getelementptr inbounds %struct.eqn_d, ptr %3287, i64 %3288, i32 3
  %3290 = load ptr, ptr %3289, align 8, !tbaa !56
  %3291 = getelementptr inbounds i32, ptr %3290, i64 %3165
  store i32 0, ptr %3291, align 4, !tbaa !50
  %3292 = getelementptr inbounds %struct.eqn_d, ptr %3287, i64 %3288, i32 1
  store i32 1, ptr %3292, align 4, !tbaa !58
  %3293 = getelementptr inbounds %struct.eqn_d, ptr %3287, i64 %3182, i32 2
  %3294 = load i32, ptr %3293, align 8, !tbaa !60
  %3295 = icmp eq i32 %3294, 1
  br i1 %3295, label %3301, label %3296

3296:                                             ; preds = %3286
  %3297 = getelementptr inbounds %struct.eqn_d, ptr %3287, i64 %3169, i32 2
  %3298 = load i32, ptr %3297, align 8, !tbaa !60
  %3299 = icmp eq i32 %3298, 1
  %3300 = zext i1 %3299 to i32
  br label %3301

3301:                                             ; preds = %3296, %3286
  %3302 = phi i32 [ 1, %3286 ], [ %3300, %3296 ]
  %3303 = getelementptr inbounds %struct.eqn_d, ptr %3287, i64 %3288, i32 2
  store i32 %3302, ptr %3303, align 8, !tbaa !60
  %3304 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3305 = icmp eq ptr %3304, null
  br i1 %3305, label %3314, label %3306

3306:                                             ; preds = %3301
  %3307 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %3308 = and i32 %3307, 8
  %3309 = icmp eq i32 %3308, 0
  br i1 %3309, label %3314, label %3310

3310:                                             ; preds = %3306
  %3311 = getelementptr inbounds %struct.eqn_d, ptr %3287, i64 %3288
  tail call void @omega_print_eqn(ptr noundef nonnull %3304, ptr noundef %0, ptr noundef %3311, i8 noundef zeroext 1, i32 noundef 0)
  %3312 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3313 = tail call i32 @fputc(i32 10, ptr %3312)
  br label %3314

3314:                                             ; preds = %3310, %3306, %3301, %3191
  %3315 = phi i32 [ %3184, %3191 ], [ %3211, %3310 ], [ %3211, %3306 ], [ %3211, %3301 ]
  %3316 = phi i8 [ %3183, %3191 ], [ 0, %3310 ], [ 0, %3306 ], [ 0, %3301 ]
  br i1 %3180, label %3317, label %3331

3317:                                             ; preds = %3314
  %3318 = add nsw i32 %3315, 1
  %3319 = sext i32 %3315 to i64
  %3320 = getelementptr inbounds i32, ptr %3143, i64 %3319
  %3321 = trunc i64 %3182 to i32
  store i32 %3321, ptr %3320, align 4, !tbaa !50
  %3322 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3323 = icmp eq ptr %3322, null
  br i1 %3323, label %3331, label %3324

3324:                                             ; preds = %3317
  %3325 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %3326 = and i32 %3325, 8
  %3327 = icmp eq i32 %3326, 0
  br i1 %3327, label %3331, label %3328

3328:                                             ; preds = %3324
  %3329 = trunc i64 %3182 to i32
  %3330 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3322, ptr noundef nonnull @.str.162, i32 noundef %3329)
  br label %3331

3331:                                             ; preds = %3328, %3324, %3317, %3314, %3181
  %3332 = phi i32 [ %3318, %3328 ], [ %3318, %3324 ], [ %3318, %3317 ], [ %3315, %3314 ], [ %3184, %3181 ]
  %3333 = phi i8 [ %3316, %3328 ], [ %3316, %3324 ], [ %3316, %3317 ], [ %3316, %3314 ], [ %3183, %3181 ]
  %3334 = add nsw i64 %3182, -1
  %3335 = icmp sgt i64 %3182, 0
  br i1 %3335, label %3181, label %3336, !llvm.loop !176

3336:                                             ; preds = %3331
  %3337 = add nsw i32 %3172, -1
  %3338 = add nsw i32 %3332, 1
  %3339 = sext i32 %3332 to i64
  %3340 = getelementptr inbounds i32, ptr %3143, i64 %3339
  %3341 = trunc i64 %3169 to i32
  store i32 %3341, ptr %3340, align 4, !tbaa !50
  %3342 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3343 = icmp eq ptr %3342, null
  br i1 %3343, label %3351, label %3344

3344:                                             ; preds = %3336
  %3345 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %3346 = and i32 %3345, 8
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3351, label %3348

3348:                                             ; preds = %3344
  %3349 = trunc i64 %3169 to i32
  %3350 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3342, ptr noundef nonnull @.str.162, i32 noundef %3349)
  br label %3351

3351:                                             ; preds = %3348, %3344, %3336, %3168
  %3352 = phi i32 [ %3172, %3168 ], [ %3337, %3348 ], [ %3337, %3344 ], [ %3337, %3336 ]
  %3353 = phi i32 [ %3171, %3168 ], [ %3338, %3348 ], [ %3338, %3344 ], [ %3338, %3336 ]
  %3354 = phi i8 [ %3170, %3168 ], [ %3333, %3348 ], [ %3333, %3344 ], [ %3333, %3336 ]
  %3355 = add nsw i64 %3169, -1
  %3356 = icmp sgt i64 %3169, 0
  br i1 %3356, label %3168, label %3357, !llvm.loop !177

3357:                                             ; preds = %3351, %3160
  %3358 = phi i32 [ 0, %3160 ], [ %3353, %3351 ]
  %3359 = phi i8 [ 1, %3160 ], [ %3354, %3351 ]
  %3360 = load i32, ptr %927, align 4, !tbaa !70
  %3361 = icmp sgt i32 %3360, 0
  br i1 %3361, label %3362, label %3364

3362:                                             ; preds = %3357
  %3363 = zext nneg i32 %3360 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3148, i8 0, i64 %3363, i1 false), !tbaa !46
  br label %3364

3364:                                             ; preds = %3362, %3357
  %3365 = icmp sgt i32 %3358, 0
  br i1 %3365, label %3366, label %3376

3366:                                             ; preds = %3364
  %3367 = zext nneg i32 %3358 to i64
  br label %3368

3368:                                             ; preds = %3366, %3368
  %3369 = phi i64 [ %3367, %3366 ], [ %3370, %3368 ]
  %3370 = add nsw i64 %3369, -1
  %3371 = getelementptr inbounds i32, ptr %3143, i64 %3370
  %3372 = load i32, ptr %3371, align 4, !tbaa !50
  %3373 = sext i32 %3372 to i64
  %3374 = getelementptr inbounds i8, ptr %3148, i64 %3373
  store i8 1, ptr %3374, align 1, !tbaa !46
  %3375 = icmp sgt i64 %3369, 1
  br i1 %3375, label %3368, label %3376, !llvm.loop !178

3376:                                             ; preds = %3368, %3364
  %3377 = load i32, ptr %927, align 4, !tbaa !70
  %3378 = icmp sgt i32 %3377, 0
  br i1 %3378, label %3379, label %3391

3379:                                             ; preds = %3376
  %3380 = zext nneg i32 %3377 to i64
  br label %3381

3381:                                             ; preds = %3379, %3389
  %3382 = phi i64 [ %3380, %3379 ], [ %3383, %3389 ]
  %3383 = add nsw i64 %3382, -1
  %3384 = getelementptr inbounds i8, ptr %3148, i64 %3383
  %3385 = load i8, ptr %3384, align 1, !tbaa !46
  %3386 = icmp eq i8 %3385, 0
  br i1 %3386, label %3389, label %3387

3387:                                             ; preds = %3381
  %3388 = trunc i64 %3383 to i32
  tail call fastcc void @omega_delete_geq_extra(ptr noundef nonnull %0, i32 noundef %3388, i32 noundef %2429)
  br label %3389

3389:                                             ; preds = %3387, %3381
  %3390 = icmp sgt i64 %3382, 1
  br i1 %3390, label %3381, label %3391, !llvm.loop !179

3391:                                             ; preds = %3389, %3376
  tail call void @free(ptr noundef %3143)
  tail call void @free(ptr noundef %3148)
  br label %3392

3392:                                             ; preds = %3391, %3134, %2982, %2978, %2956, %2953, %2929, %2926, %2925, %2891, %2865, %2303, %2300, %2254, %2036, %2029, %2007, %2001, %2000, %1996, %1994, %1966
  %3393 = phi i32 [ 1, %1966 ], [ 1, %2001 ], [ 1, %2007 ], [ 1, %2036 ], [ 10, %2254 ], [ 10, %3134 ], [ 10, %3391 ], [ 10, %2303 ], [ 10, %2300 ], [ 1, %1996 ], [ 1, %1994 ], [ 1, %2000 ], [ 1, %2029 ], [ 1, %2925 ], [ 1, %2891 ], [ 1, %2865 ], [ 9, %2953 ], [ 1, %2956 ], [ 1, %2978 ], [ 1, %2982 ], [ 1, %2929 ], [ 1, %2926 ]
  %3394 = phi i8 [ %1961, %1966 ], [ %1961, %2001 ], [ %1961, %2007 ], [ %1961, %2036 ], [ %1961, %2254 ], [ 0, %3134 ], [ 0, %3391 ], [ 1, %2303 ], [ 1, %2300 ], [ %1961, %1996 ], [ %1961, %1994 ], [ %1961, %2000 ], [ %1961, %2029 ], [ 0, %2925 ], [ 0, %2891 ], [ 0, %2865 ], [ 0, %2953 ], [ 0, %2956 ], [ 0, %2978 ], [ 0, %2982 ], [ 0, %2929 ], [ 0, %2926 ]
  %3395 = phi i8 [ 0, %1966 ], [ 0, %2001 ], [ 0, %2007 ], [ 0, %2036 ], [ 1, %2254 ], [ %3135, %3134 ], [ %3359, %3391 ], [ 0, %2303 ], [ 1, %2300 ], [ 0, %1996 ], [ 0, %1994 ], [ 0, %2000 ], [ 0, %2029 ], [ 0, %2925 ], [ 0, %2891 ], [ 0, %2865 ], [ 0, %2953 ], [ 0, %2956 ], [ 0, %2978 ], [ 0, %2982 ], [ 0, %2929 ], [ 0, %2926 ]
  %3396 = phi i32 [ %1962, %1966 ], [ %1962, %2001 ], [ %1962, %2007 ], [ %2033, %2036 ], [ %2256, %2254 ], [ %2430, %3134 ], [ %2430, %3391 ], [ %2048, %2303 ], [ %2048, %2300 ], [ %1962, %1996 ], [ %1962, %1994 ], [ %1962, %2000 ], [ %1962, %2029 ], [ 1, %2925 ], [ 1, %2891 ], [ 1, %2865 ], [ 1, %2953 ], [ 1, %2956 ], [ 1, %2978 ], [ 1, %2982 ], [ 1, %2929 ], [ 1, %2926 ]
  %3397 = phi i32 [ %1967, %1966 ], [ 0, %2001 ], [ 0, %2007 ], [ %2037, %2036 ], [ %1963, %2254 ], [ %1963, %3134 ], [ %1963, %3391 ], [ %1963, %2303 ], [ %1963, %2300 ], [ 0, %1996 ], [ 1, %1994 ], [ 1, %2000 ], [ 0, %2029 ], [ 0, %2925 ], [ %2892, %2891 ], [ 0, %2865 ], [ %1963, %2953 ], [ 1, %2956 ], [ 1, %2978 ], [ 1, %2982 ], [ 1, %2929 ], [ 1, %2926 ]
  switch i32 %3393, label %3403 [
    i32 10, label %3398
    i32 9, label %3400
    i32 2, label %3400
  ]

3398:                                             ; preds = %3392
  %3399 = icmp eq i8 %3395, 0
  br i1 %3399, label %3400, label %1960, !llvm.loop !180

3400:                                             ; preds = %1181, %3392, %3398, %3392
  %3401 = phi i8 [ %3394, %3392 ], [ %952, %1181 ], [ %3394, %3392 ], [ %3394, %3398 ]
  %3402 = phi i32 [ %3397, %3392 ], [ %953, %1181 ], [ %3397, %3392 ], [ %3397, %3398 ]
  br label %951, !llvm.loop !181

3403:                                             ; preds = %1939, %3392, %1075, %920, %1102, %1098, %1095, %1114, %1155, %1156, %1168, %912
  %3404 = phi i32 [ 0, %912 ], [ 1, %920 ], [ %1122, %1114 ], [ 0, %1155 ], [ 1, %1168 ], [ 1, %1156 ], [ 0, %1095 ], [ 0, %1098 ], [ 0, %1102 ], [ %1081, %1075 ], [ %3397, %3392 ], [ %1940, %1939 ]
  %3405 = load i32, ptr @omega_solve_depth, align 4, !tbaa !50
  %3406 = add nsw i32 %3405, -1
  store i32 %3406, ptr @omega_solve_depth, align 4, !tbaa !50
  ret i32 %3404
}

; Function Attrs: cold nounwind uwtable
define dso_local void @omega_eliminate_red(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #12 !prof !34 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 65, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #22
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 18, i64 1, ptr nonnull %8)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %16, ptr noundef %0)
  br label %17

17:                                               ; preds = %14, %10, %2
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @omega_simplify_problem(ptr noundef %0)
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !70
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = zext nneg i32 %25 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %28, i1 false), !tbaa !46
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, ptr %24, align 4, !tbaa !70
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %340

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %35 = add nsw i32 %30, -2
  %36 = zext nneg i32 %30 to i64
  br label %37

37:                                               ; preds = %32, %335
  %38 = phi i64 [ %36, %32 ], [ %42, %335 ]
  %39 = phi i32 [ %35, %32 ], [ %339, %335 ]
  %40 = phi i32 [ 0, %32 ], [ %337, %335 ]
  %41 = phi i32 [ 0, %32 ], [ %336, %335 ]
  %42 = add nsw i64 %38, -1
  %43 = load ptr, ptr %33, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.eqn_d, ptr %43, i64 %42, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !60
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %335

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, ptr %7, i64 %42
  %49 = load i8, ptr %48, align 1, !tbaa !46
  %50 = icmp eq i8 %49, 0
  %51 = icmp sgt i64 %38, 1
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %335

53:                                               ; preds = %47
  %54 = zext i32 %39 to i64
  br label %55

55:                                               ; preds = %53, %329
  %56 = phi i64 [ %332, %329 ], [ %54, %53 ]
  %57 = phi i32 [ %331, %329 ], [ %40, %53 ]
  %58 = phi i32 [ %330, %329 ], [ %41, %53 ]
  %59 = load ptr, ptr %33, align 8, !tbaa !71
  %60 = getelementptr inbounds %struct.eqn_d, ptr %59, i64 %56, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %329

63:                                               ; preds = %55
  %64 = getelementptr inbounds i8, ptr %7, i64 %56
  %65 = load i8, ptr %64, align 1, !tbaa !46
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %329

67:                                               ; preds = %63
  %68 = load i32, ptr %0, align 8, !tbaa !54
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %329

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.eqn_d, ptr %59, i64 %42, i32 3
  %72 = getelementptr inbounds %struct.eqn_d, ptr %59, i64 %56, i32 3
  %73 = zext nneg i32 %68 to i64
  br label %74

74:                                               ; preds = %70, %96
  %75 = phi i64 [ %73, %70 ], [ %97, %96 ]
  br label %76

76:                                               ; preds = %74, %80
  %77 = phi i64 [ %75, %74 ], [ %82, %80 ]
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = add nsw i64 %77, -1
  %82 = add nsw i64 %77, -1
  %83 = load ptr, ptr %71, align 8, !tbaa !56
  %84 = getelementptr inbounds i32, ptr %83, i64 %75
  %85 = load i32, ptr %84, align 4, !tbaa !50
  %86 = load ptr, ptr %72, align 8, !tbaa !56
  %87 = getelementptr inbounds i32, ptr %86, i64 %81
  %88 = load i32, ptr %87, align 4, !tbaa !50
  %89 = mul nsw i32 %88, %85
  %90 = getelementptr inbounds i32, ptr %86, i64 %75
  %91 = load i32, ptr %90, align 4, !tbaa !50
  %92 = getelementptr inbounds i32, ptr %83, i64 %81
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = mul nsw i32 %93, %91
  %95 = icmp eq i32 %89, %94
  br i1 %95, label %76, label %99, !llvm.loop !182

96:                                               ; preds = %76
  %97 = add nsw i64 %75, -1
  %98 = icmp sgt i64 %75, 2
  br i1 %98, label %74, label %329, !llvm.loop !183

99:                                               ; preds = %80
  %100 = sub nsw i32 %89, %94
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %102 = icmp eq ptr %101, null
  br i1 %102, label %154, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %154, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !61
  %110 = getelementptr inbounds i32, ptr %109, i64 %75
  %111 = load i32, ptr %110, align 4, !tbaa !50
  %112 = icmp ult i32 %111, 21
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = zext nneg i32 %111 to i64
  %115 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %114
  br label %122

116:                                              ; preds = %107
  %117 = icmp ugt i32 %111, -20
  br i1 %117, label %118, label %122

118:                                              ; preds = %116
  %119 = add nsw i32 %111, 40
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %120
  br label %122

122:                                              ; preds = %113, %116, %118
  %123 = phi ptr [ %115, %113 ], [ %121, %118 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %116 ]
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %101, ptr noundef nonnull @.str.35, ptr noundef nonnull %123)
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %126 = load ptr, ptr %108, align 8, !tbaa !61
  %127 = shl i64 %81, 32
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds i32, ptr %126, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !50
  %131 = icmp ult i32 %130, 21
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = zext nneg i32 %130 to i64
  %134 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %133
  br label %141

135:                                              ; preds = %122
  %136 = icmp ugt i32 %130, -20
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = add nsw i32 %130, 40
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %139
  br label %141

141:                                              ; preds = %132, %135, %137
  %142 = phi ptr [ %134, %132 ], [ %140, %137 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %135 ]
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.36, ptr noundef nonnull %142, i32 noundef %100)
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %145 = load ptr, ptr %33, align 8, !tbaa !71
  %146 = getelementptr inbounds %struct.eqn_d, ptr %145, i64 %42
  tail call void @omega_print_eqn(ptr noundef %144, ptr noundef nonnull %0, ptr noundef %146, i8 noundef zeroext 1, i32 noundef 0)
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %148 = tail call i32 @fputc(i32 10, ptr %147)
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %150 = load ptr, ptr %33, align 8, !tbaa !71
  %151 = getelementptr inbounds %struct.eqn_d, ptr %150, i64 %56
  tail call void @omega_print_eqn(ptr noundef %149, ptr noundef nonnull %0, ptr noundef %151, i8 noundef zeroext 1, i32 noundef 0)
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %153 = tail call i32 @fputc(i32 10, ptr %152)
  br label %154

154:                                              ; preds = %141, %103, %99
  %155 = load i32, ptr %24, align 4, !tbaa !70
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %329

157:                                              ; preds = %154
  %158 = icmp sgt i32 %100, 0
  %159 = icmp slt i32 %100, 0
  %160 = icmp slt i32 %100, 0
  %161 = zext nneg i32 %155 to i64
  br label %162

162:                                              ; preds = %157, %325
  %163 = phi i64 [ %161, %157 ], [ %166, %325 ]
  %164 = phi i32 [ %57, %157 ], [ %327, %325 ]
  %165 = phi i32 [ %58, %157 ], [ %326, %325 ]
  %166 = add nsw i64 %163, -1
  %167 = load ptr, ptr %33, align 8, !tbaa !71
  %168 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %166, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !60
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %325

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %56, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !56
  %174 = getelementptr inbounds i32, ptr %173, i64 %81
  %175 = load i32, ptr %174, align 4, !tbaa !50
  %176 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %166, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !56
  %178 = getelementptr inbounds i32, ptr %177, i64 %75
  %179 = load i32, ptr %178, align 4, !tbaa !50
  %180 = mul nsw i32 %179, %175
  %181 = getelementptr inbounds i32, ptr %173, i64 %75
  %182 = load i32, ptr %181, align 4, !tbaa !50
  %183 = getelementptr inbounds i32, ptr %177, i64 %81
  %184 = load i32, ptr %183, align 4, !tbaa !50
  %185 = mul nsw i32 %184, %182
  %186 = sub nsw i32 %180, %185
  %187 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %42, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !56
  %189 = getelementptr inbounds i32, ptr %188, i64 %81
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = mul nsw i32 %190, %179
  %192 = getelementptr inbounds i32, ptr %188, i64 %75
  %193 = load i32, ptr %192, align 4, !tbaa !50
  %194 = mul nsw i32 %193, %184
  %195 = sub nsw i32 %194, %191
  %196 = icmp sgt i32 %186, 0
  %197 = select i1 %158, i1 %196, i1 false
  %198 = icmp sgt i32 %195, 0
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %205, label %200

200:                                              ; preds = %171
  %201 = icmp slt i32 %186, 0
  %202 = select i1 %159, i1 %201, i1 false
  %203 = icmp slt i32 %195, 0
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %205, label %325

205:                                              ; preds = %200, %171
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %207 = icmp eq ptr %206, null
  br i1 %207, label %219, label %208

208:                                              ; preds = %205
  %209 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %210 = and i32 %209, 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %208
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %206, ptr noundef nonnull @.str.37, i32 noundef %186, i32 noundef %195)
  %214 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %215 = load ptr, ptr %33, align 8, !tbaa !71
  %216 = getelementptr inbounds %struct.eqn_d, ptr %215, i64 %166
  tail call void @omega_print_eqn(ptr noundef %214, ptr noundef nonnull %0, ptr noundef %216, i8 noundef zeroext 1, i32 noundef 0)
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %218 = tail call i32 @fputc(i32 10, ptr %217)
  br label %219

219:                                              ; preds = %212, %208, %205
  %220 = load i32, ptr %0, align 8, !tbaa !54
  %221 = icmp sgt i32 %220, -1
  br i1 %221, label %222, label %272

222:                                              ; preds = %219, %269
  %223 = phi i32 [ %270, %269 ], [ %220, %219 ]
  %224 = load ptr, ptr %33, align 8, !tbaa !71
  %225 = getelementptr inbounds %struct.eqn_d, ptr %224, i64 %42, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !56
  %227 = zext nneg i32 %223 to i64
  %228 = getelementptr inbounds i32, ptr %226, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !50
  %230 = mul nsw i32 %229, %186
  %231 = getelementptr inbounds %struct.eqn_d, ptr %224, i64 %56, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !56
  %233 = getelementptr inbounds i32, ptr %232, i64 %227
  %234 = load i32, ptr %233, align 4, !tbaa !50
  %235 = mul nsw i32 %234, %195
  %236 = add nsw i32 %235, %230
  %237 = getelementptr inbounds %struct.eqn_d, ptr %224, i64 %166, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !56
  %239 = getelementptr inbounds i32, ptr %238, i64 %227
  %240 = load i32, ptr %239, align 4, !tbaa !50
  %241 = mul nsw i32 %240, %100
  %242 = icmp eq i32 %236, %241
  br i1 %242, label %243, label %272

243:                                              ; preds = %222
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %245 = icmp eq ptr %244, null
  br i1 %245, label %269, label %246

246:                                              ; preds = %243
  %247 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %248 = and i32 %247, 8
  %249 = icmp ne i32 %248, 0
  %250 = icmp ne i32 %223, 0
  %251 = and i1 %250, %249
  br i1 %251, label %252, label %269

252:                                              ; preds = %246
  %253 = load ptr, ptr %34, align 8, !tbaa !61
  %254 = getelementptr inbounds i32, ptr %253, i64 %227
  %255 = load i32, ptr %254, align 4, !tbaa !50
  %256 = icmp ult i32 %255, 21
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = zext nneg i32 %255 to i64
  %259 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %258
  br label %266

260:                                              ; preds = %252
  %261 = icmp ugt i32 %255, -20
  br i1 %261, label %262, label %266

262:                                              ; preds = %260
  %263 = add nsw i32 %255, 40
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %264
  br label %266

266:                                              ; preds = %257, %260, %262
  %267 = phi ptr [ %259, %257 ], [ %265, %262 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %260 ]
  %268 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %244, ptr noundef nonnull @.str.38, ptr noundef nonnull %267, i32 noundef %236, i32 noundef %241)
  br label %269

269:                                              ; preds = %243, %246, %266
  %270 = add nsw i32 %223, -1
  %271 = icmp sgt i32 %223, 0
  br i1 %271, label %222, label %272, !llvm.loop !184

272:                                              ; preds = %269, %222, %219
  %273 = phi i32 [ %220, %219 ], [ -1, %269 ], [ %223, %222 ]
  %274 = phi i32 [ %165, %219 ], [ %236, %222 ], [ %236, %269 ]
  %275 = icmp slt i32 %273, 0
  br i1 %275, label %294, label %276

276:                                              ; preds = %272
  %277 = icmp eq i32 %273, 0
  br i1 %277, label %278, label %325

278:                                              ; preds = %276
  br i1 %158, label %279, label %286

279:                                              ; preds = %278
  %280 = load ptr, ptr %33, align 8, !tbaa !71
  %281 = getelementptr inbounds %struct.eqn_d, ptr %280, i64 %166, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !56
  %283 = load i32, ptr %282, align 4, !tbaa !50
  %284 = mul nsw i32 %283, %100
  %285 = icmp slt i32 %274, %284
  br i1 %285, label %294, label %286

286:                                              ; preds = %279, %278
  br i1 %160, label %287, label %325

287:                                              ; preds = %286
  %288 = load ptr, ptr %33, align 8, !tbaa !71
  %289 = getelementptr inbounds %struct.eqn_d, ptr %288, i64 %166, i32 3
  %290 = load ptr, ptr %289, align 8, !tbaa !56
  %291 = load i32, ptr %290, align 4, !tbaa !50
  %292 = mul nsw i32 %291, %100
  %293 = icmp sgt i32 %274, %292
  br i1 %293, label %294, label %325

294:                                              ; preds = %287, %279, %272
  %295 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %296 = icmp eq ptr %295, null
  br i1 %296, label %322, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %299 = and i32 %298, 8
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %322, label %301

301:                                              ; preds = %297
  %302 = add nsw i32 %164, 1
  %303 = load i32, ptr %24, align 4, !tbaa !70
  %304 = sub nsw i32 %303, %302
  %305 = trunc i64 %166 to i32
  %306 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %295, ptr noundef nonnull @.str.39, i32 noundef %305, i32 noundef %302, i32 noundef %304)
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %308 = load ptr, ptr %33, align 8, !tbaa !71
  %309 = getelementptr inbounds %struct.eqn_d, ptr %308, i64 %42
  tail call void @omega_print_eqn(ptr noundef %307, ptr noundef nonnull %0, ptr noundef %309, i8 noundef zeroext 1, i32 noundef 0)
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %311 = tail call i32 @fputc(i32 10, ptr %310)
  %312 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %313 = load ptr, ptr %33, align 8, !tbaa !71
  %314 = getelementptr inbounds %struct.eqn_d, ptr %313, i64 %56
  tail call void @omega_print_eqn(ptr noundef %312, ptr noundef nonnull %0, ptr noundef %314, i8 noundef zeroext 1, i32 noundef 0)
  %315 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %316 = tail call i32 @fputc(i32 10, ptr %315)
  %317 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %318 = load ptr, ptr %33, align 8, !tbaa !71
  %319 = getelementptr inbounds %struct.eqn_d, ptr %318, i64 %166
  tail call void @omega_print_eqn(ptr noundef %317, ptr noundef nonnull %0, ptr noundef %319, i8 noundef zeroext 1, i32 noundef 0)
  %320 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %321 = tail call i32 @fputc(i32 10, ptr %320)
  br label %322

322:                                              ; preds = %301, %297, %294
  %323 = phi i32 [ %302, %301 ], [ %164, %297 ], [ %164, %294 ]
  %324 = getelementptr inbounds i8, ptr %7, i64 %166
  store i8 1, ptr %324, align 1, !tbaa !46
  br label %325

325:                                              ; preds = %287, %162, %276, %286, %322, %200
  %326 = phi i32 [ %274, %322 ], [ %274, %286 ], [ %274, %276 ], [ %165, %200 ], [ %165, %162 ], [ %274, %287 ]
  %327 = phi i32 [ %323, %322 ], [ %164, %286 ], [ %164, %276 ], [ %164, %200 ], [ %164, %162 ], [ %164, %287 ]
  %328 = icmp sgt i64 %163, 1
  br i1 %328, label %162, label %329, !llvm.loop !185

329:                                              ; preds = %96, %325, %67, %154, %55, %63
  %330 = phi i32 [ %58, %63 ], [ %58, %55 ], [ %58, %154 ], [ %58, %67 ], [ %326, %325 ], [ %58, %96 ]
  %331 = phi i32 [ %57, %63 ], [ %57, %55 ], [ %57, %154 ], [ %57, %67 ], [ %327, %325 ], [ %57, %96 ]
  %332 = add nsw i64 %56, -1
  %333 = trunc i64 %56 to i32
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %55, label %335, !llvm.loop !186

335:                                              ; preds = %329, %37, %47
  %336 = phi i32 [ %41, %47 ], [ %41, %37 ], [ %330, %329 ]
  %337 = phi i32 [ %40, %47 ], [ %40, %37 ], [ %331, %329 ]
  %338 = icmp sgt i64 %38, 1
  %339 = add nsw i32 %39, -1
  br i1 %338, label %37, label %340, !llvm.loop !187

340:                                              ; preds = %335, %29
  %341 = load i32, ptr %24, align 4, !tbaa !70
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %340
  %344 = zext nneg i32 %341 to i64
  br label %345

345:                                              ; preds = %343, %354
  %346 = phi i64 [ %344, %343 ], [ %347, %354 ]
  %347 = add nsw i64 %346, -1
  %348 = getelementptr inbounds i8, ptr %7, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !46
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %345
  %352 = load i32, ptr %0, align 8, !tbaa !54
  %353 = trunc i64 %347 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %353, i32 noundef %352)
  br label %354

354:                                              ; preds = %345, %351
  %355 = icmp sgt i64 %346, 1
  br i1 %355, label %345, label %356, !llvm.loop !188

356:                                              ; preds = %354, %340
  tail call void @free(ptr noundef %7)
  %357 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %358 = icmp eq ptr %357, null
  br i1 %358, label %366, label %359

359:                                              ; preds = %356
  %360 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %361 = and i32 %360, 8
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %359
  %364 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 35, i64 1, ptr nonnull %357)
  %365 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %365, ptr noundef %0)
  br label %366

366:                                              ; preds = %363, %359, %356
  %367 = load i32, ptr %24, align 4, !tbaa !70
  %368 = icmp sgt i32 %367, 0
  br i1 %368, label %369, label %384

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %371 = load ptr, ptr %370, align 8, !tbaa !71
  %372 = zext nneg i32 %367 to i64
  br label %373

373:                                              ; preds = %369, %373
  %374 = phi i64 [ %372, %369 ], [ %376, %373 ]
  %375 = phi i32 [ 0, %369 ], [ %380, %373 ]
  %376 = add nsw i64 %374, -1
  %377 = getelementptr inbounds %struct.eqn_d, ptr %371, i64 %376, i32 2
  %378 = load i32, ptr %377, align 8, !tbaa !60
  %379 = icmp eq i32 %378, 1
  %380 = select i1 %379, i32 1, i32 %375
  %381 = icmp sgt i64 %374, 1
  br i1 %381, label %373, label %382, !llvm.loop !189

382:                                              ; preds = %373
  %383 = icmp eq i32 %380, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %366, %382
  %385 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %386 = icmp eq ptr %385, null
  br i1 %386, label %544, label %387

387:                                              ; preds = %384
  %388 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %389 = and i32 %388, 8
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %544, label %391

391:                                              ; preds = %387
  %392 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 19, i64 1, ptr nonnull %385)
  br label %544

393:                                              ; preds = %382
  %394 = tail call ptr @xmalloc(i64 noundef 72) #22
  tail call fastcc void @omega_copy_problem(ptr noundef %394, ptr noundef %0)
  %395 = getelementptr inbounds %struct.omega_pb_d, ptr %394, i64 0, i32 1
  store i32 0, ptr %395, align 4, !tbaa !76
  %396 = getelementptr inbounds %struct.omega_pb_d, ptr %394, i64 0, i32 4
  store i32 0, ptr %396, align 8, !tbaa !73
  %397 = load i32, ptr %24, align 4, !tbaa !70
  %398 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %399 = zext i32 %397 to i64
  br label %400

400:                                              ; preds = %404, %393
  %401 = phi i64 [ %406, %404 ], [ %399, %393 ]
  %402 = trunc i64 %401 to i32
  %403 = icmp slt i32 %402, 1
  br i1 %403, label %411, label %404

404:                                              ; preds = %400
  %405 = add nsw i64 %401, -1
  %406 = add nsw i64 %401, -1
  %407 = load ptr, ptr %398, align 8, !tbaa !71
  %408 = getelementptr inbounds %struct.eqn_d, ptr %407, i64 %405, i32 2
  %409 = load i32, ptr %408, align 8, !tbaa !60
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %411, label %400, !llvm.loop !190

411:                                              ; preds = %404, %400
  %412 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %413 = icmp eq i32 %412, 0
  %414 = and i1 %403, %413
  %415 = select i1 %414, ptr %0, ptr null
  store ptr %415, ptr @original_problem, align 8, !tbaa !35
  %416 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %417 = icmp eq ptr %416, null
  br i1 %417, label %431, label %418

418:                                              ; preds = %411
  %419 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %420 = and i32 %419, 8
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %418
  %423 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 17, i64 1, ptr nonnull %416)
  br i1 %414, label %427, label %424

424:                                              ; preds = %422
  %425 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %426 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 13, i64 1, ptr %425)
  br label %427

427:                                              ; preds = %424, %422
  %428 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %429 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 3, i64 1, ptr %428)
  %430 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %430, ptr noundef %0)
  br label %431

431:                                              ; preds = %427, %418, %411
  %432 = tail call i32 @omega_solve_problem(ptr noundef %394, i32 noundef 2)
  store ptr null, ptr @original_problem, align 8, !tbaa !35
  tail call void @free(ptr noundef %394)
  %433 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %434 = icmp eq ptr %433, null
  br i1 %434, label %447, label %435

435:                                              ; preds = %431
  %436 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %437 = and i32 %436, 8
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %447, label %439

439:                                              ; preds = %435
  %440 = icmp eq i32 %432, 0
  br i1 %440, label %443, label %441

441:                                              ; preds = %439
  %442 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 17, i64 1, ptr nonnull %433)
  br label %445

443:                                              ; preds = %439
  %444 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 18, i64 1, ptr nonnull %433)
  br label %445

445:                                              ; preds = %443, %441
  %446 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %446, ptr noundef %0)
  br label %447

447:                                              ; preds = %431, %435, %445
  %448 = icmp eq i32 %432, 0
  br i1 %448, label %544, label %449

449:                                              ; preds = %447
  %450 = load i32, ptr @conservative, align 4, !tbaa !50
  %451 = add nsw i32 %450, 1
  store i32 %451, ptr @conservative, align 4, !tbaa !50
  %452 = tail call ptr @xmalloc(i64 noundef 72) #22
  %453 = load i32, ptr %24, align 4, !tbaa !70
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %541

455:                                              ; preds = %449
  %456 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %457 = getelementptr inbounds %struct.omega_pb_d, ptr %452, i64 0, i32 10
  %458 = getelementptr inbounds %struct.omega_pb_d, ptr %452, i64 0, i32 1
  %459 = getelementptr inbounds %struct.omega_pb_d, ptr %452, i64 0, i32 7
  %460 = getelementptr inbounds %struct.omega_pb_d, ptr %452, i64 0, i32 4
  %461 = icmp eq i8 %1, 0
  %462 = zext nneg i32 %453 to i64
  br label %463

463:                                              ; preds = %455, %539
  %464 = phi i64 [ %462, %455 ], [ %465, %539 ]
  %465 = add nsw i64 %464, -1
  %466 = load ptr, ptr %456, align 8, !tbaa !71
  %467 = getelementptr inbounds %struct.eqn_d, ptr %466, i64 %465, i32 2
  %468 = load i32, ptr %467, align 8, !tbaa !60
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %470, label %539

470:                                              ; preds = %463
  %471 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %472 = icmp eq ptr %471, null
  br i1 %472, label %485, label %473

473:                                              ; preds = %470
  %474 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %475 = and i32 %474, 8
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %485, label %477

477:                                              ; preds = %473
  %478 = trunc i64 %465 to i32
  %479 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %471, ptr noundef nonnull @.str.33, i32 noundef %478)
  %480 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %481 = load ptr, ptr %456, align 8, !tbaa !71
  %482 = getelementptr inbounds %struct.eqn_d, ptr %481, i64 %465
  tail call void @omega_print_eqn(ptr noundef %480, ptr noundef %0, ptr noundef %482, i8 noundef zeroext 1, i32 noundef 0)
  %483 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %484 = tail call i32 @fputc(i32 10, ptr %483)
  br label %485

485:                                              ; preds = %477, %473, %470
  tail call fastcc void @omega_copy_problem(ptr noundef %452, ptr noundef %0)
  %486 = load i32, ptr %452, align 8, !tbaa !54
  %487 = icmp sgt i32 %486, -1
  br i1 %487, label %488, label %501

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.omega_pb_d, ptr %452, i64 0, i32 10
  %490 = load ptr, ptr %489, align 8, !tbaa !71
  %491 = getelementptr inbounds %struct.eqn_d, ptr %490, i64 %465, i32 3
  %492 = load ptr, ptr %491, align 8, !tbaa !56
  %493 = zext nneg i32 %486 to i64
  br label %494

494:                                              ; preds = %488, %494
  %495 = phi i64 [ %493, %488 ], [ %499, %494 ]
  %496 = getelementptr inbounds i32, ptr %492, i64 %495
  %497 = load i32, ptr %496, align 4, !tbaa !50
  %498 = sub nsw i32 0, %497
  store i32 %498, ptr %496, align 4, !tbaa !50
  %499 = add nsw i64 %495, -1
  %500 = icmp sgt i64 %495, 0
  br i1 %500, label %494, label %501, !llvm.loop !124

501:                                              ; preds = %494, %485
  %502 = load ptr, ptr %457, align 8, !tbaa !71
  %503 = getelementptr inbounds %struct.eqn_d, ptr %502, i64 %465, i32 3
  %504 = load ptr, ptr %503, align 8, !tbaa !56
  %505 = load i32, ptr %504, align 4, !tbaa !50
  %506 = add nsw i32 %505, -1
  store i32 %506, ptr %504, align 4, !tbaa !50
  %507 = getelementptr inbounds %struct.eqn_d, ptr %502, i64 %465, i32 1
  store i32 1, ptr %507, align 4, !tbaa !58
  store i32 0, ptr %458, align 4, !tbaa !76
  store i8 0, ptr %459, align 1, !tbaa !125
  store i32 0, ptr %460, align 8, !tbaa !73
  %508 = tail call i32 @omega_solve_problem(ptr noundef nonnull %452, i32 noundef 0)
  %509 = icmp eq i32 %508, 0
  %510 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %511 = icmp eq ptr %510, null
  br i1 %509, label %512, label %522

512:                                              ; preds = %501
  br i1 %511, label %519, label %513

513:                                              ; preds = %512
  %514 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %515 = and i32 %514, 8
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %519, label %517

517:                                              ; preds = %513
  %518 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 16, i64 1, ptr nonnull %510)
  br label %519

519:                                              ; preds = %517, %513, %512
  %520 = load i32, ptr %0, align 8, !tbaa !54
  %521 = trunc i64 %465 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %521, i32 noundef %520)
  br label %539

522:                                              ; preds = %501
  br i1 %511, label %529, label %523

523:                                              ; preds = %522
  %524 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %525 = and i32 %524, 8
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %523
  %528 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 20, i64 1, ptr nonnull %510)
  br label %529

529:                                              ; preds = %527, %523, %522
  br i1 %461, label %530, label %539

530:                                              ; preds = %529
  %531 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %532 = icmp eq ptr %531, null
  br i1 %532, label %541, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %535 = and i32 %534, 8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %541, label %537

537:                                              ; preds = %533
  %538 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 37, i64 1, ptr nonnull %531)
  br label %541

539:                                              ; preds = %463, %529, %519
  %540 = icmp sgt i64 %464, 1
  br i1 %540, label %463, label %541, !llvm.loop !191

541:                                              ; preds = %539, %449, %530, %533, %537
  %542 = load i32, ptr @conservative, align 4, !tbaa !50
  %543 = add nsw i32 %542, -1
  store i32 %543, ptr @conservative, align 4, !tbaa !50
  tail call void @free(ptr noundef %452)
  br label %544

544:                                              ; preds = %447, %391, %387, %384, %541
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @omega_simplify_problem(ptr noundef %0) local_unnamed_addr #12 !prof !34 {
  store i32 0, ptr @omega_found_reduction, align 4, !tbaa !50
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !54
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = zext nneg i32 %6 to i64
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ %13, %8 ], [ %20, %14 ]
  %16 = getelementptr inbounds i32, ptr %10, i64 %15
  %17 = trunc i64 %15 to i32
  store i32 %17, ptr %16, align 4, !tbaa !50
  %18 = getelementptr inbounds i32, ptr %12, i64 %15
  %19 = trunc i64 %15 to i32
  store i32 %19, ptr %18, align 4, !tbaa !50
  %20 = add nsw i64 %15, -1
  %21 = icmp sgt i64 %15, 0
  br i1 %21, label %14, label %22, !llvm.loop !66

22:                                               ; preds = %14, %5
  store i8 1, ptr %2, align 8, !tbaa !64
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, ptr @next_key, align 4, !tbaa !50
  %25 = mul nsw i32 %24, 3
  %26 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.param_info, ptr %26, i64 69, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !87
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %23
  %31 = load i32, ptr @hash_version, align 4, !tbaa !50
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @hash_version, align 4, !tbaa !50
  %33 = getelementptr inbounds %struct.param_info, ptr %26, i64 64, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !87
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @next_key, align 4, !tbaa !50
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !70
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = zext nneg i32 %37 to i64
  br label %50

43:                                               ; preds = %50, %30
  %44 = getelementptr inbounds %struct.param_info, ptr %26, i64 68, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !87
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load ptr, ptr @hash_master, align 8, !tbaa !35
  %49 = zext nneg i32 %45 to i64
  br label %55

50:                                               ; preds = %39, %50
  %51 = phi i64 [ %42, %39 ], [ %52, %50 ]
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds %struct.eqn_d, ptr %41, i64 %52, i32 1
  store i32 1, ptr %53, align 4, !tbaa !58
  %54 = icmp sgt i64 %51, 1
  br i1 %54, label %50, label %43, !llvm.loop !192

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %58, %55 ]
  %57 = getelementptr inbounds %struct.eqn_d, ptr %48, i64 %56, i32 1
  store i32 -1, ptr %57, align 4, !tbaa !58
  %58 = add nuw nsw i64 %56, 1
  %59 = icmp eq i64 %58, %49
  br i1 %59, label %60, label %55, !llvm.loop !193

60:                                               ; preds = %55, %43
  %61 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  store i32 %32, ptr %61, align 4, !tbaa !129
  br label %81

62:                                               ; preds = %23
  %63 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  %64 = load i32, ptr %63, align 4, !tbaa !129
  %65 = load i32, ptr @hash_version, align 4, !tbaa !50
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !70
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  %74 = zext nneg i32 %69 to i64
  br label %75

75:                                               ; preds = %71, %75
  %76 = phi i64 [ %74, %71 ], [ %77, %75 ]
  %77 = add nsw i64 %76, -1
  %78 = getelementptr inbounds %struct.eqn_d, ptr %73, i64 %77, i32 1
  store i32 1, ptr %78, align 4, !tbaa !58
  %79 = icmp sgt i64 %76, 1
  br i1 %79, label %75, label %80, !llvm.loop !194

80:                                               ; preds = %75, %67
  store i32 %65, ptr %63, align 4, !tbaa !129
  br label %81

81:                                               ; preds = %62, %80, %60
  %82 = load i32, ptr %0, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !67
  %85 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !76
  %87 = mul nsw i32 %86, 3
  %88 = add nsw i32 %87, %84
  %89 = icmp sgt i32 %82, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  tail call fastcc void @omega_free_eliminations(ptr noundef nonnull %0, i32 noundef %86)
  br label %91

91:                                               ; preds = %90, %81
  %92 = load i32, ptr @may_be_red, align 4, !tbaa !50
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %96 = load i32, ptr %95, align 8, !tbaa !73
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, ptr %85, align 4, !tbaa !76
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 2)
  store i32 %102, ptr @omega_found_reduction, align 4, !tbaa !50
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %151, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %105, align 4, !tbaa !70
  store i32 0, ptr %83, align 8, !tbaa !67
  %106 = load ptr, ptr @omega_when_reduced, align 8, !tbaa !35
  tail call void %106(ptr noundef nonnull %0) #22
  br label %151

107:                                              ; preds = %98, %94, %91
  %108 = tail call i32 @omega_solve_problem(ptr noundef nonnull %0, i32 noundef 3)
  %109 = load i32, ptr @omega_found_reduction, align 4, !tbaa !50
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %151, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %85, align 4, !tbaa !76
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !65
  %117 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !61
  br label %128

119:                                              ; preds = %128, %111
  %120 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !73
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %151

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !65
  %126 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %127 = load ptr, ptr %126, align 8, !tbaa !74
  br label %139

128:                                              ; preds = %114, %128
  %129 = phi i64 [ 1, %114 ], [ %135, %128 ]
  %130 = getelementptr inbounds i32, ptr %118, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !50
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %116, i64 %132
  %134 = trunc i64 %129 to i32
  store i32 %134, ptr %133, align 4, !tbaa !50
  %135 = add nuw i64 %129, 1
  %136 = load i32, ptr %85, align 4, !tbaa !76
  %137 = sext i32 %136 to i64
  %138 = icmp slt i64 %129, %137
  br i1 %138, label %128, label %119, !llvm.loop !195

139:                                              ; preds = %123, %139
  %140 = phi i64 [ 0, %123 ], [ %147, %139 ]
  %141 = trunc i64 %140 to i32
  %142 = xor i32 %141, -1
  %143 = getelementptr inbounds %struct.eqn_d, ptr %127, i64 %140
  %144 = load i32, ptr %143, align 8, !tbaa !59
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %125, i64 %145
  store i32 %142, ptr %146, align 4, !tbaa !50
  %147 = add nuw nsw i64 %140, 1
  %148 = load i32, ptr %120, align 8, !tbaa !73
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %147, %149
  br i1 %150, label %139, label %151, !llvm.loop !196

151:                                              ; preds = %139, %119, %107, %101, %104
  %152 = load i32, ptr @omega_found_reduction, align 4, !tbaa !50
  ret i32 %152
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @omega_convert_eq_to_geqs(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 22, i64 1, ptr nonnull %3)
  br label %11

11:                                               ; preds = %9, %5, %2
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !70
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.eqn_d, ptr %13, i64 %16
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.eqn_d, ptr %19, i64 %20
  %22 = load i32, ptr %0, align 8, !tbaa !54
  %23 = load i32, ptr %21, align 8, !tbaa !59
  store i32 %23, ptr %17, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.eqn_d, ptr %19, i64 %20, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.eqn_d, ptr %13, i64 %16, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !58
  %27 = getelementptr inbounds %struct.eqn_d, ptr %19, i64 %20, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.eqn_d, ptr %13, i64 %16, i32 2
  store i32 %28, ptr %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.eqn_d, ptr %13, i64 %16, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.eqn_d, ptr %19, i64 %20, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = add nsw i32 %22, 1
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 4 %33, i64 %36, i1 false)
  %37 = load ptr, ptr %12, align 8, !tbaa !71
  %38 = load i32, ptr %14, align 4, !tbaa !70
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 %39, i32 1
  store i32 1, ptr %40, align 4, !tbaa !58
  %41 = add nsw i32 %38, 1
  store i32 %41, ptr %14, align 4, !tbaa !70
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 %42
  %44 = load ptr, ptr %18, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %20
  %46 = load i32, ptr %0, align 8, !tbaa !54
  %47 = load i32, ptr %45, align 8, !tbaa !59
  store i32 %47, ptr %43, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %20, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 %42, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !58
  %51 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %20, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !60
  %53 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 %42, i32 2
  store i32 %52, ptr %53, align 8, !tbaa !60
  %54 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 %42, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %20, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = add nsw i32 %46, 1
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %55, ptr align 4 %57, i64 %60, i1 false)
  %61 = load ptr, ptr %12, align 8, !tbaa !71
  %62 = load i32, ptr %14, align 4, !tbaa !70
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.eqn_d, ptr %61, i64 %63, i32 1
  store i32 1, ptr %64, align 4, !tbaa !58
  %65 = load i32, ptr %0, align 8, !tbaa !54
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %11, %67
  %68 = phi i64 [ %76, %67 ], [ 0, %11 ]
  %69 = load i32, ptr %14, align 4, !tbaa !70
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.eqn_d, ptr %61, i64 %70, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  %73 = getelementptr inbounds i32, ptr %72, i64 %68
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = sub nsw i32 0, %74
  store i32 %75, ptr %73, align 4, !tbaa !50
  %76 = add nuw nsw i64 %68, 1
  %77 = load i32, ptr %0, align 8, !tbaa !54
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %68, %78
  br i1 %79, label %67, label %80, !llvm.loop !197

80:                                               ; preds = %67, %11
  %81 = load i32, ptr %14, align 4, !tbaa !70
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %14, align 4, !tbaa !70
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @omega_print_problem(ptr noundef nonnull %83, ptr noundef nonnull %0)
  br label %90

90:                                               ; preds = %89, %85, %80
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omega_problem_reduced(ptr noundef %0) unnamed_addr #12 !prof !34 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 70, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @omega_eliminate_redundant(ptr noundef %0, i8 noundef zeroext 1), !range !89
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %229, label %9

9:                                                ; preds = %6, %1
  store i32 1, ptr @omega_found_reduction, align 4, !tbaa !50
  %10 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %173

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = zext nneg i32 %14 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %28, %20 ]
  %22 = phi i32 [ 0, %16 ], [ %27, %20 ]
  %23 = getelementptr inbounds %struct.eqn_d, ptr %18, i64 %21, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !60
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %22, %26
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %19
  br i1 %29, label %30, label %20, !llvm.loop !198

30:                                               ; preds = %20
  %31 = icmp ult i32 %27, 2
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi i1 [ true, %12 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  br i1 %33, label %173, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.param_info, ptr %36, i64 65, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !87
  %39 = sext i32 %38 to i64
  %40 = tail call ptr @xmalloc(i64 noundef %39) #22
  %41 = load i32, ptr %34, align 4, !tbaa !70
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %50, %35
  %44 = load i32, ptr %34, align 4, !tbaa !70
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %48 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %49 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  br label %63

50:                                               ; preds = %35, %50
  %51 = phi i64 [ %53, %50 ], [ 0, %35 ]
  %52 = getelementptr inbounds i8, ptr %40, i64 %51
  store i8 0, ptr %52, align 1, !tbaa !46
  %53 = add nuw nsw i64 %51, 1
  %54 = load i32, ptr %34, align 4, !tbaa !70
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %50, label %43, !llvm.loop !199

57:                                               ; preds = %142, %43
  %58 = phi i32 [ 0, %43 ], [ %143, %142 ]
  %59 = phi i32 [ %44, %43 ], [ %145, %142 ]
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %160

61:                                               ; preds = %57
  %62 = zext nneg i32 %59 to i64
  br label %149

63:                                               ; preds = %46, %142
  %64 = phi i64 [ 0, %46 ], [ %144, %142 ]
  %65 = phi i64 [ 1, %46 ], [ %148, %142 ]
  %66 = phi i32 [ 0, %46 ], [ %143, %142 ]
  %67 = load ptr, ptr %47, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.eqn_d, ptr %67, i64 %64, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !60
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %142

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.eqn_d, ptr %67, i64 %64, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !58
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %142

75:                                               ; preds = %71
  %76 = add nuw nsw i64 %64, 1
  %77 = load i32, ptr %34, align 4, !tbaa !70
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %142

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %40, i64 %64
  br label %82

82:                                               ; preds = %80, %136
  %83 = phi i64 [ %65, %80 ], [ %138, %136 ]
  %84 = phi i32 [ %66, %80 ], [ %137, %136 ]
  %85 = load ptr, ptr %47, align 8, !tbaa !71
  %86 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %83, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !58
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %136

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %83
  %91 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %64
  %92 = load i32, ptr %91, align 8, !tbaa !59
  %93 = load i32, ptr %90, align 8, !tbaa !59
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %64, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !56
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %83, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = load i32, ptr %101, align 4, !tbaa !50
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %99, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %83, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !60
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load ptr, ptr %48, align 8, !tbaa !68
  %111 = load i32, ptr %49, align 8, !tbaa !67
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %49, align 8, !tbaa !67
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.eqn_d, ptr %110, i64 %113
  %115 = load i32, ptr %0, align 8, !tbaa !54
  store i32 %92, ptr %114, align 8, !tbaa !59
  %116 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %64, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !58
  %118 = getelementptr inbounds %struct.eqn_d, ptr %110, i64 %113, i32 1
  store i32 %117, ptr %118, align 4, !tbaa !58
  %119 = getelementptr inbounds %struct.eqn_d, ptr %85, i64 %64, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !60
  %121 = getelementptr inbounds %struct.eqn_d, ptr %110, i64 %113, i32 2
  store i32 %120, ptr %121, align 8, !tbaa !60
  %122 = getelementptr inbounds %struct.eqn_d, ptr %110, i64 %113, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !56
  %124 = add nsw i32 %115, 1
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %123, ptr nonnull align 4 %98, i64 %126, i1 false)
  %127 = load i32, ptr %49, align 8, !tbaa !67
  %128 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %129 = getelementptr inbounds %struct.param_info, ptr %128, i64 66, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !87
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 2481, ptr noundef nonnull @.str.21) #22
  br label %133

133:                                              ; preds = %132, %109
  %134 = add nsw i32 %84, 1
  store i8 1, ptr %81, align 1, !tbaa !46
  %135 = getelementptr inbounds i8, ptr %40, i64 %83
  store i8 1, ptr %135, align 1, !tbaa !46
  br label %136

136:                                              ; preds = %133, %105, %96, %89, %82
  %137 = phi i32 [ %84, %82 ], [ %134, %133 ], [ %84, %105 ], [ %84, %96 ], [ %84, %89 ]
  %138 = add nuw nsw i64 %83, 1
  %139 = load i32, ptr %34, align 4, !tbaa !70
  %140 = trunc i64 %138 to i32
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %82, label %142, !llvm.loop !200

142:                                              ; preds = %136, %75, %71, %63
  %143 = phi i32 [ %66, %71 ], [ %66, %63 ], [ %66, %75 ], [ %137, %136 ]
  %144 = add nuw nsw i64 %64, 1
  %145 = load i32, ptr %34, align 4, !tbaa !70
  %146 = sext i32 %145 to i64
  %147 = icmp slt i64 %144, %146
  %148 = add nuw nsw i64 %65, 1
  br i1 %147, label %63, label %57, !llvm.loop !201

149:                                              ; preds = %61, %158
  %150 = phi i64 [ %62, %61 ], [ %151, %158 ]
  %151 = add nsw i64 %150, -1
  %152 = getelementptr inbounds i8, ptr %40, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !46
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = load i32, ptr %0, align 8, !tbaa !54
  %157 = trunc i64 %151 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %157, i32 noundef %156)
  br label %158

158:                                              ; preds = %155, %149
  %159 = icmp sgt i64 %150, 1
  br i1 %159, label %149, label %160, !llvm.loop !202

160:                                              ; preds = %158, %57
  %161 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %162 = icmp eq ptr %161, null
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %165 = and i32 %164, 8
  %166 = icmp ne i32 %165, 0
  %167 = icmp ne i32 %58, 0
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %161, ptr noundef nonnull @.str.191, i32 noundef %58)
  %171 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %171, ptr noundef %0)
  br label %172

172:                                              ; preds = %169, %163, %160
  tail call void @free(ptr noundef %40)
  br label %173

173:                                              ; preds = %172, %32, %9
  tail call fastcc void @chain_unprotect(ptr noundef %0)
  %174 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !76
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %182, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %179 = load ptr, ptr %178, align 8, !tbaa !65
  %180 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %181 = load ptr, ptr %180, align 8, !tbaa !61
  br label %191

182:                                              ; preds = %191, %173
  %183 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %184 = load i32, ptr %183, align 8, !tbaa !73
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %214

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %188 = load ptr, ptr %187, align 8, !tbaa !65
  %189 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %190 = load ptr, ptr %189, align 8, !tbaa !74
  br label %202

191:                                              ; preds = %177, %191
  %192 = phi i64 [ 1, %177 ], [ %198, %191 ]
  %193 = getelementptr inbounds i32, ptr %181, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !50
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, ptr %179, i64 %195
  %197 = trunc i64 %192 to i32
  store i32 %197, ptr %196, align 4, !tbaa !50
  %198 = add nuw i64 %192, 1
  %199 = load i32, ptr %174, align 4, !tbaa !76
  %200 = sext i32 %199 to i64
  %201 = icmp slt i64 %192, %200
  br i1 %201, label %191, label %182, !llvm.loop !203

202:                                              ; preds = %186, %202
  %203 = phi i64 [ 0, %186 ], [ %210, %202 ]
  %204 = trunc i64 %203 to i32
  %205 = xor i32 %204, -1
  %206 = getelementptr inbounds %struct.eqn_d, ptr %190, i64 %203
  %207 = load i32, ptr %206, align 8, !tbaa !59
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, ptr %188, i64 %208
  store i32 %205, ptr %209, align 4, !tbaa !50
  %210 = add nuw nsw i64 %203, 1
  %211 = load i32, ptr %183, align 8, !tbaa !73
  %212 = sext i32 %211 to i64
  %213 = icmp slt i64 %210, %212
  br i1 %213, label %202, label %214, !llvm.loop !204

214:                                              ; preds = %202, %182
  %215 = load ptr, ptr @omega_when_reduced, align 8, !tbaa !35
  tail call void %215(ptr noundef %0) #22
  %216 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %217 = icmp eq ptr %216, null
  br i1 %217, label %229, label %218

218:                                              ; preds = %214
  %219 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %218
  %223 = tail call i64 @fwrite(ptr nonnull @.str.130, i64 44, i64 1, ptr nonnull %216)
  %224 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %225 = tail call i64 @fwrite(ptr nonnull @.str.131, i64 17, i64 1, ptr %224)
  %226 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %226, ptr noundef %0)
  %227 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %228 = tail call i64 @fwrite(ptr nonnull @.str.130, i64 44, i64 1, ptr %227)
  br label %229

229:                                              ; preds = %6, %222, %218, %214
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @omega_problem_has_red_equations(ptr noundef %0) local_unnamed_addr #12 !prof !34 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 28, i64 1, ptr nonnull %2)
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %10, ptr noundef %0)
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %14 = load i32, ptr @may_be_red, align 4, !tbaa !50
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @may_be_red, align 4, !tbaa !50
  store i1 true, ptr @create_color, align 1
  %16 = tail call i32 @omega_simplify_problem(ptr noundef %0)
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr @may_be_red, align 4, !tbaa !50
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr @may_be_red, align 4, !tbaa !50
  %20 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  br i1 %17, label %22, label %53

22:                                               ; preds = %11
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 14, i64 1, ptr nonnull %23)
  br label %31

31:                                               ; preds = %29, %25, %22
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  store i32 0, ptr %32, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %33, align 4, !tbaa !70
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  store i32 1, ptr %34, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 0, i32 2
  store i32 1, ptr %37, align 8, !tbaa !60
  %38 = load i32, ptr %0, align 8, !tbaa !54
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = zext nneg i32 %38 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = add nsw i32 %38, -1
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 %43, %46
  %48 = shl nsw i64 %47, 2
  %49 = getelementptr i8, ptr %42, i64 %48
  tail call void @llvm.memset.p0.i64(ptr align 4 %49, i8 0, i64 %44, i1 false), !tbaa !50
  br label %50

50:                                               ; preds = %40, %31
  %51 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  store i32 1, ptr %52, align 4, !tbaa !50
  br label %458

53:                                               ; preds = %11
  %54 = load i32, ptr %0, align 8, !tbaa !54
  %55 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.param_info, ptr %55, i64 64, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !87
  %58 = sext i32 %57 to i64
  %59 = tail call ptr @xmalloc(i64 noundef %58) #22
  %60 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.param_info, ptr %60, i64 64, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !87
  %63 = sext i32 %62 to i64
  %64 = tail call ptr @xmalloc(i64 noundef %63) #22
  %65 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.param_info, ptr %65, i64 65, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !87
  %68 = sext i32 %67 to i64
  %69 = tail call ptr @xmalloc(i64 noundef %68) #22
  %70 = icmp sgt i32 %54, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %53
  %72 = zext nneg i32 %54 to i64
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi i64 [ %72, %71 ], [ %77, %73 ]
  %75 = getelementptr inbounds i8, ptr %59, i64 %74
  store i8 0, ptr %75, align 1, !tbaa !46
  %76 = getelementptr inbounds i8, ptr %64, i64 %74
  store i8 0, ptr %76, align 1, !tbaa !46
  %77 = add nsw i64 %74, -1
  %78 = icmp sgt i64 %74, 1
  br i1 %78, label %73, label %79, !llvm.loop !205

79:                                               ; preds = %73, %53
  %80 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !70
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %85 = icmp slt i32 %54, 1
  %86 = zext i32 %54 to i64
  %87 = zext nneg i32 %81 to i64
  br label %99

88:                                               ; preds = %121, %79
  %89 = icmp sgt i32 %54, 0
  %90 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %91 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %92 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %93 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %94 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %95 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %96 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %97 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %98 = zext i32 %54 to i64
  br label %126

99:                                               ; preds = %83, %121
  %100 = phi i64 [ %87, %83 ], [ %101, %121 ]
  %101 = add nsw i64 %100, -1
  %102 = getelementptr inbounds i8, ptr %69, i64 %101
  store i8 0, ptr %102, align 1, !tbaa !46
  %103 = load ptr, ptr %84, align 8, !tbaa !71
  %104 = getelementptr inbounds %struct.eqn_d, ptr %103, i64 %101, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !60
  %106 = icmp ne i32 %105, 1
  %107 = select i1 %106, i1 true, i1 %85
  br i1 %107, label %121, label %108

108:                                              ; preds = %99, %118
  %109 = phi i64 [ %119, %118 ], [ %86, %99 ]
  %110 = load ptr, ptr %84, align 8, !tbaa !71
  %111 = getelementptr inbounds %struct.eqn_d, ptr %110, i64 %101, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !56
  %113 = getelementptr inbounds i32, ptr %112, i64 %109
  %114 = load i32, ptr %113, align 4, !tbaa !50
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds i8, ptr %59, i64 %109
  store i8 1, ptr %117, align 1, !tbaa !46
  br label %118

118:                                              ; preds = %116, %108
  %119 = add nsw i64 %109, -1
  %120 = icmp sgt i64 %109, 1
  br i1 %120, label %108, label %121, !llvm.loop !206

121:                                              ; preds = %118, %99
  %122 = icmp sgt i64 %100, 1
  br i1 %122, label %99, label %88, !llvm.loop !207

123:                                              ; preds = %292, %126
  %124 = phi i8 [ 0, %126 ], [ %293, %292 ]
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %296, label %126, !llvm.loop !208

126:                                              ; preds = %88, %123
  br i1 %89, label %127, label %123

127:                                              ; preds = %126, %292
  %128 = phi i64 [ %294, %292 ], [ %98, %126 ]
  %129 = phi i8 [ %293, %292 ], [ 0, %126 ]
  %130 = getelementptr inbounds i8, ptr %59, i64 %128
  %131 = load i8, ptr %130, align 1, !tbaa !46
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %292

133:                                              ; preds = %127
  %134 = getelementptr inbounds i8, ptr %64, i64 %128
  %135 = load i8, ptr %134, align 1, !tbaa !46
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %292

137:                                              ; preds = %133
  %138 = load i32, ptr %80, align 4, !tbaa !70
  %139 = add i32 %138, -1
  %140 = icmp sgt i32 %138, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = zext i32 %139 to i64
  br label %143

143:                                              ; preds = %141, %156
  %144 = phi i64 [ %142, %141 ], [ %157, %156 ]
  %145 = phi i32 [ %138, %141 ], [ %159, %156 ]
  %146 = getelementptr inbounds i8, ptr %69, i64 %144
  %147 = load i8, ptr %146, align 1, !tbaa !46
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load ptr, ptr %90, align 8, !tbaa !71
  %151 = getelementptr inbounds %struct.eqn_d, ptr %150, i64 %144, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !56
  %153 = getelementptr inbounds i32, ptr %152, i64 %128
  %154 = load i32, ptr %153, align 4, !tbaa !50
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149, %143
  %157 = add nsw i64 %144, -1
  %158 = icmp sgt i64 %144, 0
  %159 = trunc i64 %144 to i32
  br i1 %158, label %143, label %162, !llvm.loop !209

160:                                              ; preds = %149
  %161 = trunc i64 %144 to i32
  br label %162

162:                                              ; preds = %160, %156, %137
  %163 = phi i32 [ %138, %137 ], [ %145, %160 ], [ 0, %156 ]
  %164 = phi i32 [ %139, %137 ], [ %161, %160 ], [ -1, %156 ]
  %165 = icmp slt i32 %163, 1
  br i1 %165, label %215, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %91, align 8, !tbaa !71
  %168 = zext nneg i32 %164 to i64
  %169 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %168, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !56
  %171 = getelementptr inbounds i32, ptr %170, i64 %128
  %172 = load i32, ptr %171, align 4, !tbaa !50
  %173 = icmp sgt i32 %172, 0
  %174 = icmp eq i32 %163, 1
  br i1 %173, label %175, label %193

175:                                              ; preds = %166
  br i1 %174, label %215, label %176

176:                                              ; preds = %175
  %177 = add nsw i32 %163, -2
  %178 = zext i32 %177 to i64
  br label %179

179:                                              ; preds = %176, %190
  %180 = phi i64 [ %178, %176 ], [ %191, %190 ]
  %181 = getelementptr inbounds i8, ptr %69, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !46
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %180, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !56
  %187 = getelementptr inbounds i32, ptr %186, i64 %128
  %188 = load i32, ptr %187, align 4, !tbaa !50
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %211, label %190

190:                                              ; preds = %184, %179
  %191 = add nsw i64 %180, -1
  %192 = icmp sgt i64 %180, 0
  br i1 %192, label %179, label %215, !llvm.loop !210

193:                                              ; preds = %166
  br i1 %174, label %215, label %194

194:                                              ; preds = %193
  %195 = add nsw i32 %163, -2
  %196 = zext i32 %195 to i64
  br label %197

197:                                              ; preds = %194, %208
  %198 = phi i64 [ %196, %194 ], [ %209, %208 ]
  %199 = getelementptr inbounds i8, ptr %69, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !46
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.eqn_d, ptr %167, i64 %198, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !56
  %205 = getelementptr inbounds i32, ptr %204, i64 %128
  %206 = load i32, ptr %205, align 4, !tbaa !50
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %202, %197
  %209 = add nsw i64 %198, -1
  %210 = icmp sgt i64 %198, 0
  br i1 %210, label %197, label %215, !llvm.loop !211

211:                                              ; preds = %184
  %212 = trunc i64 %180 to i32
  br label %215

213:                                              ; preds = %202
  %214 = trunc i64 %198 to i32
  br label %215

215:                                              ; preds = %213, %208, %211, %190, %193, %175, %162
  %216 = phi i32 [ %164, %162 ], [ -1, %175 ], [ -1, %193 ], [ %212, %211 ], [ -1, %190 ], [ %214, %213 ], [ -1, %208 ]
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %292

218:                                              ; preds = %215
  %219 = load i32, ptr %92, align 8, !tbaa !73
  %220 = zext i32 %219 to i64
  br label %221

221:                                              ; preds = %225, %218
  %222 = phi i64 [ %227, %225 ], [ %220, %218 ]
  %223 = trunc i64 %222 to i32
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %221
  %226 = add nsw i64 %222, -1
  %227 = add nsw i64 %222, -1
  %228 = load ptr, ptr %93, align 8, !tbaa !74
  %229 = getelementptr inbounds %struct.eqn_d, ptr %228, i64 %226, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !56
  %231 = getelementptr inbounds i32, ptr %230, i64 %128
  %232 = load i32, ptr %231, align 4, !tbaa !50
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %221, label %292, !llvm.loop !212

234:                                              ; preds = %221
  %235 = load i32, ptr %94, align 8, !tbaa !67
  %236 = zext i32 %235 to i64
  br label %237

237:                                              ; preds = %241, %234
  %238 = phi i64 [ %243, %241 ], [ %236, %234 ]
  %239 = trunc i64 %238 to i32
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %237
  %242 = add nsw i64 %238, -1
  %243 = add nsw i64 %238, -1
  %244 = load ptr, ptr %95, align 8, !tbaa !68
  %245 = getelementptr inbounds %struct.eqn_d, ptr %244, i64 %242, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !56
  %247 = getelementptr inbounds i32, ptr %246, i64 %128
  %248 = load i32, ptr %247, align 4, !tbaa !50
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %237, label %292, !llvm.loop !213

250:                                              ; preds = %237
  %251 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %252 = icmp eq ptr %251, null
  br i1 %252, label %274, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %255 = and i32 %254, 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %274, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %96, align 8, !tbaa !61
  %259 = getelementptr inbounds i32, ptr %258, i64 %128
  %260 = load i32, ptr %259, align 4, !tbaa !50
  %261 = icmp ult i32 %260, 21
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = zext nneg i32 %260 to i64
  %264 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %263
  br label %271

265:                                              ; preds = %257
  %266 = icmp ugt i32 %260, -20
  br i1 %266, label %267, label %271

267:                                              ; preds = %265
  %268 = add nsw i32 %260, 40
  %269 = zext nneg i32 %268 to i64
  %270 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %269
  br label %271

271:                                              ; preds = %267, %265, %262
  %272 = phi ptr [ %264, %262 ], [ %270, %267 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %265 ]
  %273 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %251, ptr noundef nonnull @.str.182, ptr noundef nonnull %272)
  br label %274

274:                                              ; preds = %271, %253, %250
  %275 = icmp sgt i32 %164, -1
  br i1 %275, label %276, label %291

276:                                              ; preds = %274
  %277 = zext nneg i32 %164 to i64
  br label %278

278:                                              ; preds = %276, %288
  %279 = phi i64 [ %277, %276 ], [ %289, %288 ]
  %280 = load ptr, ptr %97, align 8, !tbaa !71
  %281 = getelementptr inbounds %struct.eqn_d, ptr %280, i64 %279, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !56
  %283 = getelementptr inbounds i32, ptr %282, i64 %128
  %284 = load i32, ptr %283, align 4, !tbaa !50
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %278
  %287 = getelementptr inbounds i8, ptr %69, i64 %279
  store i8 1, ptr %287, align 1, !tbaa !46
  br label %288

288:                                              ; preds = %286, %278
  %289 = add nsw i64 %279, -1
  %290 = icmp sgt i64 %279, 0
  br i1 %290, label %278, label %291, !llvm.loop !214

291:                                              ; preds = %288, %274
  store i8 1, ptr %134, align 1, !tbaa !46
  br label %292

292:                                              ; preds = %225, %241, %291, %215, %133, %127
  %293 = phi i8 [ %129, %127 ], [ %129, %133 ], [ %129, %215 ], [ 1, %291 ], [ %129, %241 ], [ %129, %225 ]
  %294 = add nsw i64 %128, -1
  %295 = icmp sgt i64 %128, 1
  br i1 %295, label %127, label %123, !llvm.loop !215

296:                                              ; preds = %123
  %297 = load i32, ptr %80, align 4, !tbaa !70
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = zext nneg i32 %297 to i64
  br label %303

301:                                              ; preds = %311, %296
  %302 = icmp sgt i32 %54, 0
  br i1 %302, label %313, label %323

303:                                              ; preds = %299, %311
  %304 = phi i64 [ %300, %299 ], [ %305, %311 ]
  %305 = add nsw i64 %304, -1
  %306 = getelementptr inbounds i8, ptr %69, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !46
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %303
  %310 = trunc i64 %305 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %310, i32 noundef %54)
  br label %311

311:                                              ; preds = %309, %303
  %312 = icmp sgt i64 %304, 1
  br i1 %312, label %303, label %301, !llvm.loop !216

313:                                              ; preds = %301, %320
  %314 = phi i64 [ %321, %320 ], [ %98, %301 ]
  %315 = getelementptr inbounds i8, ptr %64, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !46
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %313
  %319 = trunc i64 %314 to i32
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %319)
  br label %320

320:                                              ; preds = %318, %313
  %321 = add nsw i64 %314, -1
  %322 = icmp sgt i64 %314, 1
  br i1 %322, label %313, label %323, !llvm.loop !217

323:                                              ; preds = %320, %301
  %324 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %325 = icmp eq ptr %324, null
  br i1 %325, label %335, label %326

326:                                              ; preds = %323
  %327 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %328 = and i32 %327, 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %326
  %331 = tail call i64 @fwrite(ptr nonnull @.str.183, i64 30, i64 1, ptr nonnull %324)
  %332 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %332, ptr noundef nonnull %0)
  %333 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %334 = tail call i32 @fputc(i32 10, ptr %333)
  br label %335

335:                                              ; preds = %323, %326, %330
  tail call void @free(ptr noundef %59)
  tail call void @free(ptr noundef %64)
  tail call void @free(ptr noundef %69)
  %336 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %337 = load i32, ptr %336, align 8, !tbaa !67
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 4889, ptr noundef nonnull @.str.21) #22
  br label %340

340:                                              ; preds = %335, %339
  %341 = load i32, ptr %80, align 4, !tbaa !70
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %458

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %345 = load ptr, ptr %344, align 8, !tbaa !71
  %346 = zext nneg i32 %341 to i64
  br label %347

347:                                              ; preds = %343, %347
  %348 = phi i64 [ %346, %343 ], [ %350, %347 ]
  %349 = phi i8 [ 0, %343 ], [ %354, %347 ]
  %350 = add nsw i64 %348, -1
  %351 = getelementptr inbounds %struct.eqn_d, ptr %345, i64 %350, i32 2
  %352 = load i32, ptr %351, align 8, !tbaa !60
  %353 = icmp eq i32 %352, 1
  %354 = select i1 %353, i8 1, i8 %349
  %355 = icmp sgt i64 %348, 1
  br i1 %355, label %347, label %356, !llvm.loop !218

356:                                              ; preds = %347
  %357 = icmp eq i8 %354, 0
  br i1 %357, label %458, label %358

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %360 = load i32, ptr %359, align 4, !tbaa !76
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %409

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %364 = zext nneg i32 %341 to i64
  %365 = zext nneg i32 %360 to i64
  br label %369

366:                                              ; preds = %396
  %367 = add nsw i64 %370, -1
  %368 = icmp sgt i64 %370, 1
  br i1 %368, label %369, label %409, !llvm.loop !219

369:                                              ; preds = %362, %366
  %370 = phi i64 [ %365, %362 ], [ %367, %366 ]
  %371 = load ptr, ptr %363, align 8, !tbaa !71
  br label %372

372:                                              ; preds = %369, %392
  %373 = phi i64 [ %364, %369 ], [ %376, %392 ]
  %374 = phi i32 [ 0, %369 ], [ %394, %392 ]
  %375 = phi i32 [ 0, %369 ], [ %393, %392 ]
  %376 = add nsw i64 %373, -1
  %377 = getelementptr inbounds %struct.eqn_d, ptr %371, i64 %376, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !56
  %379 = getelementptr inbounds i32, ptr %378, i64 %370
  %380 = load i32, ptr %379, align 4, !tbaa !50
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %392, label %382

382:                                              ; preds = %372
  %383 = icmp sgt i32 %380, 0
  %384 = getelementptr inbounds %struct.eqn_d, ptr %371, i64 %376, i32 2
  %385 = load i32, ptr %384, align 8, !tbaa !60
  %386 = icmp eq i32 %385, 1
  %387 = select i1 %386, i32 2, i32 1
  br i1 %383, label %388, label %390

388:                                              ; preds = %382
  %389 = or i32 %387, %374
  br label %392

390:                                              ; preds = %382
  %391 = or i32 %387, %375
  br label %392

392:                                              ; preds = %372, %390, %388
  %393 = phi i32 [ %375, %388 ], [ %391, %390 ], [ %375, %372 ]
  %394 = phi i32 [ %389, %388 ], [ %374, %390 ], [ %374, %372 ]
  %395 = icmp sgt i64 %373, 1
  br i1 %395, label %372, label %396, !llvm.loop !220

396:                                              ; preds = %392
  %397 = icmp ne i32 %393, 2
  %398 = icmp ne i32 %394, 2
  %399 = select i1 %397, i1 %398, i1 false
  br i1 %399, label %366, label %400

400:                                              ; preds = %396
  %401 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %402 = icmp eq ptr %401, null
  br i1 %402, label %458, label %403

403:                                              ; preds = %400
  %404 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %405 = and i32 %404, 8
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %458, label %407

407:                                              ; preds = %403
  %408 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 38, i64 1, ptr nonnull %401)
  br label %458

409:                                              ; preds = %366, %358
  %410 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %411 = icmp eq ptr %410, null
  br i1 %411, label %418, label %412

412:                                              ; preds = %409
  %413 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %414 = and i32 %413, 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %418, label %416

416:                                              ; preds = %412
  %417 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 68, i64 1, ptr nonnull %410)
  br label %418

418:                                              ; preds = %416, %412, %409
  %419 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  tail call void @omega_eliminate_red(ptr noundef nonnull %0, i8 noundef zeroext 1)
  %421 = load i32, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %422 = add nsw i32 %421, -1
  store i32 %422, ptr @please_no_equalities_in_simplified_problems, align 4, !tbaa !50
  %423 = load i32, ptr %336, align 8, !tbaa !67
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %418
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 4942, ptr noundef nonnull @.str.21) #22
  br label %426

426:                                              ; preds = %418, %425
  %427 = load i32, ptr %80, align 4, !tbaa !70
  %428 = icmp sgt i32 %427, 0
  br i1 %428, label %429, label %442

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %431 = load ptr, ptr %430, align 8, !tbaa !71
  %432 = zext nneg i32 %427 to i64
  br label %433

433:                                              ; preds = %429, %433
  %434 = phi i64 [ %432, %429 ], [ %436, %433 ]
  %435 = phi i8 [ 0, %429 ], [ %440, %433 ]
  %436 = add nsw i64 %434, -1
  %437 = getelementptr inbounds %struct.eqn_d, ptr %431, i64 %436, i32 2
  %438 = load i32, ptr %437, align 8, !tbaa !60
  %439 = icmp eq i32 %438, 1
  %440 = select i1 %439, i8 1, i8 %435
  %441 = icmp sgt i64 %434, 1
  br i1 %441, label %433, label %442, !llvm.loop !221

442:                                              ; preds = %433, %426
  %443 = phi i8 [ 0, %426 ], [ %440, %433 ]
  %444 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %445 = icmp eq ptr %444, null
  br i1 %445, label %458, label %446

446:                                              ; preds = %442
  %447 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %448 = and i32 %447, 8
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %458, label %450

450:                                              ; preds = %446
  %451 = icmp eq i8 %443, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %450
  %453 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 58, i64 1, ptr nonnull %444)
  br label %456

454:                                              ; preds = %450
  %455 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 42, i64 1, ptr nonnull %444)
  br label %456

456:                                              ; preds = %454, %452
  %457 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %457, ptr noundef nonnull %0)
  br label %458

458:                                              ; preds = %340, %400, %403, %407, %456, %446, %442, %356, %50
  %459 = phi i8 [ 1, %50 ], [ 0, %356 ], [ %443, %442 ], [ %443, %446 ], [ %443, %456 ], [ 1, %407 ], [ 1, %403 ], [ 1, %400 ], [ 0, %340 ]
  ret i8 %459
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @omega_simplify_approximate(ptr noundef %0) local_unnamed_addr #12 !prof !34 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 27, i64 1, ptr nonnull %2)
  br label %10

10:                                               ; preds = %8, %4, %1
  store i1 true, ptr @in_approximate_mode, align 1
  %11 = tail call i32 @omega_simplify_problem(ptr noundef %0)
  store i1 false, ptr @in_approximate_mode, align 1
  %12 = load i32, ptr %0, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !76
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 4990, ptr noundef nonnull @.str.21) #22
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 26, i64 1, ptr nonnull %18)
  br label %26

26:                                               ; preds = %24, %20, %17
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omega_free_eliminations(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %11 = sext i32 %1 to i64
  br label %16

12:                                               ; preds = %175, %16
  %13 = phi i8 [ 0, %16 ], [ %176, %175 ]
  %14 = phi i32 [ %17, %16 ], [ %177, %175 ]
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %180, label %16, !llvm.loop !222

16:                                               ; preds = %2, %12
  %17 = phi i32 [ %3, %2 ], [ %14, %12 ]
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %19, label %12

19:                                               ; preds = %16
  %20 = sext i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %175
  %22 = phi i64 [ %20, %19 ], [ %178, %175 ]
  %23 = phi i32 [ %17, %19 ], [ %177, %175 ]
  %24 = phi i8 [ 0, %19 ], [ %176, %175 ]
  %25 = load i32, ptr %4, align 4, !tbaa !70
  %26 = zext i32 %25 to i64
  %27 = tail call i32 @llvm.smin.i32(i32 %25, i32 0)
  %28 = add i32 %27, -1
  br label %29

29:                                               ; preds = %33, %21
  %30 = phi i64 [ %34, %33 ], [ %26, %21 ]
  %31 = trunc i64 %30 to i32
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = add nsw i64 %30, -1
  %35 = load ptr, ptr %5, align 8, !tbaa !71
  %36 = and i64 %34, 4294967295
  %37 = getelementptr inbounds %struct.eqn_d, ptr %35, i64 %36, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = getelementptr inbounds i32, ptr %38, i64 %22
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %29, label %42, !llvm.loop !223

42:                                               ; preds = %33
  %43 = trunc i64 %30 to i32
  %44 = trunc i64 %34 to i32
  br label %45

45:                                               ; preds = %29, %42
  %46 = phi i32 [ %43, %42 ], [ %27, %29 ]
  %47 = phi i32 [ %44, %42 ], [ %28, %29 ]
  %48 = icmp slt i32 %46, 1
  br i1 %48, label %86, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %6, align 8, !tbaa !71
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %51, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !56
  %54 = getelementptr inbounds i32, ptr %53, i64 %22
  %55 = load i32, ptr %54, align 4, !tbaa !50
  %56 = icmp sgt i32 %55, 0
  %57 = icmp eq i32 %46, 1
  br i1 %56, label %58, label %72

58:                                               ; preds = %49
  br i1 %57, label %86, label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %46, -2
  br label %61

61:                                               ; preds = %59, %69
  %62 = phi i32 [ %70, %69 ], [ %60, %59 ]
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %63, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  %66 = getelementptr inbounds i32, ptr %65, i64 %22
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %61
  %70 = add nsw i32 %62, -1
  %71 = icmp sgt i32 %62, 0
  br i1 %71, label %61, label %86, !llvm.loop !224

72:                                               ; preds = %49
  br i1 %57, label %86, label %73

73:                                               ; preds = %72
  %74 = add nsw i32 %46, -2
  br label %75

75:                                               ; preds = %73, %83
  %76 = phi i32 [ %84, %83 ], [ %74, %73 ]
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.eqn_d, ptr %50, i64 %77, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = getelementptr inbounds i32, ptr %79, i64 %22
  %81 = load i32, ptr %80, align 4, !tbaa !50
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = add nsw i32 %76, -1
  %85 = icmp sgt i32 %76, 0
  br i1 %85, label %75, label %86, !llvm.loop !225

86:                                               ; preds = %83, %75, %69, %61, %72, %58, %45
  %87 = phi i32 [ %47, %45 ], [ -1, %58 ], [ -1, %72 ], [ %62, %61 ], [ -1, %69 ], [ %76, %75 ], [ -1, %83 ]
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %175

89:                                               ; preds = %86
  %90 = load i32, ptr %7, align 8, !tbaa !73
  %91 = zext i32 %90 to i64
  br label %92

92:                                               ; preds = %96, %89
  %93 = phi i64 [ %98, %96 ], [ %91, %89 ]
  %94 = trunc i64 %93 to i32
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = add nsw i64 %93, -1
  %98 = add nsw i64 %93, -1
  %99 = load ptr, ptr %8, align 8, !tbaa !74
  %100 = getelementptr inbounds %struct.eqn_d, ptr %99, i64 %97, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = getelementptr inbounds i32, ptr %101, i64 %22
  %103 = load i32, ptr %102, align 4, !tbaa !50
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %92, label %175, !llvm.loop !226

105:                                              ; preds = %92
  %106 = load i32, ptr %9, align 8, !tbaa !67
  %107 = zext i32 %106 to i64
  br label %108

108:                                              ; preds = %112, %105
  %109 = phi i64 [ %114, %112 ], [ %107, %105 ]
  %110 = trunc i64 %109 to i32
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = add nsw i64 %109, -1
  %114 = add nsw i64 %109, -1
  %115 = load ptr, ptr %10, align 8, !tbaa !68
  %116 = getelementptr inbounds %struct.eqn_d, ptr %115, i64 %113, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !56
  %118 = getelementptr inbounds i32, ptr %117, i64 %22
  %119 = load i32, ptr %118, align 4, !tbaa !50
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %108, label %175, !llvm.loop !227

121:                                              ; preds = %108
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %123 = icmp eq ptr %122, null
  br i1 %123, label %146, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %130 = load ptr, ptr %129, align 8, !tbaa !61
  %131 = getelementptr inbounds i32, ptr %130, i64 %22
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = icmp ult i32 %132, 21
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = zext nneg i32 %132 to i64
  %136 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %135
  br label %143

137:                                              ; preds = %128
  %138 = icmp ugt i32 %132, -20
  br i1 %138, label %139, label %143

139:                                              ; preds = %137
  %140 = add nsw i32 %132, 40
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %141
  br label %143

143:                                              ; preds = %134, %137, %139
  %144 = phi ptr [ %136, %134 ], [ %142, %139 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %137 ]
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %122, ptr noundef nonnull @.str.194, ptr noundef nonnull %144)
  br label %146

146:                                              ; preds = %143, %124, %121
  br i1 %32, label %147, label %171

147:                                              ; preds = %146
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %47, i32 noundef %23)
  %148 = icmp eq i32 %46, 1
  br i1 %148, label %167, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %151 = add i32 %46, -2
  %152 = zext i32 %151 to i64
  br label %153

153:                                              ; preds = %149, %163
  %154 = phi i64 [ %152, %149 ], [ %164, %163 ]
  %155 = load ptr, ptr %150, align 8, !tbaa !71
  %156 = getelementptr inbounds %struct.eqn_d, ptr %155, i64 %154, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !56
  %158 = getelementptr inbounds i32, ptr %157, i64 %22
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = trunc i64 %154 to i32
  tail call fastcc void @omega_delete_geq(ptr noundef nonnull %0, i32 noundef %162, i32 noundef %23)
  br label %163

163:                                              ; preds = %153, %161
  %164 = add nsw i64 %154, -1
  %165 = trunc i64 %154 to i32
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %153, label %167, !llvm.loop !228

167:                                              ; preds = %163, %147
  %168 = sext i32 %23 to i64
  %169 = icmp slt i64 %22, %168
  %170 = zext i1 %169 to i8
  br label %171

171:                                              ; preds = %167, %146
  %172 = phi i8 [ %170, %167 ], [ %24, %146 ]
  %173 = trunc i64 %22 to i32
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %173)
  %174 = load i32, ptr %0, align 8, !tbaa !54
  br label %175

175:                                              ; preds = %96, %112, %171, %86
  %176 = phi i8 [ %24, %86 ], [ %172, %171 ], [ %24, %112 ], [ %24, %96 ]
  %177 = phi i32 [ %23, %86 ], [ %174, %171 ], [ %23, %112 ], [ %23, %96 ]
  %178 = add nsw i64 %22, -1
  %179 = icmp sgt i64 %178, %11
  br i1 %179, label %21, label %12, !llvm.loop !229

180:                                              ; preds = %12
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %182 = icmp eq ptr %181, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %180
  %184 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %185 = and i32 %184, 8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  %188 = tail call i64 @fwrite(ptr nonnull @.str.195, i64 26, i64 1, ptr nonnull %181)
  %189 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %189, ptr noundef nonnull %0)
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %191 = tail call i32 @fputc(i32 10, ptr %190)
  br label %192

192:                                              ; preds = %187, %183, %180
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @omega_unprotect_variable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !34 {
  %3 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = xor i32 %7, -1
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !73
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 8, !tbaa !73
  %14 = icmp sgt i32 %13, %10
  br i1 %14, label %15, label %389

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = zext nneg i32 %10 to i64
  %19 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %18
  %20 = sext i32 %13 to i64
  %21 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %20
  %22 = load i32, ptr %0, align 8, !tbaa !54
  %23 = load i32, ptr %21, align 8, !tbaa !59
  store i32 %23, ptr %19, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %20, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %18, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !58
  %27 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %20, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %18, i32 2
  store i32 %28, ptr %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %18, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %20, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = add nsw i32 %22, 1
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 4 %33, i64 %36, i1 false)
  %37 = load ptr, ptr %3, align 8, !tbaa !65
  %38 = load ptr, ptr %16, align 8, !tbaa !74
  %39 = getelementptr inbounds %struct.eqn_d, ptr %38, i64 %18
  %40 = load i32, ptr %39, align 8, !tbaa !59
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  store i32 %7, ptr %42, align 4, !tbaa !50
  br label %389

43:                                               ; preds = %2
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 64, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !87
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  %49 = tail call ptr @xmalloc(i64 noundef %48) #22
  %50 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !73
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = zext nneg i32 %7 to i64
  %57 = zext nneg i32 %51 to i64
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %57, %53 ], [ %60, %58 ]
  %60 = add nsw i64 %59, -1
  %61 = getelementptr inbounds %struct.eqn_d, ptr %55, i64 %60, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = getelementptr inbounds i32, ptr %62, i64 %56
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds i32, ptr %49, i64 %60
  store i32 %66, ptr %67, align 4, !tbaa !50
  %68 = icmp sgt i64 %59, 1
  br i1 %68, label %58, label %69, !llvm.loop !230

69:                                               ; preds = %58, %43
  %70 = load i32, ptr %50, align 8, !tbaa !73
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %306

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %74 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %75 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %76 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %77 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %78 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %79 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %80 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %81 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %82 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %83 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %84 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %85 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %86 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %87 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %88 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %89 = zext nneg i32 %70 to i64
  br label %90

90:                                               ; preds = %72, %304
  %91 = phi i64 [ %89, %72 ], [ %92, %304 ]
  %92 = add nsw i64 %91, -1
  %93 = getelementptr inbounds i32, ptr %49, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %304, label %96

96:                                               ; preds = %90
  %97 = load i32, ptr %0, align 8, !tbaa !54
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %0, align 8, !tbaa !54
  %99 = load i32, ptr %73, align 4, !tbaa !76
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %73, align 4, !tbaa !76
  %101 = icmp slt i32 %99, %97
  br i1 %101, label %102, label %184

102:                                              ; preds = %96
  %103 = load i32, ptr %79, align 4, !tbaa !70
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load ptr, ptr %80, align 8, !tbaa !71
  %107 = zext nneg i32 %103 to i64
  br label %108

108:                                              ; preds = %105, %108
  %109 = phi i64 [ %107, %105 ], [ %110, %108 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds %struct.eqn_d, ptr %106, i64 %110, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !56
  %113 = load i32, ptr %73, align 4, !tbaa !76
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %112, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !50
  %117 = load i32, ptr %0, align 8, !tbaa !54
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %112, i64 %118
  store i32 %116, ptr %119, align 4, !tbaa !50
  %120 = load i32, ptr %73, align 4, !tbaa !76
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %112, i64 %121
  store i32 0, ptr %122, align 4, !tbaa !50
  %123 = icmp sgt i64 %109, 1
  br i1 %123, label %108, label %124, !llvm.loop !231

124:                                              ; preds = %108, %102
  %125 = load i32, ptr %81, align 8, !tbaa !67
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load ptr, ptr %82, align 8, !tbaa !68
  %129 = zext nneg i32 %125 to i64
  br label %130

130:                                              ; preds = %127, %130
  %131 = phi i64 [ %129, %127 ], [ %132, %130 ]
  %132 = add nsw i64 %131, -1
  %133 = getelementptr inbounds %struct.eqn_d, ptr %128, i64 %132, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !56
  %135 = load i32, ptr %73, align 4, !tbaa !76
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %134, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !50
  %139 = load i32, ptr %0, align 8, !tbaa !54
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, ptr %134, i64 %140
  store i32 %138, ptr %141, align 4, !tbaa !50
  %142 = load i32, ptr %73, align 4, !tbaa !76
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %134, i64 %143
  store i32 0, ptr %144, align 4, !tbaa !50
  %145 = icmp sgt i64 %131, 1
  br i1 %145, label %130, label %146, !llvm.loop !232

146:                                              ; preds = %130, %124
  %147 = load i32, ptr %50, align 8, !tbaa !73
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = load ptr, ptr %83, align 8, !tbaa !74
  %151 = zext nneg i32 %147 to i64
  br label %152

152:                                              ; preds = %149, %152
  %153 = phi i64 [ %151, %149 ], [ %154, %152 ]
  %154 = add nsw i64 %153, -1
  %155 = getelementptr inbounds %struct.eqn_d, ptr %150, i64 %154, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  %157 = load i32, ptr %73, align 4, !tbaa !76
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %156, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !50
  %161 = load i32, ptr %0, align 8, !tbaa !54
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %156, i64 %162
  store i32 %160, ptr %163, align 4, !tbaa !50
  %164 = load i32, ptr %73, align 4, !tbaa !76
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %156, i64 %165
  store i32 0, ptr %166, align 4, !tbaa !50
  %167 = icmp sgt i64 %153, 1
  br i1 %167, label %152, label %168, !llvm.loop !233

168:                                              ; preds = %152, %146
  %169 = load ptr, ptr %84, align 8, !tbaa !61
  %170 = load i32, ptr %73, align 4, !tbaa !76
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %169, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !50
  %174 = load i32, ptr %0, align 8, !tbaa !54
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, ptr %169, i64 %175
  store i32 %173, ptr %176, align 4, !tbaa !50
  %177 = load i32, ptr %0, align 8, !tbaa !54
  %178 = load ptr, ptr %3, align 8, !tbaa !65
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, ptr %169, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !50
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, ptr %178, i64 %182
  store i32 %177, ptr %183, align 4, !tbaa !50
  br label %229

184:                                              ; preds = %96
  %185 = load i32, ptr %74, align 4, !tbaa !70
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load ptr, ptr %75, align 8, !tbaa !71
  %189 = zext nneg i32 %185 to i64
  br label %190

190:                                              ; preds = %187, %190
  %191 = phi i64 [ %189, %187 ], [ %192, %190 ]
  %192 = add nsw i64 %191, -1
  %193 = getelementptr inbounds %struct.eqn_d, ptr %188, i64 %192, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !56
  %195 = load i32, ptr %73, align 4, !tbaa !76
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, ptr %194, i64 %196
  store i32 0, ptr %197, align 4, !tbaa !50
  %198 = icmp sgt i64 %191, 1
  br i1 %198, label %190, label %199, !llvm.loop !234

199:                                              ; preds = %190, %184
  %200 = load i32, ptr %76, align 8, !tbaa !67
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %199
  %203 = load ptr, ptr %77, align 8, !tbaa !68
  %204 = zext nneg i32 %200 to i64
  br label %205

205:                                              ; preds = %202, %205
  %206 = phi i64 [ %204, %202 ], [ %207, %205 ]
  %207 = add nsw i64 %206, -1
  %208 = getelementptr inbounds %struct.eqn_d, ptr %203, i64 %207, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !56
  %210 = load i32, ptr %73, align 4, !tbaa !76
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, ptr %209, i64 %211
  store i32 0, ptr %212, align 4, !tbaa !50
  %213 = icmp sgt i64 %206, 1
  br i1 %213, label %205, label %214, !llvm.loop !235

214:                                              ; preds = %205, %199
  %215 = load i32, ptr %50, align 8, !tbaa !73
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load ptr, ptr %78, align 8, !tbaa !74
  %219 = zext nneg i32 %215 to i64
  br label %220

220:                                              ; preds = %217, %220
  %221 = phi i64 [ %219, %217 ], [ %222, %220 ]
  %222 = add nsw i64 %221, -1
  %223 = getelementptr inbounds %struct.eqn_d, ptr %218, i64 %222, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !56
  %225 = load i32, ptr %73, align 4, !tbaa !76
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, ptr %224, i64 %226
  store i32 0, ptr %227, align 4, !tbaa !50
  %228 = icmp sgt i64 %221, 1
  br i1 %228, label %220, label %229, !llvm.loop !236

229:                                              ; preds = %220, %214, %168
  %230 = load ptr, ptr %85, align 8, !tbaa !74
  %231 = getelementptr inbounds %struct.eqn_d, ptr %230, i64 %92
  %232 = load i32, ptr %231, align 8, !tbaa !59
  %233 = load ptr, ptr %86, align 8, !tbaa !61
  %234 = load i32, ptr %73, align 4, !tbaa !76
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, ptr %233, i64 %235
  store i32 %232, ptr %236, align 4, !tbaa !50
  %237 = load i32, ptr %73, align 4, !tbaa !76
  %238 = load ptr, ptr %3, align 8, !tbaa !65
  %239 = load i32, ptr %231, align 8, !tbaa !59
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %238, i64 %240
  store i32 %237, ptr %241, align 4, !tbaa !50
  %242 = load ptr, ptr %87, align 8, !tbaa !68
  %243 = load i32, ptr %88, align 8, !tbaa !67
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.eqn_d, ptr %242, i64 %244
  %246 = load i32, ptr %0, align 8, !tbaa !54
  %247 = load i32, ptr %231, align 8, !tbaa !59
  store i32 %247, ptr %245, align 8, !tbaa !59
  %248 = getelementptr inbounds %struct.eqn_d, ptr %230, i64 %92, i32 1
  %249 = load i32, ptr %248, align 4, !tbaa !58
  %250 = getelementptr inbounds %struct.eqn_d, ptr %242, i64 %244, i32 1
  store i32 %249, ptr %250, align 4, !tbaa !58
  %251 = getelementptr inbounds %struct.eqn_d, ptr %230, i64 %92, i32 2
  %252 = load i32, ptr %251, align 8, !tbaa !60
  %253 = getelementptr inbounds %struct.eqn_d, ptr %242, i64 %244, i32 2
  store i32 %252, ptr %253, align 8, !tbaa !60
  %254 = getelementptr inbounds %struct.eqn_d, ptr %242, i64 %244, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !56
  %256 = getelementptr inbounds %struct.eqn_d, ptr %230, i64 %92, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !56
  %258 = add nsw i32 %246, 1
  %259 = sext i32 %258 to i64
  %260 = shl nsw i64 %259, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %255, ptr align 4 %257, i64 %260, i1 false)
  %261 = load ptr, ptr %87, align 8, !tbaa !68
  %262 = load i32, ptr %88, align 8, !tbaa !67
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %88, align 8, !tbaa !67
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds %struct.eqn_d, ptr %261, i64 %264, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !56
  %267 = load i32, ptr %73, align 4, !tbaa !76
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, ptr %266, i64 %268
  store i32 -1, ptr %269, align 4, !tbaa !50
  %270 = load i32, ptr %88, align 8, !tbaa !67
  %271 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %272 = getelementptr inbounds %struct.param_info, ptr %271, i64 66, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !87
  %274 = icmp sgt i32 %270, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 5161, ptr noundef nonnull @.str.21) #22
  br label %276

276:                                              ; preds = %229, %275
  %277 = load i32, ptr %50, align 8, !tbaa !73
  %278 = sext i32 %277 to i64
  %279 = icmp slt i64 %91, %278
  br i1 %279, label %280, label %301

280:                                              ; preds = %276
  %281 = load ptr, ptr %85, align 8, !tbaa !74
  %282 = getelementptr inbounds %struct.eqn_d, ptr %281, i64 %92
  %283 = sext i32 %277 to i64
  %284 = getelementptr %struct.eqn_d, ptr %281, i64 %283
  %285 = getelementptr %struct.eqn_d, ptr %284, i64 -1
  %286 = load i32, ptr %0, align 8, !tbaa !54
  %287 = load i32, ptr %285, align 8, !tbaa !59
  store i32 %287, ptr %282, align 8, !tbaa !59
  %288 = getelementptr %struct.eqn_d, ptr %284, i64 -1, i32 1
  %289 = load i32, ptr %288, align 4, !tbaa !58
  %290 = getelementptr inbounds %struct.eqn_d, ptr %281, i64 %92, i32 1
  store i32 %289, ptr %290, align 4, !tbaa !58
  %291 = getelementptr %struct.eqn_d, ptr %284, i64 -1, i32 2
  %292 = load i32, ptr %291, align 8, !tbaa !60
  %293 = getelementptr inbounds %struct.eqn_d, ptr %281, i64 %92, i32 2
  store i32 %292, ptr %293, align 8, !tbaa !60
  %294 = getelementptr inbounds %struct.eqn_d, ptr %281, i64 %92, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !56
  %296 = getelementptr %struct.eqn_d, ptr %284, i64 -1, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !56
  %298 = add nsw i32 %286, 1
  %299 = sext i32 %298 to i64
  %300 = shl nsw i64 %299, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %295, ptr align 4 %297, i64 %300, i1 false)
  br label %301

301:                                              ; preds = %280, %276
  %302 = load i32, ptr %50, align 8, !tbaa !73
  %303 = add nsw i32 %302, -1
  store i32 %303, ptr %50, align 8, !tbaa !73
  br label %304

304:                                              ; preds = %90, %301
  %305 = icmp sgt i64 %91, 1
  br i1 %305, label %90, label %306, !llvm.loop !237

306:                                              ; preds = %304, %69
  %307 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %308 = load i32, ptr %307, align 4, !tbaa !76
  %309 = icmp slt i32 %7, %308
  br i1 %309, label %310, label %386

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %312 = load i32, ptr %311, align 4, !tbaa !70
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %331

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %316 = load ptr, ptr %315, align 8, !tbaa !71
  %317 = zext nneg i32 %7 to i64
  %318 = sext i32 %308 to i64
  %319 = zext nneg i32 %312 to i64
  br label %320

320:                                              ; preds = %314, %320
  %321 = phi i64 [ %319, %314 ], [ %322, %320 ]
  %322 = add nsw i64 %321, -1
  %323 = getelementptr inbounds %struct.eqn_d, ptr %316, i64 %322, i32 1
  store i32 1, ptr %323, align 4, !tbaa !58
  %324 = getelementptr inbounds %struct.eqn_d, ptr %316, i64 %322, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !56
  %326 = getelementptr inbounds i32, ptr %325, i64 %317
  %327 = getelementptr inbounds i32, ptr %325, i64 %318
  %328 = load i32, ptr %326, align 4, !tbaa !50
  %329 = load i32, ptr %327, align 4, !tbaa !50
  store i32 %329, ptr %326, align 4, !tbaa !50
  store i32 %328, ptr %327, align 4, !tbaa !50
  %330 = icmp sgt i64 %321, 1
  br i1 %330, label %320, label %331, !llvm.loop !238

331:                                              ; preds = %320, %310
  %332 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %333 = load i32, ptr %332, align 8, !tbaa !67
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %351

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %337 = load ptr, ptr %336, align 8, !tbaa !68
  %338 = zext nneg i32 %7 to i64
  %339 = sext i32 %308 to i64
  %340 = zext nneg i32 %333 to i64
  br label %341

341:                                              ; preds = %335, %341
  %342 = phi i64 [ %340, %335 ], [ %343, %341 ]
  %343 = add nsw i64 %342, -1
  %344 = getelementptr inbounds %struct.eqn_d, ptr %337, i64 %343, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !56
  %346 = getelementptr inbounds i32, ptr %345, i64 %338
  %347 = getelementptr inbounds i32, ptr %345, i64 %339
  %348 = load i32, ptr %346, align 4, !tbaa !50
  %349 = load i32, ptr %347, align 4, !tbaa !50
  store i32 %349, ptr %346, align 4, !tbaa !50
  store i32 %348, ptr %347, align 4, !tbaa !50
  %350 = icmp sgt i64 %342, 1
  br i1 %350, label %341, label %351, !llvm.loop !239

351:                                              ; preds = %341, %331
  %352 = load i32, ptr %50, align 8, !tbaa !73
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %370

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %356 = load ptr, ptr %355, align 8, !tbaa !74
  %357 = zext nneg i32 %7 to i64
  %358 = sext i32 %308 to i64
  %359 = zext nneg i32 %352 to i64
  br label %360

360:                                              ; preds = %354, %360
  %361 = phi i64 [ %359, %354 ], [ %362, %360 ]
  %362 = add nsw i64 %361, -1
  %363 = getelementptr inbounds %struct.eqn_d, ptr %356, i64 %362, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !56
  %365 = getelementptr inbounds i32, ptr %364, i64 %357
  %366 = getelementptr inbounds i32, ptr %364, i64 %358
  %367 = load i32, ptr %365, align 4, !tbaa !50
  %368 = load i32, ptr %366, align 4, !tbaa !50
  store i32 %368, ptr %365, align 4, !tbaa !50
  store i32 %367, ptr %366, align 4, !tbaa !50
  %369 = icmp sgt i64 %361, 1
  br i1 %369, label %360, label %370, !llvm.loop !240

370:                                              ; preds = %360, %351
  %371 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %372 = load ptr, ptr %371, align 8, !tbaa !61
  %373 = zext nneg i32 %7 to i64
  %374 = getelementptr inbounds i32, ptr %372, i64 %373
  %375 = sext i32 %308 to i64
  %376 = getelementptr inbounds i32, ptr %372, i64 %375
  %377 = load i32, ptr %374, align 4, !tbaa !50
  %378 = load i32, ptr %376, align 4, !tbaa !50
  store i32 %378, ptr %374, align 4, !tbaa !50
  store i32 %377, ptr %376, align 4, !tbaa !50
  %379 = load ptr, ptr %3, align 8, !tbaa !65
  %380 = load i32, ptr %374, align 4, !tbaa !50
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, ptr %379, i64 %381
  store i32 %7, ptr %382, align 4, !tbaa !50
  %383 = load i32, ptr %376, align 4, !tbaa !50
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, ptr %379, i64 %384
  store i32 %308, ptr %385, align 4, !tbaa !50
  br label %386

386:                                              ; preds = %306, %370
  %387 = load i32, ptr %307, align 4, !tbaa !76
  %388 = add nsw i32 %387, -1
  store i32 %388, ptr %307, align 4, !tbaa !76
  tail call void @free(ptr noundef %49)
  br label %389

389:                                              ; preds = %9, %15, %386
  tail call fastcc void @chain_unprotect(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @chain_unprotect(ptr nocapture noundef %0) unnamed_addr #12 !prof !34 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 64, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xmalloc(i64 noundef %5) #22
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %43, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  br label %14

14:                                               ; preds = %10, %38
  %15 = phi i64 [ 1, %10 ], [ %39, %38 ]
  %16 = load ptr, ptr %11, align 8, !tbaa !61
  %17 = getelementptr inbounds i32, ptr %16, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = lshr i32 %18, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %6, i64 %15
  store i8 %20, ptr %21, align 1, !tbaa !46
  %22 = load i32, ptr %12, align 8, !tbaa !73
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = zext nneg i32 %22 to i64
  br label %26

26:                                               ; preds = %24, %36
  %27 = phi i64 [ %25, %24 ], [ %28, %36 ]
  %28 = add nsw i64 %27, -1
  %29 = load ptr, ptr %13, align 8, !tbaa !74
  %30 = getelementptr inbounds %struct.eqn_d, ptr %29, i64 %28, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds i32, ptr %31, i64 %15
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i8 0, ptr %21, align 1, !tbaa !46
  br label %36

36:                                               ; preds = %26, %35
  %37 = icmp sgt i64 %27, 1
  br i1 %37, label %26, label %38, !llvm.loop !241

38:                                               ; preds = %36, %14
  %39 = add nuw i64 %15, 1
  %40 = load i32, ptr %7, align 4, !tbaa !76
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %15, %41
  br i1 %42, label %14, label %43, !llvm.loop !242

43:                                               ; preds = %38, %1
  %44 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %86, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %86, label %51

51:                                               ; preds = %47
  %52 = tail call i64 @fwrite(ptr nonnull @.str.197, i64 34, i64 1, ptr nonnull %45)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %53, ptr noundef %0)
  %54 = load i32, ptr %44, align 4, !tbaa !76
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %86, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  br label %58

58:                                               ; preds = %56, %81
  %59 = phi i64 [ 1, %56 ], [ %82, %81 ]
  %60 = getelementptr inbounds i8, ptr %6, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !46
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %65 = load ptr, ptr %57, align 8, !tbaa !61
  %66 = getelementptr inbounds i32, ptr %65, i64 %59
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = icmp ult i32 %67, 21
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = zext nneg i32 %67 to i64
  %71 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %70
  br label %78

72:                                               ; preds = %63
  %73 = icmp ugt i32 %67, -20
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = add nsw i32 %67, 40
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %76
  br label %78

78:                                               ; preds = %69, %72, %74
  %79 = phi ptr [ %71, %69 ], [ %77, %74 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %72 ]
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.198, ptr noundef nonnull %79)
  br label %81

81:                                               ; preds = %58, %78
  %82 = add nuw i64 %59, 1
  %83 = load i32, ptr %44, align 4, !tbaa !76
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %59, %84
  br i1 %85, label %58, label %86, !llvm.loop !243

86:                                               ; preds = %81, %51, %47, %43
  %87 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %88 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %89 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %90 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %91 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %92 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %93 = icmp eq ptr %6, null
  %94 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %95 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  br label %96

96:                                               ; preds = %187, %86
  %97 = phi i32 [ 1, %86 ], [ %189, %187 ]
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %100

100:                                              ; preds = %96, %99
  %101 = load i32, ptr %44, align 4, !tbaa !76
  %102 = icmp slt i32 %101, %97
  br i1 %102, label %190, label %103

103:                                              ; preds = %100
  %104 = sext i32 %97 to i64
  %105 = getelementptr inbounds i8, ptr %6, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !46
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %187, label %108

108:                                              ; preds = %103
  %109 = icmp slt i32 %97, %101
  br i1 %109, label %110, label %183

110:                                              ; preds = %108
  %111 = load i32, ptr %87, align 4, !tbaa !70
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load ptr, ptr %88, align 8, !tbaa !71
  %115 = sext i32 %101 to i64
  %116 = zext nneg i32 %111 to i64
  br label %117

117:                                              ; preds = %113, %117
  %118 = phi i64 [ %116, %113 ], [ %119, %117 ]
  %119 = add nsw i64 %118, -1
  %120 = getelementptr inbounds %struct.eqn_d, ptr %114, i64 %119, i32 1
  store i32 1, ptr %120, align 4, !tbaa !58
  %121 = getelementptr inbounds %struct.eqn_d, ptr %114, i64 %119, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !56
  %123 = getelementptr inbounds i32, ptr %122, i64 %104
  %124 = getelementptr inbounds i32, ptr %122, i64 %115
  %125 = load i32, ptr %123, align 4, !tbaa !50
  %126 = load i32, ptr %124, align 4, !tbaa !50
  store i32 %126, ptr %123, align 4, !tbaa !50
  store i32 %125, ptr %124, align 4, !tbaa !50
  %127 = icmp sgt i64 %118, 1
  br i1 %127, label %117, label %128, !llvm.loop !238

128:                                              ; preds = %117, %110
  %129 = load i32, ptr %89, align 8, !tbaa !67
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load ptr, ptr %90, align 8, !tbaa !68
  %133 = sext i32 %101 to i64
  %134 = zext nneg i32 %129 to i64
  br label %135

135:                                              ; preds = %131, %135
  %136 = phi i64 [ %134, %131 ], [ %137, %135 ]
  %137 = add nsw i64 %136, -1
  %138 = getelementptr inbounds %struct.eqn_d, ptr %132, i64 %137, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !56
  %140 = getelementptr inbounds i32, ptr %139, i64 %104
  %141 = getelementptr inbounds i32, ptr %139, i64 %133
  %142 = load i32, ptr %140, align 4, !tbaa !50
  %143 = load i32, ptr %141, align 4, !tbaa !50
  store i32 %143, ptr %140, align 4, !tbaa !50
  store i32 %142, ptr %141, align 4, !tbaa !50
  %144 = icmp sgt i64 %136, 1
  br i1 %144, label %135, label %145, !llvm.loop !239

145:                                              ; preds = %135, %128
  %146 = load i32, ptr %91, align 8, !tbaa !73
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load ptr, ptr %92, align 8, !tbaa !74
  %150 = sext i32 %101 to i64
  %151 = zext nneg i32 %146 to i64
  br label %152

152:                                              ; preds = %148, %152
  %153 = phi i64 [ %151, %148 ], [ %154, %152 ]
  %154 = add nsw i64 %153, -1
  %155 = getelementptr inbounds %struct.eqn_d, ptr %149, i64 %154, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  %157 = getelementptr inbounds i32, ptr %156, i64 %104
  %158 = getelementptr inbounds i32, ptr %156, i64 %150
  %159 = load i32, ptr %157, align 4, !tbaa !50
  %160 = load i32, ptr %158, align 4, !tbaa !50
  store i32 %160, ptr %157, align 4, !tbaa !50
  store i32 %159, ptr %158, align 4, !tbaa !50
  %161 = icmp sgt i64 %153, 1
  br i1 %161, label %152, label %162, !llvm.loop !240

162:                                              ; preds = %152, %145
  br i1 %93, label %168, label %163

163:                                              ; preds = %162
  %164 = sext i32 %101 to i64
  %165 = getelementptr inbounds i8, ptr %6, i64 %164
  %166 = load i8, ptr %105, align 1, !tbaa !46
  %167 = load i8, ptr %165, align 1, !tbaa !46
  store i8 %167, ptr %105, align 1, !tbaa !46
  store i8 %166, ptr %165, align 1, !tbaa !46
  br label %168

168:                                              ; preds = %163, %162
  %169 = load ptr, ptr %94, align 8, !tbaa !61
  %170 = getelementptr inbounds i32, ptr %169, i64 %104
  %171 = sext i32 %101 to i64
  %172 = getelementptr inbounds i32, ptr %169, i64 %171
  %173 = load i32, ptr %170, align 4, !tbaa !50
  %174 = load i32, ptr %172, align 4, !tbaa !50
  store i32 %174, ptr %170, align 4, !tbaa !50
  store i32 %173, ptr %172, align 4, !tbaa !50
  %175 = load ptr, ptr %95, align 8, !tbaa !65
  %176 = load i32, ptr %170, align 4, !tbaa !50
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %175, i64 %177
  store i32 %97, ptr %178, align 4, !tbaa !50
  %179 = load i32, ptr %172, align 4, !tbaa !50
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, ptr %175, i64 %180
  store i32 %101, ptr %181, align 4, !tbaa !50
  %182 = add nsw i32 %97, -1
  br label %183

183:                                              ; preds = %108, %168
  %184 = phi i32 [ %182, %168 ], [ %97, %108 ]
  %185 = load i32, ptr %44, align 4, !tbaa !76
  %186 = add nsw i32 %185, -1
  store i32 %186, ptr %44, align 4, !tbaa !76
  br label %187

187:                                              ; preds = %103, %183
  %188 = phi i32 [ %97, %103 ], [ %184, %183 ]
  %189 = add nsw i32 %188, 1
  br label %96, !llvm.loop !244

190:                                              ; preds = %100
  %191 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %192 = icmp eq ptr %191, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %190
  %194 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %195 = and i32 %194, 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = tail call i64 @fwrite(ptr nonnull @.str.199, i64 22, i64 1, ptr nonnull %191)
  %199 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %199, ptr noundef %0)
  br label %200

200:                                              ; preds = %197, %193, %190
  tail call void @free(ptr noundef %6)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @omega_constrain_variable_sign(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !34 {
  %5 = load i32, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %98

12:                                               ; preds = %4
  %13 = xor i32 %10, -1
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !70
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !70
  %19 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds %struct.eqn_d, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = zext nneg i32 %13 to i64
  %26 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %25
  %27 = load i32, ptr %26, align 8, !tbaa !59
  store i32 %27, ptr %22, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %25, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !58
  %30 = getelementptr inbounds %struct.eqn_d, ptr %20, i64 %21, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !58
  %31 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %25, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.eqn_d, ptr %20, i64 %21, i32 2
  store i32 %32, ptr %33, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.eqn_d, ptr %20, i64 %21, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.eqn_d, ptr %24, i64 %25, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = add nsw i32 %5, 1
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %37, i64 %40, i1 false)
  %41 = icmp slt i32 %5, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %15
  %43 = load ptr, ptr %19, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.eqn_d, ptr %43, i64 %21, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = add nuw i32 %5, 1
  %47 = zext i32 %46 to i64
  br label %48

48:                                               ; preds = %42, %48
  %49 = phi i64 [ 0, %42 ], [ %53, %48 ]
  %50 = getelementptr inbounds i32, ptr %45, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !50
  %52 = mul nsw i32 %51, %3
  store i32 %52, ptr %50, align 4, !tbaa !50
  %53 = add nuw nsw i64 %49, 1
  %54 = icmp eq i64 %53, %47
  br i1 %54, label %55, label %48, !llvm.loop !245

55:                                               ; preds = %48, %15
  %56 = load ptr, ptr %19, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct.eqn_d, ptr %56, i64 %21, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %58, align 4, !tbaa !50
  %61 = getelementptr inbounds %struct.eqn_d, ptr %56, i64 %21, i32 1
  store i32 1, ptr %61, align 4, !tbaa !58
  %62 = getelementptr inbounds %struct.eqn_d, ptr %56, i64 %21, i32 2
  br label %150

63:                                               ; preds = %12
  %64 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !67
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !67
  %67 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.param_info, ptr %67, i64 66, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !87
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 5206, ptr noundef nonnull @.str.21) #22
  br label %72

72:                                               ; preds = %63, %71
  %73 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %74 = load ptr, ptr %73, align 8, !tbaa !68
  %75 = sext i32 %65 to i64
  %76 = getelementptr inbounds %struct.eqn_d, ptr %74, i64 %75
  %77 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !74
  %79 = zext nneg i32 %13 to i64
  %80 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %79
  %81 = load i32, ptr %0, align 8, !tbaa !54
  %82 = load i32, ptr %80, align 8, !tbaa !59
  store i32 %82, ptr %76, align 8, !tbaa !59
  %83 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %79, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !58
  %85 = getelementptr inbounds %struct.eqn_d, ptr %74, i64 %75, i32 1
  store i32 %84, ptr %85, align 4, !tbaa !58
  %86 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %79, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !60
  %88 = getelementptr inbounds %struct.eqn_d, ptr %74, i64 %75, i32 2
  store i32 %87, ptr %88, align 8, !tbaa !60
  %89 = getelementptr inbounds %struct.eqn_d, ptr %74, i64 %75, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !56
  %91 = getelementptr inbounds %struct.eqn_d, ptr %78, i64 %79, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !56
  %93 = add nsw i32 %81, 1
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %90, ptr align 4 %92, i64 %95, i1 false)
  %96 = load ptr, ptr %73, align 8, !tbaa !68
  %97 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %75, i32 2
  br label %150

98:                                               ; preds = %4
  %99 = icmp eq i32 %3, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %102 = load i32, ptr %101, align 4, !tbaa !70
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %101, align 4, !tbaa !70
  %104 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %105 = load ptr, ptr %104, align 8, !tbaa !71
  %106 = sext i32 %102 to i64
  %107 = getelementptr inbounds %struct.eqn_d, ptr %105, i64 %106
  store i32 0, ptr %107, align 8, !tbaa !59
  %108 = getelementptr inbounds %struct.eqn_d, ptr %105, i64 %106, i32 1
  store i32 0, ptr %108, align 4, !tbaa !58
  %109 = getelementptr inbounds %struct.eqn_d, ptr %105, i64 %106, i32 2
  store i32 0, ptr %109, align 8, !tbaa !60
  %110 = getelementptr inbounds %struct.eqn_d, ptr %105, i64 %106, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !56
  %112 = add nsw i32 %5, 1
  %113 = sext i32 %112 to i64
  %114 = shl nsw i64 %113, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %111, i8 0, i64 %114, i1 false)
  %115 = load ptr, ptr %104, align 8, !tbaa !71
  %116 = getelementptr inbounds %struct.eqn_d, ptr %115, i64 %106, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !56
  %118 = zext nneg i32 %10 to i64
  %119 = getelementptr inbounds i32, ptr %117, i64 %118
  store i32 %3, ptr %119, align 4, !tbaa !50
  store i32 -1, ptr %117, align 4, !tbaa !50
  %120 = getelementptr inbounds %struct.eqn_d, ptr %115, i64 %106, i32 1
  store i32 1, ptr %120, align 4, !tbaa !58
  %121 = getelementptr inbounds %struct.eqn_d, ptr %115, i64 %106, i32 2
  br label %150

122:                                              ; preds = %98
  %123 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !67
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !67
  %126 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %127 = getelementptr inbounds %struct.param_info, ptr %126, i64 66, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !87
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 5223, ptr noundef nonnull @.str.21) #22
  br label %131

131:                                              ; preds = %122, %130
  %132 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %133 = load ptr, ptr %132, align 8, !tbaa !68
  %134 = sext i32 %124 to i64
  %135 = getelementptr inbounds %struct.eqn_d, ptr %133, i64 %134
  %136 = load i32, ptr %0, align 8, !tbaa !54
  store i32 0, ptr %135, align 8, !tbaa !59
  %137 = getelementptr inbounds %struct.eqn_d, ptr %133, i64 %134, i32 1
  store i32 0, ptr %137, align 4, !tbaa !58
  %138 = getelementptr inbounds %struct.eqn_d, ptr %133, i64 %134, i32 2
  store i32 0, ptr %138, align 8, !tbaa !60
  %139 = getelementptr inbounds %struct.eqn_d, ptr %133, i64 %134, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !56
  %141 = add nsw i32 %136, 1
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %140, i8 0, i64 %143, i1 false)
  %144 = load ptr, ptr %132, align 8, !tbaa !68
  %145 = getelementptr inbounds %struct.eqn_d, ptr %144, i64 %134, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !56
  %147 = zext nneg i32 %10 to i64
  %148 = getelementptr inbounds i32, ptr %146, i64 %147
  store i32 1, ptr %148, align 4, !tbaa !50
  %149 = getelementptr inbounds %struct.eqn_d, ptr %144, i64 %134, i32 2
  br label %150

150:                                              ; preds = %100, %131, %55, %72
  %151 = phi ptr [ %121, %100 ], [ %149, %131 ], [ %62, %55 ], [ %97, %72 ]
  store i32 %1, ptr %151, align 8, !tbaa !60
  tail call void @omega_unprotect_variable(ptr noundef nonnull %0, i32 noundef %2)
  %152 = tail call i32 @omega_simplify_problem(ptr noundef nonnull %0)
  ret i32 %152
}

; Function Attrs: cold nounwind uwtable
define dso_local void @omega_constrain_variable_value(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !34 {
  %5 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = xor i32 %9, -1
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !67
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !67
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 66, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !87
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 5246, ptr noundef nonnull @.str.21) #22
  br label %21

21:                                               ; preds = %11, %20
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = sext i32 %14 to i64
  %25 = getelementptr inbounds %struct.eqn_d, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = zext nneg i32 %12 to i64
  %29 = getelementptr inbounds %struct.eqn_d, ptr %27, i64 %28
  %30 = load i32, ptr %0, align 8, !tbaa !54
  %31 = load i32, ptr %29, align 8, !tbaa !59
  store i32 %31, ptr %25, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.eqn_d, ptr %27, i64 %28, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !58
  %34 = getelementptr inbounds %struct.eqn_d, ptr %23, i64 %24, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !58
  %35 = getelementptr inbounds %struct.eqn_d, ptr %27, i64 %28, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.eqn_d, ptr %23, i64 %24, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.eqn_d, ptr %23, i64 %24, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.eqn_d, ptr %27, i64 %28, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = add nsw i32 %30, 1
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %41, i64 %44, i1 false)
  %45 = load ptr, ptr %22, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.eqn_d, ptr %45, i64 %24, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = load i32, ptr %47, align 4, !tbaa !50
  br label %70

49:                                               ; preds = %4
  %50 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !67
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !68
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds %struct.eqn_d, ptr %54, i64 %55
  %57 = load i32, ptr %0, align 8, !tbaa !54
  store i32 0, ptr %56, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.eqn_d, ptr %54, i64 %55, i32 1
  store i32 0, ptr %58, align 4, !tbaa !58
  %59 = getelementptr inbounds %struct.eqn_d, ptr %54, i64 %55, i32 2
  store i32 0, ptr %59, align 8, !tbaa !60
  %60 = getelementptr inbounds %struct.eqn_d, ptr %54, i64 %55, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = add nsw i32 %57, 1
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %61, i8 0, i64 %64, i1 false)
  %65 = load ptr, ptr %53, align 8, !tbaa !68
  %66 = getelementptr inbounds %struct.eqn_d, ptr %65, i64 %55, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !56
  %68 = zext nneg i32 %9 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  store i32 1, ptr %69, align 4, !tbaa !50
  br label %70

70:                                               ; preds = %49, %21
  %71 = phi i32 [ 0, %49 ], [ %48, %21 ]
  %72 = phi ptr [ %67, %49 ], [ %47, %21 ]
  %73 = phi i32 [ %51, %49 ], [ %14, %21 ]
  %74 = sub nsw i32 %71, %3
  store i32 %74, ptr %72, align 4, !tbaa !50
  %75 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = sext i32 %73 to i64
  %78 = getelementptr inbounds %struct.eqn_d, ptr %76, i64 %77, i32 2
  store i32 %1, ptr %78, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @omega_query_variable(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #16 !prof !34 {
  %5 = load i32, ptr %0, align 8, !tbaa !54
  store i32 -134217727, ptr %2, align 4, !tbaa !50
  store i32 134217727, ptr %3, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %4
  %13 = xor i32 %10, -1
  %14 = icmp slt i32 %5, 1
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = zext nneg i32 %13 to i64
  %19 = getelementptr inbounds %struct.eqn_d, ptr %17, i64 %18, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = add nuw i32 %5, 1
  %22 = zext i32 %21 to i64
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %31, label %26, !llvm.loop !246

26:                                               ; preds = %15, %23
  %27 = phi i64 [ 1, %15 ], [ %24, %23 ]
  %28 = getelementptr inbounds i32, ptr %20, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %143

31:                                               ; preds = %23, %12
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  %34 = zext nneg i32 %13 to i64
  %35 = getelementptr inbounds %struct.eqn_d, ptr %33, i64 %34, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = load i32, ptr %36, align 4, !tbaa !50
  store i32 %37, ptr %2, align 4, !tbaa !50
  store i32 %37, ptr %3, align 4, !tbaa !50
  br label %143

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !73
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = zext nneg i32 %10 to i64
  %46 = zext nneg i32 %40 to i64
  br label %47

47:                                               ; preds = %42, %47
  %48 = phi i64 [ %46, %42 ], [ %50, %47 ]
  %49 = phi i8 [ 0, %42 ], [ %56, %47 ]
  %50 = add nsw i64 %48, -1
  %51 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 %50, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  %53 = getelementptr inbounds i32, ptr %52, i64 %45
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i8 %49, i8 1
  %57 = icmp sgt i64 %48, 1
  br i1 %57, label %47, label %58, !llvm.loop !247

58:                                               ; preds = %47, %38
  %59 = phi i8 [ 0, %38 ], [ %56, %47 ]
  %60 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !67
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %105

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !68
  %66 = zext nneg i32 %10 to i64
  %67 = icmp slt i32 %5, 1
  %68 = zext nneg i32 %10 to i64
  %69 = sext i32 %5 to i64
  %70 = add i32 %5, 1
  %71 = zext nneg i32 %61 to i64
  %72 = zext i32 %70 to i64
  br label %73

73:                                               ; preds = %63, %102
  %74 = phi i64 [ %71, %63 ], [ %76, %102 ]
  %75 = phi i8 [ %59, %63 ], [ %103, %102 ]
  %76 = add nsw i64 %74, -1
  %77 = getelementptr inbounds %struct.eqn_d, ptr %65, i64 %76, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = getelementptr inbounds i32, ptr %78, i64 %66
  %80 = load i32, ptr %79, align 4, !tbaa !50
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %73
  br i1 %67, label %95, label %83

83:                                               ; preds = %82, %91
  %84 = phi i64 [ %92, %91 ], [ 1, %82 ]
  %85 = phi i1 [ %93, %91 ], [ %67, %82 ]
  %86 = icmp eq i64 %84, %68
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds i32, ptr %78, i64 %84
  %89 = load i32, ptr %88, align 4, !tbaa !50
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83, %87
  %92 = add nuw nsw i64 %84, 1
  %93 = icmp sge i64 %84, %69
  %94 = icmp eq i64 %92, %72
  br i1 %94, label %95, label %83, !llvm.loop !248

95:                                               ; preds = %91, %87, %82
  %96 = phi i1 [ %67, %82 ], [ %93, %91 ], [ %85, %87 ]
  %97 = phi i8 [ %75, %82 ], [ %75, %91 ], [ 1, %87 ]
  br i1 %96, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, ptr %78, align 4, !tbaa !50
  %100 = mul i32 %80, %99
  %101 = sub i32 0, %100
  store i32 %101, ptr %3, align 4, !tbaa !50
  store i32 %101, ptr %2, align 4, !tbaa !50
  br label %143

102:                                              ; preds = %73, %95
  %103 = phi i8 [ %97, %95 ], [ %75, %73 ]
  %104 = icmp sgt i64 %74, 1
  br i1 %104, label %73, label %105, !llvm.loop !249

105:                                              ; preds = %102, %58
  %106 = phi i8 [ %59, %58 ], [ %103, %102 ]
  %107 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !70
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %112 = load ptr, ptr %111, align 8, !tbaa !71
  %113 = zext nneg i32 %10 to i64
  %114 = sub nsw i32 0, %10
  %115 = zext nneg i32 %108 to i64
  br label %116

116:                                              ; preds = %110, %140
  %117 = phi i64 [ %115, %110 ], [ %119, %140 ]
  %118 = phi i8 [ %106, %110 ], [ %141, %140 ]
  %119 = add nsw i64 %117, -1
  %120 = getelementptr inbounds %struct.eqn_d, ptr %112, i64 %119, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !56
  %122 = getelementptr inbounds i32, ptr %121, i64 %113
  %123 = load i32, ptr %122, align 4, !tbaa !50
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.eqn_d, ptr %112, i64 %119
  %127 = load i32, ptr %126, align 8, !tbaa !59
  %128 = icmp eq i32 %127, %10
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, ptr %2, align 4, !tbaa !50
  %131 = load i32, ptr %121, align 4, !tbaa !50
  %132 = sub nsw i32 0, %131
  %133 = tail call i32 @llvm.smax.i32(i32 %130, i32 %132)
  store i32 %133, ptr %2, align 4, !tbaa !50
  br label %140

134:                                              ; preds = %125
  %135 = icmp eq i32 %127, %114
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = load i32, ptr %3, align 4, !tbaa !50
  %138 = load i32, ptr %121, align 4, !tbaa !50
  %139 = tail call i32 @llvm.smin.i32(i32 %137, i32 %138)
  store i32 %139, ptr %3, align 4, !tbaa !50
  br label %140

140:                                              ; preds = %134, %116, %136, %129
  %141 = phi i8 [ %118, %129 ], [ %118, %136 ], [ %118, %116 ], [ 1, %134 ]
  %142 = icmp sgt i64 %117, 1
  br i1 %142, label %116, label %143, !llvm.loop !250

143:                                              ; preds = %140, %26, %105, %98, %31
  %144 = phi i8 [ 0, %31 ], [ 0, %98 ], [ %106, %105 ], [ 1, %26 ], [ %141, %140 ]
  ret i8 %144
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @omega_query_variable_bounds(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #12 !prof !34 {
  %5 = alloca i8, align 1
  store i32 -134217727, ptr %2, align 4, !tbaa !50
  store i32 134217727, ptr %3, align 4, !tbaa !50
  %6 = tail call zeroext i8 @omega_query_variable(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3), !range !251
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !54
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %37, label %18

18:                                               ; preds = %11, %8
  %19 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !73
  %29 = add nsw i32 %28, %9
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !67
  %34 = add nsw i32 %33, %28
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  call fastcc void @query_coupled_variable(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef -134217727, i32 noundef 134217727)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  br label %37

37:                                               ; preds = %18, %26, %31, %4, %11, %36
  %38 = phi i8 [ 0, %36 ], [ 0, %11 ], [ 0, %4 ], [ 1, %31 ], [ 1, %26 ], [ 1, %18 ]
  ret i8 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: cold nounwind uwtable
define internal fastcc void @query_coupled_variable(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #12 !prof !34 {
  %8 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = load i32, ptr %0, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = add nsw i32 %18, %16
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = add nsw i32 %23, %18
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %15, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 5349, ptr noundef nonnull @.str.21) #22
  br label %27

27:                                               ; preds = %21, %26
  %28 = load ptr, ptr %8, align 8, !tbaa !65
  %29 = getelementptr inbounds i32, ptr %28, i64 %10
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  br label %43

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds i32, ptr %39, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %35, %32
  %44 = phi ptr [ %34, %32 ], [ %37, %35 ]
  %45 = phi i32 [ 1, %32 ], [ %42, %35 ]
  %46 = phi i64 [ 1, %32 ], [ 2, %35 ]
  %47 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !70
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  %53 = zext nneg i32 %48 to i64
  br label %54

54:                                               ; preds = %50, %70
  %55 = phi i64 [ %53, %50 ], [ %58, %70 ]
  %56 = phi i32 [ %6, %50 ], [ %72, %70 ]
  %57 = phi i32 [ %5, %50 ], [ %71, %70 ]
  %58 = add nsw i64 %55, -1
  %59 = getelementptr inbounds %struct.eqn_d, ptr %52, i64 %58, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !56
  %61 = getelementptr inbounds i32, ptr %60, i64 %46
  %62 = load i32, ptr %61, align 4, !tbaa !50
  switch i32 %62, label %67 [
    i32 0, label %70
    i32 1, label %63
  ]

63:                                               ; preds = %54
  %64 = load i32, ptr %60, align 4, !tbaa !50
  %65 = sub nsw i32 0, %64
  %66 = tail call i32 @llvm.smax.i32(i32 %57, i32 %65)
  br label %70

67:                                               ; preds = %54
  %68 = load i32, ptr %60, align 4, !tbaa !50
  %69 = tail call i32 @llvm.smin.i32(i32 %56, i32 %68)
  br label %70

70:                                               ; preds = %54, %67, %63
  %71 = phi i32 [ %66, %63 ], [ %57, %67 ], [ %57, %54 ]
  %72 = phi i32 [ %56, %63 ], [ %69, %67 ], [ %56, %54 ]
  %73 = icmp sgt i64 %55, 1
  br i1 %73, label %54, label %74, !llvm.loop !252

74:                                               ; preds = %70, %43
  %75 = phi i32 [ %5, %43 ], [ %71, %70 ]
  %76 = phi i32 [ %6, %43 ], [ %72, %70 ]
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 134217727, ptr %2, align 4, !tbaa !50
  store i32 -134217727, ptr %3, align 4, !tbaa !50
  br label %150

79:                                               ; preds = %74
  %80 = icmp eq i32 %75, -134217727
  %81 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !56
  br i1 %80, label %83, label %91

83:                                               ; preds = %79
  %84 = getelementptr inbounds i32, ptr %82, i64 %46
  %85 = load i32, ptr %84, align 4, !tbaa !50
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = mul nsw i32 %45, -134217727
  br label %98

89:                                               ; preds = %83
  %90 = mul i32 %45, 134217727
  br label %98

91:                                               ; preds = %79
  %92 = load i32, ptr %82, align 4, !tbaa !50
  %93 = getelementptr inbounds i32, ptr %82, i64 %46
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = mul nsw i32 %94, %75
  %96 = add nsw i32 %95, %92
  %97 = mul nsw i32 %96, %45
  br label %98

98:                                               ; preds = %87, %89, %91
  %99 = phi i32 [ %88, %87 ], [ %90, %89 ], [ %97, %91 ]
  %100 = icmp eq i32 %76, 134217727
  %101 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !56
  br i1 %100, label %103, label %111

103:                                              ; preds = %98
  %104 = getelementptr inbounds i32, ptr %102, i64 %46
  %105 = load i32, ptr %104, align 4, !tbaa !50
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = mul nsw i32 %45, 134217727
  br label %118

109:                                              ; preds = %103
  %110 = mul i32 %45, -134217727
  br label %118

111:                                              ; preds = %98
  %112 = load i32, ptr %102, align 4, !tbaa !50
  %113 = getelementptr inbounds i32, ptr %102, i64 %46
  %114 = load i32, ptr %113, align 4, !tbaa !50
  %115 = mul nsw i32 %114, %76
  %116 = add nsw i32 %115, %112
  %117 = mul nsw i32 %116, %45
  br label %118

118:                                              ; preds = %107, %109, %111
  %119 = phi i32 [ %108, %107 ], [ %110, %109 ], [ %117, %111 ]
  %120 = load i32, ptr %2, align 4, !tbaa !50
  %121 = tail call i32 @llvm.smin.i32(i32 %99, i32 %119)
  %122 = tail call i32 @llvm.smax.i32(i32 %120, i32 %121)
  store i32 %122, ptr %2, align 4, !tbaa !50
  %123 = load i32, ptr %3, align 4, !tbaa !50
  %124 = tail call i32 @llvm.smax.i32(i32 %99, i32 %119)
  %125 = tail call i32 @llvm.smin.i32(i32 %123, i32 %124)
  store i32 %125, ptr %3, align 4, !tbaa !50
  %126 = load i32, ptr %2, align 4, !tbaa !50
  %127 = icmp slt i32 %126, 1
  %128 = icmp sgt i32 %125, -1
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %150

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.eqn_d, ptr %44, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !56
  %133 = load i32, ptr %132, align 4, !tbaa !50
  %134 = getelementptr inbounds i32, ptr %132, i64 %46
  %135 = load i32, ptr %134, align 4, !tbaa !50
  %136 = tail call i32 @llvm.abs.i32(i32 %135, i1 true)
  %137 = icmp sgt i32 %133, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = udiv i32 %133, %136
  br label %145

140:                                              ; preds = %130
  %141 = xor i32 %133, -1
  %142 = add i32 %136, %141
  %143 = sdiv i32 %142, %136
  %144 = sub nsw i32 0, %143
  br label %145

145:                                              ; preds = %138, %140
  %146 = phi i32 [ %139, %138 ], [ %144, %140 ]
  %147 = mul nsw i32 %146, %136
  %148 = icmp eq i32 %133, %147
  %149 = zext i1 %148 to i8
  br label %150

150:                                              ; preds = %118, %145, %78
  %151 = phi i8 [ 0, %78 ], [ 0, %118 ], [ %149, %145 ]
  store i8 %151, ptr %4, align 1, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @omega_query_variable_signs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #12 !prof !34 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #22
  store i32 -134217727, ptr %10, align 4, !tbaa !50
  store i32 134217727, ptr %11, align 4, !tbaa !50
  %13 = call zeroext i8 @omega_query_variable(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !251
  call fastcc void @query_coupled_variable(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %5, i32 noundef %6)
  %14 = load i32, ptr %10, align 4, !tbaa !50
  %15 = load i32, ptr %11, align 4, !tbaa !50
  %16 = load i8, ptr %12, align 1, !tbaa !46
  %17 = icmp eq i32 %14, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i8 1, ptr %7, align 1, !tbaa !46
  store i32 %14, ptr %8, align 4, !tbaa !50
  br label %20

19:                                               ; preds = %9
  store i8 0, ptr %7, align 1, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  ret i32 %28
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @omega_alloc_problem(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !34 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 64, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = icmp slt i32 %5, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 5495, ptr noundef nonnull @.str.21) #22
  br label %8

8:                                                ; preds = %2, %7
  tail call void @omega_initialize()
  %9 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #22
  %10 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.param_info, ptr %10, i64 64, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !87
  %13 = add nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 4) #22
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !61
  %17 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.param_info, ptr %17, i64 64, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !87
  %20 = add nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @xcalloc(i64 noundef %21, i64 noundef 4) #22
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 9
  store ptr %22, ptr %23, align 8, !tbaa !65
  %24 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.param_info, ptr %24, i64 65, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !87
  %27 = sext i32 %26 to i64
  %28 = tail call ptr @xcalloc(i64 noundef %27, i64 noundef 24) #22
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %8
  %31 = zext nneg i32 %26 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.param_info, ptr %35, i64 64, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !87
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = tail call ptr @xcalloc(i64 noundef %39, i64 noundef 4) #22
  %41 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %34
  %42 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %34, i32 3
  store ptr %40, ptr %42, align 8, !tbaa !56
  store i32 0, ptr %41, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %34, i32 1
  store i32 0, ptr %43, align 4, !tbaa !58
  %44 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %34, i32 2
  store i32 0, ptr %44, align 8, !tbaa !60
  store i32 0, ptr %40, align 4
  %45 = icmp sgt i64 %33, 1
  br i1 %45, label %32, label %46, !llvm.loop !253

46:                                               ; preds = %32, %8
  %47 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 10
  store ptr %28, ptr %47, align 8, !tbaa !71
  %48 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.param_info, ptr %48, i64 66, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !87
  %51 = sext i32 %50 to i64
  %52 = tail call ptr @xcalloc(i64 noundef %51, i64 noundef 24) #22
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = zext nneg i32 %50 to i64
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ %55, %54 ], [ %58, %56 ]
  %58 = add nsw i64 %57, -1
  %59 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.param_info, ptr %59, i64 64, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !87
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = tail call ptr @xcalloc(i64 noundef %63, i64 noundef 4) #22
  %65 = getelementptr inbounds %struct.eqn_d, ptr %52, i64 %58
  %66 = getelementptr inbounds %struct.eqn_d, ptr %52, i64 %58, i32 3
  store ptr %64, ptr %66, align 8, !tbaa !56
  store i32 0, ptr %65, align 8, !tbaa !59
  %67 = getelementptr inbounds %struct.eqn_d, ptr %52, i64 %58, i32 1
  store i32 0, ptr %67, align 4, !tbaa !58
  %68 = getelementptr inbounds %struct.eqn_d, ptr %52, i64 %58, i32 2
  store i32 0, ptr %68, align 8, !tbaa !60
  store i32 0, ptr %64, align 4
  %69 = icmp sgt i64 %57, 1
  br i1 %69, label %56, label %70, !llvm.loop !253

70:                                               ; preds = %56, %46
  %71 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 11
  store ptr %52, ptr %71, align 8, !tbaa !68
  %72 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.param_info, ptr %72, i64 64, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !87
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = tail call ptr @xcalloc(i64 noundef %76, i64 noundef 24) #22
  %78 = icmp sgt i32 %74, -1
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  %80 = zext nneg i32 %75 to i64
  br label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ %80, %79 ], [ %83, %81 ]
  %83 = add nsw i64 %82, -1
  %84 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.param_info, ptr %84, i64 64, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !87
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = tail call ptr @xcalloc(i64 noundef %88, i64 noundef 4) #22
  %90 = getelementptr inbounds %struct.eqn_d, ptr %77, i64 %83
  %91 = getelementptr inbounds %struct.eqn_d, ptr %77, i64 %83, i32 3
  store ptr %89, ptr %91, align 8, !tbaa !56
  store i32 0, ptr %90, align 8, !tbaa !59
  %92 = getelementptr inbounds %struct.eqn_d, ptr %77, i64 %83, i32 1
  store i32 0, ptr %92, align 4, !tbaa !58
  %93 = getelementptr inbounds %struct.eqn_d, ptr %77, i64 %83, i32 2
  store i32 0, ptr %93, align 8, !tbaa !60
  store i32 0, ptr %89, align 4
  %94 = icmp sgt i64 %82, 1
  br i1 %94, label %81, label %95, !llvm.loop !253

95:                                               ; preds = %81, %70
  %96 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 12
  store ptr %77, ptr %96, align 8, !tbaa !74
  %97 = load i32, ptr @hash_version, align 4, !tbaa !50
  %98 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 5
  store i32 %97, ptr %98, align 4, !tbaa !129
  store i32 %0, ptr %9, align 8, !tbaa !54
  %99 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 1
  store i32 %1, ptr %99, align 4, !tbaa !76
  %100 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 6
  store i8 0, ptr %100, align 8, !tbaa !64
  %101 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 7
  store i8 0, ptr %101, align 1, !tbaa !125
  %102 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 2
  store i32 0, ptr %102, align 8, !tbaa !67
  %103 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 3
  store i32 0, ptr %103, align 4, !tbaa !70
  %104 = getelementptr inbounds %struct.omega_pb_d, ptr %9, i64 0, i32 4
  store i32 0, ptr %104, align 8, !tbaa !73
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local void @omega_initialize() local_unnamed_addr #12 !prof !34 {
  %1 = load i1, ptr @omega_initialized, align 1
  br i1 %1, label %56, label %2

2:                                                ; preds = %0
  store i32 0, ptr @next_wild_card, align 4, !tbaa !50
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 64, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @next_key, align 4, !tbaa !50
  %7 = sext i32 %5 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 4) #22
  store ptr %8, ptr @packing, align 8, !tbaa !35
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 69, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = shl nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 4) #22
  store ptr %14, ptr @fast_lookup, align 8, !tbaa !35
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 69, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !87
  %18 = shl nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 4) #22
  store ptr %20, ptr @fast_lookup_red, align 8, !tbaa !35
  %21 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.param_info, ptr %21, i64 68, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !87
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 24) #22
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = zext nneg i32 %23 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.param_info, ptr %32, i64 64, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !87
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = tail call ptr @xcalloc(i64 noundef %36, i64 noundef 4) #22
  %38 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %31
  %39 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %31, i32 3
  store ptr %37, ptr %39, align 8, !tbaa !56
  store i32 0, ptr %38, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %31, i32 1
  store i32 0, ptr %40, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %31, i32 2
  store i32 0, ptr %41, align 8, !tbaa !60
  store i32 0, ptr %37, align 4
  %42 = icmp sgt i64 %30, 1
  br i1 %42, label %29, label %43, !llvm.loop !253

43:                                               ; preds = %29, %2
  store ptr %25, ptr @hash_master, align 8, !tbaa !35
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 68, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !87
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = zext nneg i32 %46 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 0, %48 ], [ %53, %50 ]
  %52 = getelementptr inbounds %struct.eqn_d, ptr %25, i64 %51, i32 1
  store i32 -1, ptr %52, align 4, !tbaa !58
  %53 = add nuw nsw i64 %51, 1
  %54 = icmp eq i64 %53, %49
  br i1 %54, label %55, label %50, !llvm.loop !254

55:                                               ; preds = %50, %43
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 39), ptr noundef nonnull align 1 dereferenceable(6) @.str.75, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 38), ptr noundef nonnull align 1 dereferenceable(5) @.str.76, i64 5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 37), ptr noundef nonnull align 1 dereferenceable(6) @.str.77, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 36), ptr noundef nonnull align 1 dereferenceable(6) @.str.78, i64 6, i1 false)
  store i32 7692660, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 35), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 34), ptr noundef nonnull align 1 dereferenceable(6) @.str.80, i64 6, i1 false)
  store i32 6908003, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 33), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 32), ptr noundef nonnull align 1 dereferenceable(6) @.str.82, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 31), ptr noundef nonnull align 1 dereferenceable(3) @.str.83, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 30), ptr noundef nonnull align 1 dereferenceable(3) @.str.84, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 29), ptr noundef nonnull align 1 dereferenceable(6) @.str.85, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 28), ptr noundef nonnull align 1 dereferenceable(5) @.str.86, i64 5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 27), ptr noundef nonnull align 1 dereferenceable(6) @.str.87, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 26), ptr noundef nonnull align 1 dereferenceable(6) @.str.88, i64 6, i1 false)
  store i32 7692628, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 25), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 24), ptr noundef nonnull align 1 dereferenceable(6) @.str.90, i64 6, i1 false)
  store i32 6907971, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 23), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 22), ptr noundef nonnull align 1 dereferenceable(6) @.str.92, i64 6, i1 false)
  store i32 7895160, ptr getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), align 8
  store i1 true, ptr @omega_initialized, align 1
  br label %56

56:                                               ; preds = %0, %55
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omega_do_elimination(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 !prof !34 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #22
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 64, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !87
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #22
  %11 = getelementptr inbounds %struct.eqn_d, ptr %4, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !56
  store i32 0, ptr %4, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.eqn_d, ptr %4, i64 0, i32 1
  store i32 0, ptr %12, align 4, !tbaa !58
  %13 = getelementptr inbounds %struct.eqn_d, ptr %4, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !60
  store i32 0, ptr %10, align 4
  %14 = load i32, ptr %0, align 8, !tbaa !54
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %3
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds i32, ptr %23, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = icmp ult i32 %26, 21
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %29
  br label %37

31:                                               ; preds = %21
  %32 = icmp ugt i32 %26, -20
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = add nsw i32 %26, 40
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %35
  br label %37

37:                                               ; preds = %28, %31, %33
  %38 = phi ptr [ %30, %28 ], [ %36, %33 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %31 ]
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %15, ptr noundef nonnull @.str.124, ptr noundef nonnull %38)
  br label %40

40:                                               ; preds = %37, %17, %3
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !68
  %43 = sext i32 %1 to i64
  %44 = getelementptr inbounds %struct.eqn_d, ptr %42, i64 %43
  %45 = load i32, ptr %0, align 8, !tbaa !54
  %46 = load i32, ptr %44, align 8, !tbaa !59
  store i32 %46, ptr %4, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.eqn_d, ptr %42, i64 %43, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !58
  %49 = getelementptr inbounds %struct.eqn_d, ptr %4, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !58
  %50 = getelementptr inbounds %struct.eqn_d, ptr %42, i64 %43, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct.eqn_d, ptr %4, i64 0, i32 2
  store i32 %51, ptr %52, align 8, !tbaa !60
  %53 = getelementptr inbounds %struct.eqn_d, ptr %4, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = getelementptr inbounds %struct.eqn_d, ptr %42, i64 %43, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = add nsw i32 %45, 1
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %54, ptr align 4 %56, i64 %59, i1 false)
  %60 = load ptr, ptr %53, align 8, !tbaa !56
  %61 = sext i32 %2 to i64
  %62 = getelementptr inbounds i32, ptr %60, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !50
  store i32 0, ptr %62, align 4, !tbaa !50
  switch i32 %63, label %353 [
    i32 -1, label %64
    i32 1, label %64
  ]

64:                                               ; preds = %40, %40
  %65 = load ptr, ptr %41, align 8, !tbaa !68
  %66 = getelementptr inbounds %struct.eqn_d, ptr %65, i64 %43, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !60
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %352

69:                                               ; preds = %64
  %70 = load i32, ptr %0, align 8, !tbaa !54
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load ptr, ptr @packing, align 8
  %74 = zext nneg i32 %70 to i64
  br label %75

75:                                               ; preds = %72, %86
  %76 = phi i64 [ %74, %72 ], [ %88, %86 ]
  %77 = phi i32 [ 0, %72 ], [ %87, %86 ]
  %78 = getelementptr inbounds i32, ptr %60, i64 %76
  %79 = load i32, ptr %78, align 4, !tbaa !50
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = add nsw i32 %77, 1
  %83 = sext i32 %77 to i64
  %84 = getelementptr inbounds i32, ptr %73, i64 %83
  %85 = trunc i64 %76 to i32
  store i32 %85, ptr %84, align 4, !tbaa !50
  br label %86

86:                                               ; preds = %81, %75
  %87 = phi i32 [ %82, %81 ], [ %77, %75 ]
  %88 = add nsw i64 %76, -1
  %89 = icmp sgt i64 %76, 0
  br i1 %89, label %75, label %90, !llvm.loop !255

90:                                               ; preds = %86, %69
  %91 = phi i32 [ 0, %69 ], [ %87, %86 ]
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %93 = icmp eq ptr %92, null
  br i1 %93, label %133, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %133, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %52, align 8, !tbaa !60
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = tail call i32 @fputc(i32 91, ptr nonnull %92)
  br label %103

103:                                              ; preds = %101, %98
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %105 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !61
  %107 = getelementptr inbounds i32, ptr %106, i64 %61
  %108 = load i32, ptr %107, align 4, !tbaa !50
  %109 = icmp ult i32 %108, 21
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = zext nneg i32 %108 to i64
  %112 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %111
  br label %119

113:                                              ; preds = %103
  %114 = icmp ugt i32 %108, -20
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  %116 = add nsw i32 %108, 40
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %117
  br label %119

119:                                              ; preds = %115, %113, %110
  %120 = phi ptr [ %112, %110 ], [ %118, %115 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %113 ]
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.126, ptr noundef nonnull %120)
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %123 = sub nsw i32 0, %63
  tail call fastcc void @omega_print_term(ptr noundef %122, ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %123)
  %124 = load i32, ptr %52, align 8, !tbaa !60
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %128 = tail call i32 @fputc(i32 93, ptr %127)
  br label %129

129:                                              ; preds = %126, %119
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %131 = tail call i32 @fputc(i32 10, ptr %130)
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call fastcc void @omega_print_vars(ptr noundef %132, ptr noundef nonnull %0)
  br label %133

133:                                              ; preds = %129, %94, %90
  %134 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %135 = load i32, ptr %134, align 8, !tbaa !67
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %187

137:                                              ; preds = %133
  %138 = icmp sgt i32 %91, -1
  %139 = zext i32 %91 to i64
  %140 = zext nneg i32 %135 to i64
  br label %141

141:                                              ; preds = %137, %185
  %142 = phi i64 [ %140, %137 ], [ %144, %185 ]
  %143 = phi i8 [ 0, %137 ], [ %175, %185 ]
  %144 = add nsw i64 %142, -1
  %145 = load ptr, ptr %41, align 8, !tbaa !68
  %146 = getelementptr inbounds %struct.eqn_d, ptr %145, i64 %144
  %147 = getelementptr inbounds %struct.eqn_d, ptr %145, i64 %144, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !56
  %149 = getelementptr inbounds i32, ptr %148, i64 %61
  %150 = load i32, ptr %149, align 4, !tbaa !50
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %174, label %152

152:                                              ; preds = %141
  %153 = getelementptr inbounds %struct.eqn_d, ptr %145, i64 %144, i32 2
  %154 = load i32, ptr %153, align 8, !tbaa !60
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %174, label %156

156:                                              ; preds = %152
  store i32 0, ptr %149, align 4, !tbaa !50
  br i1 %138, label %157, label %174

157:                                              ; preds = %156
  %158 = load ptr, ptr %53, align 8, !tbaa !56
  %159 = load ptr, ptr @packing, align 8, !tbaa !35
  %160 = mul i32 %150, %63
  br label %161

161:                                              ; preds = %157, %161
  %162 = phi i64 [ %139, %157 ], [ %172, %161 ]
  %163 = getelementptr inbounds i32, ptr %159, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !50
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %158, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !50
  %168 = mul i32 %160, %167
  %169 = getelementptr inbounds i32, ptr %148, i64 %165
  %170 = load i32, ptr %169, align 4, !tbaa !50
  %171 = sub nsw i32 %170, %168
  store i32 %171, ptr %169, align 4, !tbaa !50
  %172 = add nsw i64 %162, -1
  %173 = icmp sgt i64 %162, 0
  br i1 %173, label %161, label %174, !llvm.loop !256

174:                                              ; preds = %161, %156, %152, %141
  %175 = phi i8 [ %143, %141 ], [ 1, %152 ], [ %143, %156 ], [ %143, %161 ]
  %176 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %177 = icmp eq ptr %176, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %180 = and i32 %179, 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  tail call void @omega_print_eqn(ptr noundef nonnull %176, ptr noundef nonnull %0, ptr noundef %146, i8 noundef zeroext 0, i32 noundef 0)
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %184 = tail call i32 @fputc(i32 10, ptr %183)
  br label %185

185:                                              ; preds = %182, %178, %174
  %186 = icmp sgt i64 %142, 1
  br i1 %186, label %141, label %187, !llvm.loop !257

187:                                              ; preds = %185, %133
  %188 = phi i8 [ 0, %133 ], [ %175, %185 ]
  %189 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %190 = load i32, ptr %189, align 4, !tbaa !70
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %252

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %194 = icmp sgt i32 %91, -1
  %195 = zext i32 %91 to i64
  %196 = zext nneg i32 %190 to i64
  br label %197

197:                                              ; preds = %192, %250
  %198 = phi i64 [ %196, %192 ], [ %200, %250 ]
  %199 = phi i8 [ %188, %192 ], [ %231, %250 ]
  %200 = add nsw i64 %198, -1
  %201 = load ptr, ptr %193, align 8, !tbaa !71
  %202 = getelementptr inbounds %struct.eqn_d, ptr %201, i64 %200
  %203 = getelementptr inbounds %struct.eqn_d, ptr %201, i64 %200, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !56
  %205 = getelementptr inbounds i32, ptr %204, i64 %61
  %206 = load i32, ptr %205, align 4, !tbaa !50
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %230, label %208

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.eqn_d, ptr %201, i64 %200, i32 2
  %210 = load i32, ptr %209, align 8, !tbaa !60
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %230, label %212

212:                                              ; preds = %208
  store i32 0, ptr %205, align 4, !tbaa !50
  br i1 %194, label %213, label %230

213:                                              ; preds = %212
  %214 = load ptr, ptr %53, align 8, !tbaa !56
  %215 = load ptr, ptr @packing, align 8, !tbaa !35
  %216 = mul i32 %206, %63
  br label %217

217:                                              ; preds = %213, %217
  %218 = phi i64 [ %195, %213 ], [ %228, %217 ]
  %219 = getelementptr inbounds i32, ptr %215, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, ptr %214, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !50
  %224 = mul i32 %216, %223
  %225 = getelementptr inbounds i32, ptr %204, i64 %221
  %226 = load i32, ptr %225, align 4, !tbaa !50
  %227 = sub nsw i32 %226, %224
  store i32 %227, ptr %225, align 4, !tbaa !50
  %228 = add nsw i64 %218, -1
  %229 = icmp sgt i64 %218, 0
  br i1 %229, label %217, label %230, !llvm.loop !256

230:                                              ; preds = %217, %212, %208, %197
  %231 = phi i8 [ %199, %197 ], [ 1, %208 ], [ %199, %212 ], [ %199, %217 ]
  %232 = load i32, ptr %205, align 4, !tbaa !50
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.eqn_d, ptr %201, i64 %200, i32 2
  %236 = load i32, ptr %235, align 8, !tbaa !60
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.eqn_d, ptr %201, i64 %200, i32 1
  store i32 1, ptr %239, align 4, !tbaa !58
  br label %240

240:                                              ; preds = %238, %234, %230
  %241 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %242 = icmp eq ptr %241, null
  br i1 %242, label %250, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %245 = and i32 %244, 8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  tail call void @omega_print_eqn(ptr noundef nonnull %241, ptr noundef nonnull %0, ptr noundef %202, i8 noundef zeroext 1, i32 noundef 0)
  %248 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %249 = tail call i32 @fputc(i32 10, ptr %248)
  br label %250

250:                                              ; preds = %247, %243, %240
  %251 = icmp sgt i64 %198, 1
  br i1 %251, label %197, label %252, !llvm.loop !258

252:                                              ; preds = %250, %187
  %253 = phi i8 [ %188, %187 ], [ %231, %250 ]
  %254 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %255 = load i32, ptr %254, align 8, !tbaa !73
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %323

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %259 = icmp sgt i32 %91, -1
  %260 = zext i32 %91 to i64
  %261 = zext nneg i32 %255 to i64
  br label %262

262:                                              ; preds = %257, %321
  %263 = phi i64 [ %261, %257 ], [ %265, %321 ]
  %264 = phi i8 [ %253, %257 ], [ %296, %321 ]
  %265 = add nsw i64 %263, -1
  %266 = load ptr, ptr %258, align 8, !tbaa !74
  %267 = getelementptr inbounds %struct.eqn_d, ptr %266, i64 %265
  %268 = getelementptr inbounds %struct.eqn_d, ptr %266, i64 %265, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !56
  %270 = getelementptr inbounds i32, ptr %269, i64 %61
  %271 = load i32, ptr %270, align 4, !tbaa !50
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %295, label %273

273:                                              ; preds = %262
  %274 = getelementptr inbounds %struct.eqn_d, ptr %266, i64 %265, i32 2
  %275 = load i32, ptr %274, align 8, !tbaa !60
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %295, label %277

277:                                              ; preds = %273
  store i32 0, ptr %270, align 4, !tbaa !50
  br i1 %259, label %278, label %295

278:                                              ; preds = %277
  %279 = load ptr, ptr %53, align 8, !tbaa !56
  %280 = load ptr, ptr @packing, align 8, !tbaa !35
  %281 = mul i32 %271, %63
  br label %282

282:                                              ; preds = %278, %282
  %283 = phi i64 [ %260, %278 ], [ %293, %282 ]
  %284 = getelementptr inbounds i32, ptr %280, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !50
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, ptr %279, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !50
  %289 = mul i32 %281, %288
  %290 = getelementptr inbounds i32, ptr %269, i64 %286
  %291 = load i32, ptr %290, align 4, !tbaa !50
  %292 = sub nsw i32 %291, %289
  store i32 %292, ptr %290, align 4, !tbaa !50
  %293 = add nsw i64 %283, -1
  %294 = icmp sgt i64 %283, 0
  br i1 %294, label %282, label %295, !llvm.loop !256

295:                                              ; preds = %282, %277, %273, %262
  %296 = phi i8 [ %264, %262 ], [ 1, %273 ], [ %264, %277 ], [ %264, %282 ]
  %297 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %298 = icmp eq ptr %297, null
  br i1 %298, label %321, label %299

299:                                              ; preds = %295
  %300 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %301 = and i32 %300, 8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %321, label %303

303:                                              ; preds = %299
  %304 = load i32, ptr %267, align 8, !tbaa !59
  %305 = icmp ult i32 %304, 21
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = zext nneg i32 %304 to i64
  %308 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %307
  br label %315

309:                                              ; preds = %303
  %310 = icmp ugt i32 %304, -20
  br i1 %310, label %311, label %315

311:                                              ; preds = %309
  %312 = add nsw i32 %304, 40
  %313 = zext nneg i32 %312 to i64
  %314 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %313
  br label %315

315:                                              ; preds = %311, %309, %306
  %316 = phi ptr [ %308, %306 ], [ %314, %311 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %309 ]
  %317 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %297, ptr noundef nonnull @.str.16, ptr noundef nonnull %316)
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call fastcc void @omega_print_term(ptr noundef %318, ptr noundef nonnull %0, ptr noundef nonnull %267, i32 noundef 1)
  %319 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %320 = tail call i32 @fputc(i32 10, ptr %319)
  br label %321

321:                                              ; preds = %315, %299, %295
  %322 = icmp sgt i64 %263, 1
  br i1 %322, label %262, label %323, !llvm.loop !259

323:                                              ; preds = %321, %252
  %324 = phi i8 [ %253, %252 ], [ %296, %321 ]
  %325 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %326 = icmp eq ptr %325, null
  br i1 %326, label %333, label %327

327:                                              ; preds = %323
  %328 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %329 = and i32 %328, 8
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %327
  %332 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 5, i64 1, ptr nonnull %325)
  br label %333

333:                                              ; preds = %331, %327, %323
  %334 = icmp sgt i32 %2, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %333
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %336

336:                                              ; preds = %335, %333
  %337 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %338 = load i32, ptr %337, align 4, !tbaa !76
  %339 = icmp slt i32 %338, %2
  br i1 %339, label %347, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %342 = load ptr, ptr %341, align 8, !tbaa !61
  %343 = getelementptr inbounds i32, ptr %342, i64 %61
  %344 = load i32, ptr %343, align 4, !tbaa !50
  %345 = icmp sgt i32 %344, -1
  %346 = select i1 %345, i8 1, i8 %324
  br label %347

347:                                              ; preds = %340, %336
  %348 = phi i8 [ %324, %336 ], [ %346, %340 ]
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %347
  tail call void @omega_convert_eq_to_geqs(ptr noundef nonnull %0, i32 noundef %1)
  br label %517

351:                                              ; preds = %347
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %2)
  br label %517

352:                                              ; preds = %64
  tail call fastcc void @omega_substitute(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef %63)
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %2)
  br label %517

353:                                              ; preds = %40
  %354 = tail call i32 @llvm.abs.i32(i32 %63, i1 true)
  %355 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %356 = icmp eq ptr %355, null
  br i1 %356, label %363, label %357

357:                                              ; preds = %353
  %358 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %359 = and i32 %358, 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %357
  %362 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %355, ptr noundef nonnull @.str.125, i32 noundef %63)
  br label %363

363:                                              ; preds = %361, %357, %353
  %364 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %365 = load i32, ptr %364, align 8, !tbaa !67
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %411

367:                                              ; preds = %363
  %368 = load ptr, ptr %41, align 8, !tbaa !68
  %369 = icmp sgt i32 %14, -1
  %370 = icmp sgt i32 %14, -1
  %371 = zext i32 %14 to i64
  %372 = zext nneg i32 %365 to i64
  br label %373

373:                                              ; preds = %367, %409
  %374 = phi i64 [ %372, %367 ], [ %375, %409 ]
  %375 = add nsw i64 %374, -1
  %376 = getelementptr inbounds %struct.eqn_d, ptr %368, i64 %375, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !56
  %378 = getelementptr inbounds i32, ptr %377, i64 %61
  %379 = load i32, ptr %378, align 4, !tbaa !50
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %409, label %381

381:                                              ; preds = %373
  br i1 %369, label %382, label %389

382:                                              ; preds = %381, %382
  %383 = phi i64 [ %387, %382 ], [ %371, %381 ]
  %384 = getelementptr inbounds i32, ptr %377, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !50
  %386 = mul nsw i32 %385, %354
  store i32 %386, ptr %384, align 4, !tbaa !50
  %387 = add nsw i64 %383, -1
  %388 = icmp sgt i64 %383, 0
  br i1 %388, label %382, label %389, !llvm.loop !260

389:                                              ; preds = %382, %381
  %390 = load i32, ptr %378, align 4, !tbaa !50
  store i32 0, ptr %378, align 4, !tbaa !50
  %391 = load i32, ptr %52, align 8, !tbaa !60
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = getelementptr inbounds %struct.eqn_d, ptr %368, i64 %375, i32 2
  store i32 1, ptr %394, align 8, !tbaa !60
  br label %395

395:                                              ; preds = %393, %389
  br i1 %370, label %396, label %409

396:                                              ; preds = %395
  %397 = load ptr, ptr %53, align 8, !tbaa !56
  br label %398

398:                                              ; preds = %396, %398
  %399 = phi i64 [ %371, %396 ], [ %407, %398 ]
  %400 = getelementptr inbounds i32, ptr %397, i64 %399
  %401 = load i32, ptr %400, align 4, !tbaa !50
  %402 = mul nsw i32 %401, %390
  %403 = sdiv i32 %402, %63
  %404 = getelementptr inbounds i32, ptr %377, i64 %399
  %405 = load i32, ptr %404, align 4, !tbaa !50
  %406 = sub nsw i32 %405, %403
  store i32 %406, ptr %404, align 4, !tbaa !50
  %407 = add nsw i64 %399, -1
  %408 = icmp sgt i64 %399, 0
  br i1 %408, label %398, label %409, !llvm.loop !261

409:                                              ; preds = %398, %395, %373
  %410 = icmp sgt i64 %374, 1
  br i1 %410, label %373, label %411, !llvm.loop !262

411:                                              ; preds = %409, %363
  %412 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %413 = load i32, ptr %412, align 4, !tbaa !70
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %461

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %417 = load ptr, ptr %416, align 8, !tbaa !71
  %418 = icmp sgt i32 %14, -1
  %419 = icmp sgt i32 %14, -1
  %420 = zext i32 %14 to i64
  %421 = zext nneg i32 %413 to i64
  br label %422

422:                                              ; preds = %415, %459
  %423 = phi i64 [ %421, %415 ], [ %424, %459 ]
  %424 = add nsw i64 %423, -1
  %425 = getelementptr inbounds %struct.eqn_d, ptr %417, i64 %424, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !56
  %427 = getelementptr inbounds i32, ptr %426, i64 %61
  %428 = load i32, ptr %427, align 4, !tbaa !50
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %459, label %430

430:                                              ; preds = %422
  %431 = load i32, ptr %52, align 8, !tbaa !60
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %435

433:                                              ; preds = %430
  %434 = getelementptr inbounds %struct.eqn_d, ptr %417, i64 %424, i32 2
  store i32 1, ptr %434, align 8, !tbaa !60
  br label %435

435:                                              ; preds = %433, %430
  br i1 %418, label %436, label %443

436:                                              ; preds = %435, %436
  %437 = phi i64 [ %441, %436 ], [ %420, %435 ]
  %438 = getelementptr inbounds i32, ptr %426, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !50
  %440 = mul nsw i32 %439, %354
  store i32 %440, ptr %438, align 4, !tbaa !50
  %441 = add nsw i64 %437, -1
  %442 = icmp sgt i64 %437, 0
  br i1 %442, label %436, label %443, !llvm.loop !263

443:                                              ; preds = %436, %435
  %444 = getelementptr inbounds %struct.eqn_d, ptr %417, i64 %424, i32 1
  store i32 1, ptr %444, align 4, !tbaa !58
  %445 = load i32, ptr %427, align 4, !tbaa !50
  store i32 0, ptr %427, align 4, !tbaa !50
  br i1 %419, label %446, label %459

446:                                              ; preds = %443
  %447 = load ptr, ptr %53, align 8, !tbaa !56
  br label %448

448:                                              ; preds = %446, %448
  %449 = phi i64 [ %420, %446 ], [ %457, %448 ]
  %450 = getelementptr inbounds i32, ptr %447, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !50
  %452 = mul nsw i32 %451, %445
  %453 = sdiv i32 %452, %63
  %454 = getelementptr inbounds i32, ptr %426, i64 %449
  %455 = load i32, ptr %454, align 4, !tbaa !50
  %456 = sub nsw i32 %455, %453
  store i32 %456, ptr %454, align 4, !tbaa !50
  %457 = add nsw i64 %449, -1
  %458 = icmp sgt i64 %449, 0
  br i1 %458, label %448, label %459, !llvm.loop !264

459:                                              ; preds = %448, %443, %422
  %460 = icmp sgt i64 %423, 1
  br i1 %460, label %422, label %461, !llvm.loop !265

461:                                              ; preds = %459, %411
  %462 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %463 = load i32, ptr %462, align 8, !tbaa !73
  %464 = icmp sgt i32 %463, 0
  br i1 %464, label %465, label %513

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %467 = icmp sgt i32 %14, -1
  %468 = icmp sgt i32 %14, -1
  %469 = zext i32 %14 to i64
  %470 = zext nneg i32 %463 to i64
  br label %471

471:                                              ; preds = %465, %511
  %472 = phi i64 [ %470, %465 ], [ %473, %511 ]
  %473 = add nsw i64 %472, -1
  %474 = load ptr, ptr %466, align 8, !tbaa !74
  %475 = getelementptr inbounds %struct.eqn_d, ptr %474, i64 %473, i32 3
  %476 = load ptr, ptr %475, align 8, !tbaa !56
  %477 = getelementptr inbounds i32, ptr %476, i64 %61
  %478 = load i32, ptr %477, align 4, !tbaa !50
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %511, label %480

480:                                              ; preds = %471
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3082, ptr noundef nonnull @.str.21) #22
  %481 = load i32, ptr %52, align 8, !tbaa !60
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %484, label %483

483:                                              ; preds = %480
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3083, ptr noundef nonnull @.str.21) #22
  br label %484

484:                                              ; preds = %480, %483
  br i1 %467, label %485, label %494

485:                                              ; preds = %484
  %486 = load ptr, ptr %475, align 8, !tbaa !56
  br label %487

487:                                              ; preds = %485, %487
  %488 = phi i64 [ %469, %485 ], [ %492, %487 ]
  %489 = getelementptr inbounds i32, ptr %486, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !50
  %491 = mul nsw i32 %490, %354
  store i32 %491, ptr %489, align 4, !tbaa !50
  %492 = add nsw i64 %488, -1
  %493 = icmp sgt i64 %488, 0
  br i1 %493, label %487, label %494, !llvm.loop !266

494:                                              ; preds = %487, %484
  %495 = load ptr, ptr %475, align 8, !tbaa !56
  %496 = getelementptr inbounds i32, ptr %495, i64 %61
  %497 = load i32, ptr %496, align 4, !tbaa !50
  store i32 0, ptr %496, align 4, !tbaa !50
  br i1 %468, label %498, label %511

498:                                              ; preds = %494
  %499 = load ptr, ptr %53, align 8, !tbaa !56
  br label %500

500:                                              ; preds = %498, %500
  %501 = phi i64 [ %469, %498 ], [ %509, %500 ]
  %502 = getelementptr inbounds i32, ptr %499, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !50
  %504 = mul nsw i32 %503, %497
  %505 = sdiv i32 %504, %63
  %506 = getelementptr inbounds i32, ptr %495, i64 %501
  %507 = load i32, ptr %506, align 4, !tbaa !50
  %508 = sub nsw i32 %507, %505
  store i32 %508, ptr %506, align 4, !tbaa !50
  %509 = add nsw i64 %501, -1
  %510 = icmp sgt i64 %501, 0
  br i1 %510, label %500, label %511, !llvm.loop !267

511:                                              ; preds = %500, %494, %471
  %512 = icmp sgt i64 %472, 1
  br i1 %512, label %471, label %513, !llvm.loop !268

513:                                              ; preds = %511, %461
  %514 = load i1, ptr @in_approximate_mode, align 1
  br i1 %514, label %515, label %516

515:                                              ; preds = %513
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %2)
  br label %517

516:                                              ; preds = %513
  tail call void @omega_convert_eq_to_geqs(ptr noundef nonnull %0, i32 noundef %1)
  br label %517

517:                                              ; preds = %350, %351, %515, %516, %352
  %518 = load ptr, ptr %53, align 8, !tbaa !56
  tail call void @free(ptr noundef %518)
  tail call void @free(ptr noundef %4)
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @omega_add_new_wild_card(ptr nocapture noundef %0) unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !76
  %5 = load i32, ptr %0, align 8, !tbaa !54
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %0, align 8, !tbaa !54
  %7 = icmp eq i32 %5, %3
  br i1 %7, label %82, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !70
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = sext i32 %4 to i64
  %16 = zext nneg i32 %10 to i64
  br label %17

17:                                               ; preds = %12, %27
  %18 = phi i64 [ %16, %12 ], [ %19, %27 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %19, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds i32, ptr %21, i64 %15
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %19, i32 1
  store i32 1, ptr %26, align 4, !tbaa !58
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i32, ptr %22, align 4, !tbaa !50
  %29 = load i32, ptr %0, align 8, !tbaa !54
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %21, i64 %30
  store i32 %28, ptr %31, align 4, !tbaa !50
  %32 = icmp sgt i64 %18, 1
  br i1 %32, label %17, label %33, !llvm.loop !269

33:                                               ; preds = %27, %8
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !67
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = sext i32 %4 to i64
  %41 = zext nneg i32 %35 to i64
  br label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ %41, %37 ], [ %44, %42 ]
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds %struct.eqn_d, ptr %39, i64 %44, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = getelementptr inbounds i32, ptr %46, i64 %40
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = load i32, ptr %0, align 8, !tbaa !54
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %46, i64 %50
  store i32 %48, ptr %51, align 4, !tbaa !50
  %52 = icmp sgt i64 %43, 1
  br i1 %52, label %42, label %53, !llvm.loop !270

53:                                               ; preds = %42, %33
  %54 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !73
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !74
  %60 = sext i32 %4 to i64
  %61 = zext nneg i32 %55 to i64
  br label %62

62:                                               ; preds = %57, %62
  %63 = phi i64 [ %61, %57 ], [ %64, %62 ]
  %64 = add nsw i64 %63, -1
  %65 = getelementptr inbounds %struct.eqn_d, ptr %59, i64 %64, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = getelementptr inbounds i32, ptr %66, i64 %60
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = load i32, ptr %0, align 8, !tbaa !54
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %66, i64 %70
  store i32 %68, ptr %71, align 4, !tbaa !50
  %72 = icmp sgt i64 %63, 1
  br i1 %72, label %62, label %73, !llvm.loop !271

73:                                               ; preds = %62, %53
  %74 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !61
  %76 = sext i32 %4 to i64
  %77 = getelementptr inbounds i32, ptr %75, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !50
  %79 = load i32, ptr %0, align 8, !tbaa !54
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %75, i64 %80
  store i32 %78, ptr %81, align 4, !tbaa !50
  br label %82

82:                                               ; preds = %73, %1
  %83 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !70
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %88 = load ptr, ptr %87, align 8, !tbaa !71
  %89 = sext i32 %4 to i64
  %90 = zext nneg i32 %84 to i64
  br label %91

91:                                               ; preds = %86, %91
  %92 = phi i64 [ %90, %86 ], [ %93, %91 ]
  %93 = add nsw i64 %92, -1
  %94 = getelementptr inbounds %struct.eqn_d, ptr %88, i64 %93, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !56
  %96 = getelementptr inbounds i32, ptr %95, i64 %89
  store i32 0, ptr %96, align 4, !tbaa !50
  %97 = icmp sgt i64 %92, 1
  br i1 %97, label %91, label %98, !llvm.loop !272

98:                                               ; preds = %91, %82
  %99 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !67
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %104 = load ptr, ptr %103, align 8, !tbaa !68
  %105 = sext i32 %4 to i64
  %106 = zext nneg i32 %100 to i64
  br label %107

107:                                              ; preds = %102, %107
  %108 = phi i64 [ %106, %102 ], [ %109, %107 ]
  %109 = add nsw i64 %108, -1
  %110 = getelementptr inbounds %struct.eqn_d, ptr %104, i64 %109, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !56
  %112 = getelementptr inbounds i32, ptr %111, i64 %105
  store i32 0, ptr %112, align 4, !tbaa !50
  %113 = icmp sgt i64 %108, 1
  br i1 %113, label %107, label %114, !llvm.loop !273

114:                                              ; preds = %107, %98
  %115 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %116 = load i32, ptr %115, align 8, !tbaa !73
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !74
  %121 = sext i32 %4 to i64
  %122 = zext nneg i32 %116 to i64
  br label %123

123:                                              ; preds = %118, %123
  %124 = phi i64 [ %122, %118 ], [ %125, %123 ]
  %125 = add nsw i64 %124, -1
  %126 = getelementptr inbounds %struct.eqn_d, ptr %120, i64 %125, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !56
  %128 = getelementptr inbounds i32, ptr %127, i64 %121
  store i32 0, ptr %128, align 4, !tbaa !50
  %129 = icmp sgt i64 %124, 1
  br i1 %129, label %123, label %130, !llvm.loop !274

130:                                              ; preds = %123, %114
  %131 = load i32, ptr @next_wild_card, align 4, !tbaa !50
  %132 = add nsw i32 %131, -1
  store i32 %132, ptr @next_wild_card, align 4, !tbaa !50
  %133 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %134 = getelementptr inbounds %struct.param_info, ptr %133, i64 67, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !87
  %136 = sub nsw i32 0, %135
  %137 = icmp sgt i32 %131, %136
  %138 = select i1 %137, i32 %132, i32 -1
  store i32 %138, ptr @next_wild_card, align 4
  %139 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %140 = load ptr, ptr %139, align 8, !tbaa !61
  %141 = sext i32 %4 to i64
  %142 = getelementptr inbounds i32, ptr %140, i64 %141
  store i32 %138, ptr %142, align 4, !tbaa !50
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omega_do_mod(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 !prof !34 {
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #22
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 64, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !87
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 4) #22
  %12 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !56
  store i32 0, ptr %5, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !58
  %14 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !60
  store i32 0, ptr %11, align 4
  %15 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = sext i32 %2 to i64
  %18 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17
  %19 = load i32, ptr %0, align 8, !tbaa !54
  %20 = load i32, ptr %18, align 8, !tbaa !59
  store i32 %20, ptr %5, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !58
  %24 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !60
  %27 = getelementptr inbounds %struct.eqn_d, ptr %5, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %17, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = add nsw i32 %19, 1
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 4 %30, i64 %33, i1 false)
  %34 = load i32, ptr %0, align 8, !tbaa !54
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %61

36:                                               ; preds = %4
  %37 = load ptr, ptr %27, align 8, !tbaa !56
  %38 = zext nneg i32 %34 to i64
  br label %39

39:                                               ; preds = %36, %51
  %40 = phi i64 [ %38, %36 ], [ %59, %51 ]
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = sdiv i32 %42, %1
  br label %51

46:                                               ; preds = %39
  %47 = xor i32 %42, -1
  %48 = add i32 %47, %1
  %49 = sdiv i32 %48, %1
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %44, %46
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = mul nsw i32 %52, %1
  %54 = sub nsw i32 %42, %53
  %55 = shl nsw i32 %54, 1
  %56 = icmp slt i32 %55, %1
  %57 = select i1 %56, i32 0, i32 %1
  %58 = sub nsw i32 %54, %57
  store i32 %58, ptr %41, align 4, !tbaa !50
  %59 = add nsw i64 %40, -1
  %60 = icmp sgt i64 %40, 0
  br i1 %60, label %39, label %61, !llvm.loop !275

61:                                               ; preds = %51, %4
  %62 = load ptr, ptr %27, align 8, !tbaa !56
  %63 = sext i32 %3 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !50
  %66 = icmp sgt i32 %3, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %68

68:                                               ; preds = %61, %67
  %69 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !76
  %71 = icmp slt i32 %70, %3
  br i1 %71, label %89, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !61
  %75 = getelementptr inbounds i32, ptr %74, i64 %63
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = tail call fastcc i32 @omega_add_new_wild_card(ptr noundef nonnull %0)
  %80 = load ptr, ptr %27, align 8, !tbaa !56
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, ptr %80, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = load i32, ptr %0, align 8, !tbaa !54
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %80, i64 %85
  store i32 %83, ptr %86, align 4, !tbaa !50
  %87 = getelementptr inbounds i32, ptr %80, i64 %63
  store i32 0, ptr %87, align 4, !tbaa !50
  %88 = sub nsw i32 0, %1
  store i32 %88, ptr %82, align 4, !tbaa !50
  br label %107

89:                                               ; preds = %72, %68
  %90 = sub nsw i32 0, %1
  %91 = load ptr, ptr %27, align 8, !tbaa !56
  %92 = getelementptr inbounds i32, ptr %91, i64 %63
  store i32 %90, ptr %92, align 4, !tbaa !50
  %93 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !61
  %95 = getelementptr inbounds i32, ptr %94, i64 %63
  %96 = load i32, ptr %95, align 4, !tbaa !50
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load i32, ptr @next_wild_card, align 4, !tbaa !50
  %100 = add nsw i32 %99, -1
  store i32 %100, ptr @next_wild_card, align 4, !tbaa !50
  %101 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %102 = getelementptr inbounds %struct.param_info, ptr %101, i64 67, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !87
  %104 = sub nsw i32 0, %103
  %105 = icmp sgt i32 %99, %104
  %106 = select i1 %105, i32 %100, i32 -1
  store i32 %106, ptr @next_wild_card, align 4
  store i32 %106, ptr %95, align 4, !tbaa !50
  br label %107

107:                                              ; preds = %89, %98, %78
  %108 = phi i1 [ true, %89 ], [ true, %98 ], [ false, %78 ]
  tail call fastcc void @omega_substitute(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %65)
  %109 = load i32, ptr %0, align 8, !tbaa !54
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load ptr, ptr %15, align 8, !tbaa !68
  %113 = getelementptr inbounds %struct.eqn_d, ptr %112, i64 %17, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !56
  %115 = zext nneg i32 %109 to i64
  br label %116

116:                                              ; preds = %111, %116
  %117 = phi i64 [ %115, %111 ], [ %121, %116 ]
  %118 = getelementptr inbounds i32, ptr %114, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !50
  %120 = sdiv i32 %119, %1
  store i32 %120, ptr %118, align 4, !tbaa !50
  %121 = add nsw i64 %117, -1
  %122 = icmp sgt i64 %117, 0
  br i1 %122, label %116, label %123, !llvm.loop !276

123:                                              ; preds = %116, %107
  br i1 %108, label %125, label %124

124:                                              ; preds = %123
  tail call fastcc void @omega_delete_variable(ptr noundef nonnull %0, i32 noundef %3)
  br label %125

125:                                              ; preds = %124, %123
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %130 = and i32 %129, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = tail call i64 @fwrite(ptr nonnull @.str.129, i64 34, i64 1, ptr nonnull %126)
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %134, ptr noundef nonnull %0)
  br label %135

135:                                              ; preds = %132, %128, %125
  %136 = load ptr, ptr %27, align 8, !tbaa !56
  tail call void @free(ptr noundef %136)
  tail call void @free(ptr noundef %5)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omega_delete_variable(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %88, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = sext i32 %8 to i64
  %18 = sext i32 %1 to i64
  %19 = sext i32 %3 to i64
  %20 = zext nneg i32 %12 to i64
  br label %21

21:                                               ; preds = %14, %21
  %22 = phi i64 [ %20, %14 ], [ %23, %21 ]
  %23 = add nsw i64 %22, -1
  %24 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %23, i32 1
  store i32 1, ptr %24, align 4, !tbaa !58
  %25 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %23, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds i32, ptr %26, i64 %17
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds i32, ptr %26, i64 %18
  store i32 %28, ptr %29, align 4, !tbaa !50
  %30 = getelementptr inbounds i32, ptr %26, i64 %19
  %31 = load i32, ptr %30, align 4, !tbaa !50
  store i32 %31, ptr %27, align 4, !tbaa !50
  %32 = icmp sgt i64 %22, 1
  br i1 %32, label %21, label %33, !llvm.loop !277

33:                                               ; preds = %21, %10
  %34 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !67
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = sext i32 %8 to i64
  %41 = sext i32 %1 to i64
  %42 = sext i32 %3 to i64
  %43 = zext nneg i32 %35 to i64
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi i64 [ %43, %37 ], [ %46, %44 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds %struct.eqn_d, ptr %39, i64 %46, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = getelementptr inbounds i32, ptr %48, i64 %40
  %50 = load i32, ptr %49, align 4, !tbaa !50
  %51 = getelementptr inbounds i32, ptr %48, i64 %41
  store i32 %50, ptr %51, align 4, !tbaa !50
  %52 = getelementptr inbounds i32, ptr %48, i64 %42
  %53 = load i32, ptr %52, align 4, !tbaa !50
  store i32 %53, ptr %49, align 4, !tbaa !50
  %54 = icmp sgt i64 %45, 1
  br i1 %54, label %44, label %55, !llvm.loop !278

55:                                               ; preds = %44, %33
  %56 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !73
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !74
  %62 = sext i32 %8 to i64
  %63 = sext i32 %1 to i64
  %64 = sext i32 %3 to i64
  %65 = zext nneg i32 %57 to i64
  br label %66

66:                                               ; preds = %59, %66
  %67 = phi i64 [ %65, %59 ], [ %68, %66 ]
  %68 = add nsw i64 %67, -1
  %69 = getelementptr inbounds %struct.eqn_d, ptr %61, i64 %68, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !56
  %71 = getelementptr inbounds i32, ptr %70, i64 %62
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = getelementptr inbounds i32, ptr %70, i64 %63
  store i32 %72, ptr %73, align 4, !tbaa !50
  %74 = getelementptr inbounds i32, ptr %70, i64 %64
  %75 = load i32, ptr %74, align 4, !tbaa !50
  store i32 %75, ptr %71, align 4, !tbaa !50
  %76 = icmp sgt i64 %67, 1
  br i1 %76, label %66, label %77, !llvm.loop !279

77:                                               ; preds = %66, %55
  %78 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !61
  %80 = sext i32 %8 to i64
  %81 = getelementptr inbounds i32, ptr %79, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !50
  %83 = sext i32 %1 to i64
  %84 = getelementptr inbounds i32, ptr %79, i64 %83
  store i32 %82, ptr %84, align 4, !tbaa !50
  %85 = sext i32 %3 to i64
  %86 = getelementptr inbounds i32, ptr %79, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !50
  store i32 %87, ptr %81, align 4, !tbaa !50
  br label %159

88:                                               ; preds = %6
  %89 = icmp sgt i32 %3, %1
  br i1 %89, label %90, label %159

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !70
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %96 = load ptr, ptr %95, align 8, !tbaa !71
  %97 = sext i32 %3 to i64
  %98 = sext i32 %1 to i64
  %99 = zext nneg i32 %92 to i64
  br label %100

100:                                              ; preds = %94, %111
  %101 = phi i64 [ %99, %94 ], [ %102, %111 ]
  %102 = add nsw i64 %101, -1
  %103 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %102, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !56
  %105 = getelementptr inbounds i32, ptr %104, i64 %97
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds i32, ptr %104, i64 %98
  store i32 %106, ptr %109, align 4, !tbaa !50
  %110 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %102, i32 1
  store i32 1, ptr %110, align 4, !tbaa !58
  br label %111

111:                                              ; preds = %100, %108
  %112 = icmp sgt i64 %101, 1
  br i1 %112, label %100, label %113, !llvm.loop !280

113:                                              ; preds = %111, %90
  %114 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !67
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %119 = load ptr, ptr %118, align 8, !tbaa !68
  %120 = sext i32 %3 to i64
  %121 = sext i32 %1 to i64
  %122 = zext nneg i32 %115 to i64
  br label %123

123:                                              ; preds = %117, %123
  %124 = phi i64 [ %122, %117 ], [ %125, %123 ]
  %125 = add nsw i64 %124, -1
  %126 = getelementptr inbounds %struct.eqn_d, ptr %119, i64 %125, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !56
  %128 = getelementptr inbounds i32, ptr %127, i64 %120
  %129 = load i32, ptr %128, align 4, !tbaa !50
  %130 = getelementptr inbounds i32, ptr %127, i64 %121
  store i32 %129, ptr %130, align 4, !tbaa !50
  %131 = icmp sgt i64 %124, 1
  br i1 %131, label %123, label %132, !llvm.loop !281

132:                                              ; preds = %123, %113
  %133 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %134 = load i32, ptr %133, align 8, !tbaa !73
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %138 = load ptr, ptr %137, align 8, !tbaa !74
  %139 = sext i32 %3 to i64
  %140 = sext i32 %1 to i64
  %141 = zext nneg i32 %134 to i64
  br label %142

142:                                              ; preds = %136, %142
  %143 = phi i64 [ %141, %136 ], [ %144, %142 ]
  %144 = add nsw i64 %143, -1
  %145 = getelementptr inbounds %struct.eqn_d, ptr %138, i64 %144, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !56
  %147 = getelementptr inbounds i32, ptr %146, i64 %139
  %148 = load i32, ptr %147, align 4, !tbaa !50
  %149 = getelementptr inbounds i32, ptr %146, i64 %140
  store i32 %148, ptr %149, align 4, !tbaa !50
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %151, !llvm.loop !282

151:                                              ; preds = %142, %132
  %152 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !61
  %154 = sext i32 %3 to i64
  %155 = getelementptr inbounds i32, ptr %153, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !50
  %157 = sext i32 %1 to i64
  %158 = getelementptr inbounds i32, ptr %153, i64 %157
  store i32 %156, ptr %158, align 4, !tbaa !50
  br label %159

159:                                              ; preds = %88, %151, %77
  br i1 %4, label %161, label %160

160:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %161

161:                                              ; preds = %159, %160
  %162 = load i32, ptr %7, align 4, !tbaa !76
  %163 = icmp slt i32 %162, %1
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = add nsw i32 %162, -1
  store i32 %165, ptr %7, align 4, !tbaa !76
  br label %166

166:                                              ; preds = %164, %161
  %167 = load i32, ptr %0, align 8, !tbaa !54
  %168 = add nsw i32 %167, -1
  store i32 %168, ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omega_substitute(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 !prof !34 {
  %5 = load i32, ptr %0, align 8, !tbaa !54
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %27

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = load ptr, ptr @packing, align 8
  %11 = zext nneg i32 %5 to i64
  br label %12

12:                                               ; preds = %7, %23
  %13 = phi i64 [ %11, %7 ], [ %25, %23 ]
  %14 = phi i32 [ 0, %7 ], [ %24, %23 ]
  %15 = getelementptr inbounds i32, ptr %9, i64 %13
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %14, 1
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds i32, ptr %10, i64 %20
  %22 = trunc i64 %13 to i32
  store i32 %22, ptr %21, align 4, !tbaa !50
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i32 [ %19, %18 ], [ %14, %12 ]
  %25 = add nsw i64 %13, -1
  %26 = icmp sgt i64 %13, 0
  br i1 %26, label %12, label %27, !llvm.loop !255

27:                                               ; preds = %23, %4
  %28 = phi i32 [ 0, %4 ], [ %24, %23 ]
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  %38 = sext i32 %2 to i64
  %39 = getelementptr inbounds i32, ptr %37, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = icmp ult i32 %40, 21
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %43
  br label %51

45:                                               ; preds = %35
  %46 = icmp ugt i32 %40, -20
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = add nsw i32 %40, 40
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %49
  br label %51

51:                                               ; preds = %42, %45, %47
  %52 = phi ptr [ %44, %42 ], [ %50, %47 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %45 ]
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.126, ptr noundef nonnull %52)
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %55 = sub nsw i32 0, %3
  tail call fastcc void @omega_print_term(ptr noundef %54, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %55)
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %57 = tail call i32 @fputc(i32 10, ptr %56)
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call fastcc void @omega_print_vars(ptr noundef %58, ptr noundef nonnull %0)
  br label %59

59:                                               ; preds = %51, %31, %27
  %60 = icmp slt i32 %28, 0
  br i1 %60, label %61, label %146

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !67
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %67 = load ptr, ptr %66, align 8, !tbaa !68
  %68 = sext i32 %2 to i64
  %69 = zext nneg i32 %63 to i64
  br label %70

70:                                               ; preds = %65, %70
  %71 = phi i64 [ %69, %65 ], [ %72, %70 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds %struct.eqn_d, ptr %67, i64 %72, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  %75 = getelementptr inbounds i32, ptr %74, i64 %68
  store i32 0, ptr %75, align 4, !tbaa !50
  %76 = icmp sgt i64 %71, 1
  br i1 %76, label %70, label %77, !llvm.loop !283

77:                                               ; preds = %70, %61
  %78 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !70
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %83 = load ptr, ptr %82, align 8, !tbaa !71
  %84 = sext i32 %2 to i64
  %85 = zext nneg i32 %79 to i64
  br label %86

86:                                               ; preds = %81, %96
  %87 = phi i64 [ %85, %81 ], [ %88, %96 ]
  %88 = add nsw i64 %87, -1
  %89 = getelementptr inbounds %struct.eqn_d, ptr %83, i64 %88, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !56
  %91 = getelementptr inbounds i32, ptr %90, i64 %84
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.eqn_d, ptr %83, i64 %88, i32 1
  store i32 1, ptr %95, align 4, !tbaa !58
  store i32 0, ptr %91, align 4, !tbaa !50
  br label %96

96:                                               ; preds = %86, %94
  %97 = icmp sgt i64 %87, 1
  br i1 %97, label %86, label %98, !llvm.loop !284

98:                                               ; preds = %96, %77
  %99 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !73
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %104 = load ptr, ptr %103, align 8, !tbaa !74
  %105 = sext i32 %2 to i64
  %106 = zext nneg i32 %100 to i64
  br label %107

107:                                              ; preds = %102, %107
  %108 = phi i64 [ %106, %102 ], [ %109, %107 ]
  %109 = add nsw i64 %108, -1
  %110 = getelementptr inbounds %struct.eqn_d, ptr %104, i64 %109, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !56
  %112 = getelementptr inbounds i32, ptr %111, i64 %105
  store i32 0, ptr %112, align 4, !tbaa !50
  %113 = icmp sgt i64 %108, 1
  br i1 %113, label %107, label %114, !llvm.loop !285

114:                                              ; preds = %107, %98
  %115 = icmp sgt i32 %2, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %117

117:                                              ; preds = %114, %116
  %118 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !76
  %120 = icmp slt i32 %119, %2
  br i1 %120, label %492, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %123 = load ptr, ptr %122, align 8, !tbaa !61
  %124 = sext i32 %2 to i64
  %125 = getelementptr inbounds i32, ptr %123, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !50
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %492

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !74
  %131 = load i32, ptr %99, align 8, !tbaa !73
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr %99, align 8, !tbaa !73
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds %struct.eqn_d, ptr %130, i64 %133
  %135 = load i32, ptr %0, align 8, !tbaa !54
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.eqn_d, ptr %130, i64 %133, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !56
  %140 = add nuw i32 %135, 1
  %141 = zext i32 %140 to i64
  %142 = shl nuw nsw i64 %141, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %139, i8 0, i64 %142, i1 false), !tbaa !50
  br label %143

143:                                              ; preds = %137, %128
  %144 = load i32, ptr %125, align 4, !tbaa !50
  store i32 %144, ptr %134, align 8, !tbaa !59
  %145 = getelementptr inbounds %struct.eqn_d, ptr %130, i64 %133, i32 2
  store i32 0, ptr %145, align 8, !tbaa !60
  br label %492

146:                                              ; preds = %59
  %147 = icmp eq i32 %28, 0
  br i1 %147, label %148, label %271

148:                                              ; preds = %146
  %149 = load ptr, ptr @packing, align 8, !tbaa !35
  %150 = load i32, ptr %149, align 4, !tbaa !50
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %271

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !56
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = mul i32 %155, %3
  %157 = sub i32 0, %156
  %158 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !67
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %163 = load ptr, ptr %162, align 8, !tbaa !68
  %164 = sext i32 %2 to i64
  %165 = zext nneg i32 %159 to i64
  br label %166

166:                                              ; preds = %161, %166
  %167 = phi i64 [ %165, %161 ], [ %168, %166 ]
  %168 = add nsw i64 %167, -1
  %169 = getelementptr inbounds %struct.eqn_d, ptr %163, i64 %168, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !56
  %171 = getelementptr inbounds i32, ptr %170, i64 %164
  %172 = load i32, ptr %171, align 4, !tbaa !50
  %173 = mul nsw i32 %172, %157
  %174 = load i32, ptr %170, align 4, !tbaa !50
  %175 = add nsw i32 %174, %173
  store i32 %175, ptr %170, align 4, !tbaa !50
  store i32 0, ptr %171, align 4, !tbaa !50
  %176 = icmp sgt i64 %167, 1
  br i1 %176, label %166, label %177, !llvm.loop !286

177:                                              ; preds = %166, %152
  %178 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !70
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %183 = load ptr, ptr %182, align 8, !tbaa !71
  %184 = sext i32 %2 to i64
  %185 = zext nneg i32 %179 to i64
  br label %186

186:                                              ; preds = %181, %199
  %187 = phi i64 [ %185, %181 ], [ %188, %199 ]
  %188 = add nsw i64 %187, -1
  %189 = getelementptr inbounds %struct.eqn_d, ptr %183, i64 %188, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !56
  %191 = getelementptr inbounds i32, ptr %190, i64 %184
  %192 = load i32, ptr %191, align 4, !tbaa !50
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %186
  %195 = mul nsw i32 %192, %157
  %196 = load i32, ptr %190, align 4, !tbaa !50
  %197 = add nsw i32 %196, %195
  store i32 %197, ptr %190, align 4, !tbaa !50
  store i32 0, ptr %191, align 4, !tbaa !50
  %198 = getelementptr inbounds %struct.eqn_d, ptr %183, i64 %188, i32 1
  store i32 1, ptr %198, align 4, !tbaa !58
  br label %199

199:                                              ; preds = %186, %194
  %200 = icmp sgt i64 %187, 1
  br i1 %200, label %186, label %201, !llvm.loop !287

201:                                              ; preds = %199, %177
  %202 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %203 = load i32, ptr %202, align 8, !tbaa !73
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %207 = load ptr, ptr %206, align 8, !tbaa !74
  %208 = sext i32 %2 to i64
  %209 = zext nneg i32 %203 to i64
  br label %210

210:                                              ; preds = %205, %210
  %211 = phi i64 [ %209, %205 ], [ %212, %210 ]
  %212 = add nsw i64 %211, -1
  %213 = getelementptr inbounds %struct.eqn_d, ptr %207, i64 %212, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !56
  %215 = getelementptr inbounds i32, ptr %214, i64 %208
  %216 = load i32, ptr %215, align 4, !tbaa !50
  %217 = mul nsw i32 %216, %157
  %218 = load i32, ptr %214, align 4, !tbaa !50
  %219 = add nsw i32 %218, %217
  store i32 %219, ptr %214, align 4, !tbaa !50
  store i32 0, ptr %215, align 4, !tbaa !50
  %220 = icmp sgt i64 %211, 1
  br i1 %220, label %210, label %221, !llvm.loop !288

221:                                              ; preds = %210, %201
  %222 = icmp sgt i32 %2, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %221
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %224

224:                                              ; preds = %221, %223
  %225 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !76
  %227 = icmp slt i32 %226, %2
  br i1 %227, label %259, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %230 = load ptr, ptr %229, align 8, !tbaa !61
  %231 = sext i32 %2 to i64
  %232 = getelementptr inbounds i32, ptr %230, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !50
  %234 = icmp sgt i32 %233, -1
  br i1 %234, label %235, label %259

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %237 = load ptr, ptr %236, align 8, !tbaa !74
  %238 = load i32, ptr %202, align 8, !tbaa !73
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr %202, align 8, !tbaa !73
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds %struct.eqn_d, ptr %237, i64 %240
  %242 = load i32, ptr %0, align 8, !tbaa !54
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %235
  %245 = getelementptr inbounds %struct.eqn_d, ptr %237, i64 %240, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !56
  %247 = zext nneg i32 %242 to i64
  %248 = shl nuw nsw i64 %247, 2
  %249 = add nsw i32 %242, -1
  %250 = zext i32 %249 to i64
  %251 = sub nsw i64 %247, %250
  %252 = shl nsw i64 %251, 2
  %253 = getelementptr i8, ptr %246, i64 %252
  tail call void @llvm.memset.p0.i64(ptr align 4 %253, i8 0, i64 %248, i1 false), !tbaa !50
  br label %254

254:                                              ; preds = %244, %235
  %255 = getelementptr inbounds %struct.eqn_d, ptr %237, i64 %240, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !56
  store i32 %157, ptr %256, align 4, !tbaa !50
  %257 = load i32, ptr %232, align 4, !tbaa !50
  store i32 %257, ptr %241, align 8, !tbaa !59
  %258 = getelementptr inbounds %struct.eqn_d, ptr %237, i64 %240, i32 2
  store i32 0, ptr %258, align 8, !tbaa !60
  br label %259

259:                                              ; preds = %254, %228, %224
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %261 = icmp eq ptr %260, null
  br i1 %261, label %492, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %264 = and i32 %263, 8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %492, label %266

266:                                              ; preds = %262
  %267 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 5, i64 1, ptr nonnull %260)
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %268, ptr noundef nonnull %0)
  %269 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %270 = tail call i64 @fwrite(ptr nonnull @.str.128, i64 5, i64 1, ptr %269)
  br label %492

271:                                              ; preds = %148, %146
  %272 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %273 = load i32, ptr %272, align 8, !tbaa !67
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %321

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %277 = sext i32 %2 to i64
  %278 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %279 = zext nneg i32 %28 to i64
  %280 = zext nneg i32 %273 to i64
  br label %281

281:                                              ; preds = %275, %319
  %282 = phi i64 [ %280, %275 ], [ %283, %319 ]
  %283 = add nsw i64 %282, -1
  %284 = load ptr, ptr %276, align 8, !tbaa !68
  %285 = getelementptr inbounds %struct.eqn_d, ptr %284, i64 %283
  %286 = getelementptr inbounds %struct.eqn_d, ptr %284, i64 %283, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !56
  %288 = getelementptr inbounds i32, ptr %287, i64 %277
  %289 = load i32, ptr %288, align 4, !tbaa !50
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %309, label %291

291:                                              ; preds = %281
  %292 = mul nsw i32 %289, %3
  store i32 0, ptr %288, align 4, !tbaa !50
  %293 = load ptr, ptr @packing, align 8, !tbaa !35
  %294 = load ptr, ptr %278, align 8, !tbaa !56
  br label %295

295:                                              ; preds = %291, %295
  %296 = phi i64 [ %279, %291 ], [ %306, %295 ]
  %297 = getelementptr inbounds i32, ptr %293, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !50
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, ptr %294, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !50
  %302 = mul nsw i32 %292, %301
  %303 = getelementptr inbounds i32, ptr %287, i64 %299
  %304 = load i32, ptr %303, align 4, !tbaa !50
  %305 = sub nsw i32 %304, %302
  store i32 %305, ptr %303, align 4, !tbaa !50
  %306 = add nsw i64 %296, -1
  %307 = trunc i64 %296 to i32
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %295, label %309, !llvm.loop !289

309:                                              ; preds = %295, %281
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %311 = icmp eq ptr %310, null
  br i1 %311, label %319, label %312

312:                                              ; preds = %309
  %313 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %314 = and i32 %313, 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  tail call void @omega_print_eqn(ptr noundef nonnull %310, ptr noundef nonnull %0, ptr noundef %285, i8 noundef zeroext 0, i32 noundef 0)
  %317 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %318 = tail call i32 @fputc(i32 10, ptr %317)
  br label %319

319:                                              ; preds = %316, %312, %309
  %320 = icmp sgt i64 %282, 1
  br i1 %320, label %281, label %321, !llvm.loop !290

321:                                              ; preds = %319, %271
  %322 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %323 = load i32, ptr %322, align 4, !tbaa !70
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %372

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %327 = sext i32 %2 to i64
  %328 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %329 = zext nneg i32 %28 to i64
  %330 = zext nneg i32 %323 to i64
  br label %331

331:                                              ; preds = %325, %370
  %332 = phi i64 [ %330, %325 ], [ %333, %370 ]
  %333 = add nsw i64 %332, -1
  %334 = load ptr, ptr %326, align 8, !tbaa !71
  %335 = getelementptr inbounds %struct.eqn_d, ptr %334, i64 %333
  %336 = getelementptr inbounds %struct.eqn_d, ptr %334, i64 %333, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !56
  %338 = getelementptr inbounds i32, ptr %337, i64 %327
  %339 = load i32, ptr %338, align 4, !tbaa !50
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %360, label %341

341:                                              ; preds = %331
  %342 = mul nsw i32 %339, %3
  %343 = getelementptr inbounds %struct.eqn_d, ptr %334, i64 %333, i32 1
  store i32 1, ptr %343, align 4, !tbaa !58
  store i32 0, ptr %338, align 4, !tbaa !50
  %344 = load ptr, ptr @packing, align 8, !tbaa !35
  %345 = load ptr, ptr %328, align 8, !tbaa !56
  br label %346

346:                                              ; preds = %341, %346
  %347 = phi i64 [ %329, %341 ], [ %357, %346 ]
  %348 = getelementptr inbounds i32, ptr %344, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !50
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, ptr %345, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !50
  %353 = mul nsw i32 %342, %352
  %354 = getelementptr inbounds i32, ptr %337, i64 %350
  %355 = load i32, ptr %354, align 4, !tbaa !50
  %356 = sub nsw i32 %355, %353
  store i32 %356, ptr %354, align 4, !tbaa !50
  %357 = add nsw i64 %347, -1
  %358 = trunc i64 %347 to i32
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %346, label %360, !llvm.loop !291

360:                                              ; preds = %346, %331
  %361 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %362 = icmp eq ptr %361, null
  br i1 %362, label %370, label %363

363:                                              ; preds = %360
  %364 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %365 = and i32 %364, 8
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %363
  tail call void @omega_print_eqn(ptr noundef nonnull %361, ptr noundef nonnull %0, ptr noundef %335, i8 noundef zeroext 1, i32 noundef 0)
  %368 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %369 = tail call i32 @fputc(i32 10, ptr %368)
  br label %370

370:                                              ; preds = %367, %363, %360
  %371 = icmp sgt i64 %332, 1
  br i1 %371, label %331, label %372, !llvm.loop !292

372:                                              ; preds = %370, %321
  %373 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  %374 = load i32, ptr %373, align 8, !tbaa !73
  %375 = icmp sgt i32 %374, 0
  br i1 %375, label %376, label %437

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %378 = sext i32 %2 to i64
  %379 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %380 = zext nneg i32 %28 to i64
  %381 = zext nneg i32 %374 to i64
  br label %382

382:                                              ; preds = %376, %435
  %383 = phi i64 [ %381, %376 ], [ %384, %435 ]
  %384 = add nsw i64 %383, -1
  %385 = load ptr, ptr %377, align 8, !tbaa !74
  %386 = getelementptr inbounds %struct.eqn_d, ptr %385, i64 %384
  %387 = getelementptr inbounds %struct.eqn_d, ptr %385, i64 %384, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !56
  %389 = getelementptr inbounds i32, ptr %388, i64 %378
  %390 = load i32, ptr %389, align 4, !tbaa !50
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %410, label %392

392:                                              ; preds = %382
  %393 = mul nsw i32 %390, %3
  store i32 0, ptr %389, align 4, !tbaa !50
  %394 = load ptr, ptr @packing, align 8, !tbaa !35
  %395 = load ptr, ptr %379, align 8, !tbaa !56
  br label %396

396:                                              ; preds = %392, %396
  %397 = phi i64 [ %380, %392 ], [ %407, %396 ]
  %398 = getelementptr inbounds i32, ptr %394, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !50
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, ptr %395, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !50
  %403 = mul nsw i32 %393, %402
  %404 = getelementptr inbounds i32, ptr %388, i64 %400
  %405 = load i32, ptr %404, align 4, !tbaa !50
  %406 = sub nsw i32 %405, %403
  store i32 %406, ptr %404, align 4, !tbaa !50
  %407 = add nsw i64 %397, -1
  %408 = trunc i64 %397 to i32
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %396, label %410, !llvm.loop !293

410:                                              ; preds = %396, %382
  %411 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %412 = icmp eq ptr %411, null
  br i1 %412, label %435, label %413

413:                                              ; preds = %410
  %414 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %415 = and i32 %414, 8
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %435, label %417

417:                                              ; preds = %413
  %418 = load i32, ptr %386, align 8, !tbaa !59
  %419 = icmp ult i32 %418, 21
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = zext nneg i32 %418 to i64
  %422 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %421
  br label %429

423:                                              ; preds = %417
  %424 = icmp ugt i32 %418, -20
  br i1 %424, label %425, label %429

425:                                              ; preds = %423
  %426 = add nsw i32 %418, 40
  %427 = zext nneg i32 %426 to i64
  %428 = getelementptr inbounds [200 x [40 x i8]], ptr @wild_name, i64 0, i64 %427
  br label %429

429:                                              ; preds = %420, %423, %425
  %430 = phi ptr [ %422, %420 ], [ %428, %425 ], [ getelementptr inbounds ([200 x [40 x i8]], ptr @wild_name, i64 0, i64 21), %423 ]
  %431 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %411, ptr noundef nonnull @.str.16, ptr noundef nonnull %430)
  %432 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call fastcc void @omega_print_term(ptr noundef %432, ptr noundef nonnull %0, ptr noundef nonnull %386, i32 noundef 1)
  %433 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %434 = tail call i32 @fputc(i32 10, ptr %433)
  br label %435

435:                                              ; preds = %429, %413, %410
  %436 = icmp sgt i64 %383, 1
  br i1 %436, label %382, label %437, !llvm.loop !294

437:                                              ; preds = %435, %372
  %438 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %439 = icmp eq ptr %438, null
  br i1 %439, label %449, label %440

440:                                              ; preds = %437
  %441 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %442 = and i32 %441, 8
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %440
  %445 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 5, i64 1, ptr nonnull %438)
  %446 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @omega_print_problem(ptr noundef %446, ptr noundef nonnull %0)
  %447 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %448 = tail call i64 @fwrite(ptr nonnull @.str.128, i64 5, i64 1, ptr %447)
  br label %449

449:                                              ; preds = %444, %440, %437
  %450 = icmp sgt i32 %2, 0
  br i1 %450, label %452, label %451

451:                                              ; preds = %449
  tail call void @fancy_abort(ptr noundef nonnull @.str.196, i32 noundef 160, ptr noundef nonnull @.str.21) #22
  br label %452

452:                                              ; preds = %449, %451
  %453 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %454 = load i32, ptr %453, align 4, !tbaa !76
  %455 = icmp slt i32 %454, %2
  br i1 %455, label %492, label %456

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %458 = load ptr, ptr %457, align 8, !tbaa !61
  %459 = sext i32 %2 to i64
  %460 = getelementptr inbounds i32, ptr %458, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !50
  %462 = icmp sgt i32 %461, -1
  br i1 %462, label %463, label %492

463:                                              ; preds = %456
  %464 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %465 = load ptr, ptr %464, align 8, !tbaa !74
  %466 = load i32, ptr %373, align 8, !tbaa !73
  %467 = add nsw i32 %466, 1
  store i32 %467, ptr %373, align 8, !tbaa !73
  %468 = sext i32 %466 to i64
  %469 = getelementptr inbounds %struct.eqn_d, ptr %465, i64 %468
  %470 = load i32, ptr %0, align 8, !tbaa !54
  %471 = icmp sgt i32 %470, -1
  br i1 %471, label %472, label %487

472:                                              ; preds = %463
  %473 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !56
  %475 = getelementptr inbounds %struct.eqn_d, ptr %465, i64 %468, i32 3
  %476 = load ptr, ptr %475, align 8, !tbaa !56
  %477 = zext nneg i32 %470 to i64
  br label %478

478:                                              ; preds = %472, %478
  %479 = phi i64 [ %477, %472 ], [ %485, %478 ]
  %480 = getelementptr inbounds i32, ptr %474, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !50
  %482 = mul i32 %481, %3
  %483 = sub i32 0, %482
  %484 = getelementptr inbounds i32, ptr %476, i64 %479
  store i32 %483, ptr %484, align 4, !tbaa !50
  %485 = add nsw i64 %479, -1
  %486 = icmp sgt i64 %479, 0
  br i1 %486, label %478, label %487, !llvm.loop !295

487:                                              ; preds = %478, %463
  %488 = load i32, ptr %460, align 4, !tbaa !50
  store i32 %488, ptr %469, align 8, !tbaa !59
  %489 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 2
  %490 = load i32, ptr %489, align 8, !tbaa !60
  %491 = getelementptr inbounds %struct.eqn_d, ptr %465, i64 %468, i32 2
  store i32 %490, ptr %491, align 8, !tbaa !60
  br label %492

492:                                              ; preds = %266, %262, %259, %487, %456, %452, %117, %121, %143
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @omega_delete_geq_extra(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.177, i32 noundef %1)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %struct.eqn_d, ptr %14, i64 %15
  tail call void @omega_print_eqn(ptr noundef %12, ptr noundef %0, ptr noundef %16, i8 noundef zeroext 1, i32 noundef 1)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %10, %6, %3
  %20 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !70
  %22 = add nsw i32 %21, -1
  %23 = icmp sgt i32 %22, %1
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %27
  %29 = zext nneg i32 %22 to i64
  %30 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %29
  %31 = load i32, ptr %30, align 8, !tbaa !59
  store i32 %31, ptr %28, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %29, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !58
  %34 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %27, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !58
  %35 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %29, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %27, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %27, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.eqn_d, ptr %26, i64 %29, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = add nsw i32 %2, 1
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %41, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %24, %19
  %46 = load i32, ptr %20, align 4, !tbaa !70
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %20, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 0}
!55 = !{!"omega_pb_d", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!56 = !{!57, !36, i64 16}
!57 = !{!"eqn_d", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16}
!58 = !{!57, !41, i64 4}
!59 = !{!57, !41, i64 0}
!60 = !{!57, !41, i64 8}
!61 = !{!55, !36, i64 32}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = !{!55, !37, i64 24}
!65 = !{!55, !36, i64 40}
!66 = distinct !{!66, !52, !53}
!67 = !{!55, !41, i64 8}
!68 = !{!55, !36, i64 56}
!69 = distinct !{!69, !52, !53}
!70 = !{!55, !41, i64 12}
!71 = !{!55, !36, i64 48}
!72 = distinct !{!72, !52, !53}
!73 = !{!55, !41, i64 16}
!74 = !{!55, !36, i64 64}
!75 = distinct !{!75, !52, !53}
!76 = !{!55, !41, i64 4}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = !{!88, !41, i64 8}
!88 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!89 = !{i32 0, i32 2}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = distinct !{!108, !53}
!109 = distinct !{!109, !52, !53}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = distinct !{!119, !52, !53}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = !{!55, !37, i64 25}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = !{!55, !41, i64 20}
!130 = distinct !{!130, !52, !53}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = distinct !{!147, !52, !53}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = distinct !{!161, !52, !53}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = distinct !{!164, !52, !53}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = distinct !{!175, !52, !53}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = distinct !{!178, !52, !53}
!179 = distinct !{!179, !52, !53}
!180 = distinct !{!180, !52, !53}
!181 = distinct !{!181, !53}
!182 = distinct !{!182, !52, !53}
!183 = distinct !{!183, !52, !53}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !52, !53}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = distinct !{!193, !52, !53}
!194 = distinct !{!194, !52, !53}
!195 = distinct !{!195, !52, !53}
!196 = distinct !{!196, !52, !53}
!197 = distinct !{!197, !52, !53}
!198 = distinct !{!198, !52, !53}
!199 = distinct !{!199, !52, !53}
!200 = distinct !{!200, !52, !53}
!201 = distinct !{!201, !52, !53}
!202 = distinct !{!202, !52, !53}
!203 = distinct !{!203, !52, !53}
!204 = distinct !{!204, !52, !53}
!205 = distinct !{!205, !52, !53}
!206 = distinct !{!206, !52, !53}
!207 = distinct !{!207, !52, !53}
!208 = distinct !{!208, !52, !53}
!209 = distinct !{!209, !52, !53}
!210 = distinct !{!210, !52, !53}
!211 = distinct !{!211, !52, !53}
!212 = distinct !{!212, !52, !53}
!213 = distinct !{!213, !52, !53}
!214 = distinct !{!214, !52, !53}
!215 = distinct !{!215, !52, !53}
!216 = distinct !{!216, !52, !53}
!217 = distinct !{!217, !52, !53}
!218 = distinct !{!218, !52, !53}
!219 = distinct !{!219, !52, !53}
!220 = distinct !{!220, !52, !53}
!221 = distinct !{!221, !52, !53}
!222 = distinct !{!222, !52, !53}
!223 = distinct !{!223, !52, !53}
!224 = distinct !{!224, !52, !53}
!225 = distinct !{!225, !52, !53}
!226 = distinct !{!226, !52, !53}
!227 = distinct !{!227, !52, !53}
!228 = distinct !{!228, !52, !53}
!229 = distinct !{!229, !52, !53}
!230 = distinct !{!230, !52, !53}
!231 = distinct !{!231, !52, !53}
!232 = distinct !{!232, !52, !53}
!233 = distinct !{!233, !52, !53}
!234 = distinct !{!234, !52, !53}
!235 = distinct !{!235, !52, !53}
!236 = distinct !{!236, !52, !53}
!237 = distinct !{!237, !52, !53}
!238 = distinct !{!238, !52, !53}
!239 = distinct !{!239, !52, !53}
!240 = distinct !{!240, !52, !53}
!241 = distinct !{!241, !52, !53}
!242 = distinct !{!242, !52, !53}
!243 = distinct !{!243, !52, !53}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = distinct !{!246, !52, !53}
!247 = distinct !{!247, !52, !53}
!248 = distinct !{!248, !52, !53}
!249 = distinct !{!249, !52, !53}
!250 = distinct !{!250, !52, !53}
!251 = !{i8 0, i8 2}
!252 = distinct !{!252, !52, !53}
!253 = distinct !{!253, !52, !53}
!254 = distinct !{!254, !52, !53}
!255 = distinct !{!255, !52, !53}
!256 = distinct !{!256, !52, !53}
!257 = distinct !{!257, !52, !53}
!258 = distinct !{!258, !52, !53}
!259 = distinct !{!259, !52, !53}
!260 = distinct !{!260, !52, !53}
!261 = distinct !{!261, !52, !53}
!262 = distinct !{!262, !52, !53}
!263 = distinct !{!263, !52, !53}
!264 = distinct !{!264, !52, !53}
!265 = distinct !{!265, !52, !53}
!266 = distinct !{!266, !52, !53}
!267 = distinct !{!267, !52, !53}
!268 = distinct !{!268, !52, !53}
!269 = distinct !{!269, !52, !53}
!270 = distinct !{!270, !52, !53}
!271 = distinct !{!271, !52, !53}
!272 = distinct !{!272, !52, !53}
!273 = distinct !{!273, !52, !53}
!274 = distinct !{!274, !52, !53}
!275 = distinct !{!275, !52, !53}
!276 = distinct !{!276, !52, !53}
!277 = distinct !{!277, !52, !53}
!278 = distinct !{!278, !52, !53}
!279 = distinct !{!279, !52, !53}
!280 = distinct !{!280, !52, !53}
!281 = distinct !{!281, !52, !53}
!282 = distinct !{!282, !52, !53}
!283 = distinct !{!283, !52, !53}
!284 = distinct !{!284, !52, !53}
!285 = distinct !{!285, !52, !53}
!286 = distinct !{!286, !52, !53}
!287 = distinct !{!287, !52, !53}
!288 = distinct !{!288, !52, !53}
!289 = distinct !{!289, !52, !53}
!290 = distinct !{!290, !52, !53}
!291 = distinct !{!291, !52, !53}
!292 = distinct !{!292, !52, !53}
!293 = distinct !{!293, !52, !53}
!294 = distinct !{!294, !52, !53}
!295 = distinct !{!295, !52, !53}
