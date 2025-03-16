; ModuleID = 'src/defmt.c'
source_filename = "src/defmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { ptr, ptr, ptr }
%struct.dent = type { ptr, ptr, [1 x i64] }

@TeX_comment = internal unnamed_addr global i1 false, align 4
@save_math_mode = internal unnamed_addr global i32 0, align 4
@math_mode = external local_unnamed_addr global i32, align 4
@save_LaTeX_Mode = internal unnamed_addr global i8 0, align 1
@LaTeX_Mode = external local_unnamed_addr global i8, align 1
@hashheader = external local_unnamed_addr global %struct.hashheader, align 4
@contextbufs = external global [10 x [8192 x i8]], align 16
@currentchar = external global ptr, align 8
@tflag = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"if t\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"if n\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ds \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"de \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nr \00", align 1
@lflag = external local_unnamed_addr global i32, align 4
@aflag = external local_unnamed_addr global i32, align 4
@ctoken = external global [120 x i8], align 16
@itoken = external global [120 x i8], align 16
@cbench_print = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"src/defmt.c\00", align 1
@minword = external local_unnamed_addr global i32, align 4
@cflag = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@terse = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@hits = external local_unnamed_addr global [10 x %struct.success], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"+ %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@pcount = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"%c %s %d %d\00", align 1
@easypossibilities = external local_unnamed_addr global i32, align 4
@contextoffset = external local_unnamed_addr global i32, align 4
@possibilities = external global [100 x [120 x i8]], align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"# %s %d\0A\00", align 1
@quit = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"****ERROR in parsing TeX math mode!\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\\end\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"equation\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"eqnarray\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"displaymath\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"picture\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"tabular\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"minipage\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"tabular*\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"***ERROR in LR to math-mode switch.\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"makebox\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"fbox\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"framebox\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"parbox\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"raisebox\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"vspace\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"hspace\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"cite\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"nocite\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"includeonly\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"documentstyle\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"documentclass\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"usepackage\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"pagestyle\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"pagenumbering\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"bibliography\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"bibitem\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"hyphenation\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"pageref\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"setcounter\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"addtocounter\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"setlength\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"addtolength\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"settowidth\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"verb\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @skipoverword(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %39, %1
  %5 = phi ptr [ null, %1 ], [ %41, %39 ]
  %6 = phi ptr [ %0, %1 ], [ %42, %39 ]
  %7 = load i1, ptr @TeX_comment, align 4
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i32, ptr @save_math_mode, align 4, !tbaa !8
  store i32 %9, ptr @math_mode, align 4, !tbaa !8
  %10 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !5
  store i8 %10, ptr @LaTeX_Mode, align 1, !tbaa !5
  store i1 false, ptr @TeX_comment, align 4
  br label %45

11:                                               ; preds = %1, %39
  %12 = phi i8 [ %43, %39 ], [ %2, %1 ]
  %13 = phi ptr [ %42, %39 ], [ %0, %1 ]
  %14 = phi ptr [ %41, %39 ], [ null, %1 ]
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @stringcharlen(ptr noundef nonnull %13, i32 noundef 0) #12
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %39

24:                                               ; preds = %19, %11
  %25 = load i8, ptr %13, align 1, !tbaa !5
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %26
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %14, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %13, i64 -1
  %38 = icmp eq ptr %14, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %34, %24, %22
  %40 = phi i64 [ %23, %22 ], [ 1, %24 ], [ 1, %34 ], [ 1, %36 ]
  %41 = phi ptr [ null, %22 ], [ null, %24 ], [ %13, %34 ], [ %14, %36 ]
  %42 = getelementptr inbounds i8, ptr %13, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %4, label %11, !llvm.loop !10

45:                                               ; preds = %30, %36, %4, %8
  %46 = phi ptr [ %5, %4 ], [ %5, %8 ], [ %14, %36 ], [ %14, %30 ]
  %47 = phi ptr [ %6, %4 ], [ %6, %8 ], [ %13, %36 ], [ %13, %30 ]
  %48 = icmp eq ptr %46, null
  %49 = select i1 %48, ptr %47, ptr %46
  ret ptr %49
}

declare i32 @stringcharlen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @checkline(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr @contextbufs, ptr @currentchar, align 8, !tbaa !12
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #13
  %4 = shl i64 %3, 32
  %5 = add i64 %4, -4294967296
  %6 = ashr exact i64 %5, 32
  %7 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8 0, ptr %7, align 1, !tbaa !5
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, ptr @tflag, align 4, !tbaa !8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %11
  %15 = load i8, ptr @contextbufs, align 16, !tbaa !5
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !5
  %17 = icmp eq i8 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str, i64 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str.1, i64 4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21, %18
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 5) #12
  %25 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = icmp sgt i8 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = tail call ptr @__ctype_b_loc() #14
  br label %30

30:                                               ; preds = %28, %38
  %31 = phi i8 [ %26, %28 ], [ %40, %38 ]
  %32 = load ptr, ptr %29, align 8, !tbaa !12
  %33 = zext nneg i8 %31 to i64
  %34 = getelementptr inbounds i16, ptr %32, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !14
  %36 = and i16 %35, 8192
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #12
  %39 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp sgt i8 %40, 0
  br i1 %41, label %30, label %42, !llvm.loop !16

42:                                               ; preds = %38, %30, %24, %21, %14
  %43 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !5
  %46 = icmp eq i8 %44, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  %49 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.2, i64 noundef 3) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.3, i64 noundef 3) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.4, i64 noundef 3) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %54, %51, %47
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 4) #12
  %58 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %59 = load i8, ptr %58, align 1, !tbaa !5
  %60 = icmp sgt i8 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = tail call ptr @__ctype_b_loc() #14
  br label %63

63:                                               ; preds = %61, %71
  %64 = phi i8 [ %59, %61 ], [ %73, %71 ]
  %65 = load ptr, ptr %62, align 8, !tbaa !12
  %66 = zext nneg i8 %64 to i64
  %67 = getelementptr inbounds i16, ptr %65, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !14
  %69 = and i16 %68, 8192
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #12
  %72 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %73 = load i8, ptr %72, align 1, !tbaa !5
  %74 = icmp sgt i8 %73, 0
  br i1 %74, label %63, label %75, !llvm.loop !17

75:                                               ; preds = %63, %71, %57
  %76 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %77 = load i8, ptr %76, align 1, !tbaa !5
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %75, %91
  %80 = phi i1 [ %94, %91 ], [ %78, %75 ]
  %81 = phi i8 [ %93, %91 ], [ %77, %75 ]
  %82 = icmp sgt i8 %81, -1
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = tail call ptr @__ctype_b_loc() #14
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = zext nneg i8 %81 to i64
  %87 = getelementptr inbounds i16, ptr %85, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !14
  %89 = and i16 %88, 8192
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %79, %83
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #12
  %92 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %93 = load i8, ptr %92, align 1, !tbaa !5
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %79, !llvm.loop !18

95:                                               ; preds = %83
  br i1 %80, label %96, label %103

96:                                               ; preds = %91, %75, %95
  %97 = load i32, ptr @lflag, align 4, !tbaa !8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %824

99:                                               ; preds = %96
  %100 = load i32, ptr @aflag, align 4, !tbaa !8
  %101 = icmp ne i32 %100, 0
  %102 = or i1 %9, %101
  br i1 %102, label %822, label %824

103:                                              ; preds = %42, %54, %95, %11
  %104 = load i32, ptr @tflag, align 4, !tbaa !8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %142, %107, %103
  br label %150

107:                                              ; preds = %103
  %108 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !5
  %111 = icmp eq i8 %109, %110
  br i1 %111, label %112, label %106

112:                                              ; preds = %107
  %113 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %143, label %116

116:                                              ; preds = %112, %137
  %117 = phi i1 [ %141, %137 ], [ %115, %112 ]
  %118 = phi i8 [ %140, %137 ], [ %114, %112 ]
  %119 = icmp sgt i8 %118, -1
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = tail call ptr @__ctype_b_loc() #14
  %122 = load ptr, ptr %121, align 8, !tbaa !12
  %123 = zext nneg i8 %118 to i64
  %124 = getelementptr inbounds i16, ptr %122, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !14
  %126 = and i16 %125, 8192
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %116, %120
  %129 = load i32, ptr @aflag, align 4, !tbaa !8
  %130 = icmp ne i32 %129, 0
  %131 = load i32, ptr @lflag, align 4
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = sext i8 %118 to i32
  %136 = tail call i32 @putc(i32 noundef %135, ptr noundef %0)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr @currentchar, align 8, !tbaa !12
  %140 = load i8, ptr %139, align 1, !tbaa !5
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %143, label %116, !llvm.loop !19

142:                                              ; preds = %120
  br i1 %117, label %143, label %106

143:                                              ; preds = %137, %112, %142
  %144 = load i32, ptr @lflag, align 4, !tbaa !8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %824

146:                                              ; preds = %143
  %147 = load i32, ptr @aflag, align 4, !tbaa !8
  %148 = icmp ne i32 %147, 0
  %149 = or i1 %9, %148
  br i1 %149, label %822, label %824

150:                                              ; preds = %812, %106
  %151 = load ptr, ptr @currentchar, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %151, ptr %2, align 8, !tbaa !12
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %617, label %154

154:                                              ; preds = %150, %550
  %155 = phi i8 [ %552, %550 ], [ %152, %150 ]
  %156 = phi ptr [ %551, %550 ], [ %151, %150 ]
  %157 = zext i8 %155 to i64
  %158 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !5
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = tail call i32 @stringcharlen(ptr noundef nonnull %156, i32 noundef 0) #12
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161, %154
  %165 = load i8, ptr %156, align 1, !tbaa !5
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %164, %161
  %171 = load i8, ptr %156, align 1, !tbaa !5
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !5
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i32, ptr @tflag, align 4, !tbaa !8
  %178 = icmp ne i32 %177, 0
  %179 = load i32, ptr @math_mode, align 4
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %178, i1 %181, i1 false
  br i1 %182, label %183, label %617

183:                                              ; preds = %176, %170, %164
  %184 = load i32, ptr @tflag, align 4, !tbaa !8
  %185 = icmp eq i32 %184, 0
  %186 = load i8, ptr %156, align 1, !tbaa !5
  br i1 %185, label %537, label %187

187:                                              ; preds = %183
  %188 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1, !tbaa !5
  %189 = icmp eq i8 %186, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i1, ptr @TeX_comment, align 4
  br i1 %191, label %533, label %192

192:                                              ; preds = %190
  %193 = load i32, ptr @math_mode, align 4, !tbaa !8
  store i32 %193, ptr @save_math_mode, align 4, !tbaa !8
  %194 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !5
  store i8 %194, ptr @save_LaTeX_Mode, align 1, !tbaa !5
  store i32 0, ptr @math_mode, align 4, !tbaa !8
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !5
  store i1 true, ptr @TeX_comment, align 4
  br label %533

195:                                              ; preds = %187
  %196 = load i32, ptr @math_mode, align 4, !tbaa !8
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %450, label %199

199:                                              ; preds = %195
  %200 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !5
  %201 = icmp eq i8 %200, 101
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %2), !range !20
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %437

205:                                              ; preds = %202, %199
  %206 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !5
  %207 = icmp eq i8 %206, 109
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %2), !range !20
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %437

211:                                              ; preds = %208, %205
  %212 = load ptr, ptr %2, align 8, !tbaa !12
  %213 = load i8, ptr %212, align 1, !tbaa !5
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %615, label %215

215:                                              ; preds = %211
  %216 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !5
  %217 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %218 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1
  %219 = icmp eq i8 %213, %216
  %220 = icmp eq i8 %213, %217
  %221 = select i1 %219, i1 true, i1 %220
  %222 = icmp eq i8 %213, %218
  %223 = select i1 %221, i1 true, i1 %222
  br i1 %223, label %235, label %230

224:                                              ; preds = %230
  %225 = icmp eq i8 %233, %216
  %226 = icmp eq i8 %233, %217
  %227 = select i1 %225, i1 true, i1 %226
  %228 = icmp eq i8 %233, %218
  %229 = select i1 %227, i1 true, i1 %228
  br i1 %229, label %235, label %230, !llvm.loop !21

230:                                              ; preds = %215, %224
  %231 = phi ptr [ %232, %224 ], [ %212, %215 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  %233 = load i8, ptr %232, align 1, !tbaa !5
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %615, label %224, !llvm.loop !21

235:                                              ; preds = %224, %215
  %236 = phi i1 [ false, %215 ], [ %234, %224 ]
  %237 = phi ptr [ %212, %215 ], [ %232, %224 ]
  %238 = phi i1 [ %220, %215 ], [ %226, %224 ]
  %239 = phi i1 [ %222, %215 ], [ %228, %224 ]
  store ptr %237, ptr %2, align 8, !tbaa !12
  br i1 %236, label %617, label %240

240:                                              ; preds = %235
  br i1 %238, label %241, label %246

241:                                              ; preds = %240
  %242 = getelementptr inbounds i8, ptr %237, i64 1
  %243 = load i8, ptr %242, align 1, !tbaa !5
  %244 = icmp eq i8 %243, %217
  br i1 %244, label %245, label %434

245:                                              ; preds = %241
  store ptr %242, ptr %2, align 8, !tbaa !12
  br label %434

246:                                              ; preds = %240
  br i1 %239, label %247, label %252

247:                                              ; preds = %246
  %248 = load i1, ptr @TeX_comment, align 4
  br i1 %248, label %434, label %249

249:                                              ; preds = %247
  %250 = load i32, ptr @math_mode, align 4, !tbaa !8
  store i32 %250, ptr @save_math_mode, align 4, !tbaa !8
  %251 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !5
  store i8 %251, ptr @save_LaTeX_Mode, align 1, !tbaa !5
  store i32 0, ptr @math_mode, align 4, !tbaa !8
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !5
  store i1 true, ptr @TeX_comment, align 4
  br label %434

252:                                              ; preds = %246
  %253 = getelementptr inbounds i8, ptr %237, i64 1
  store ptr %253, ptr %2, align 8, !tbaa !12
  %254 = load i8, ptr %253, align 1, !tbaa !5
  %255 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 1), align 2, !tbaa !5
  %256 = icmp eq i8 %254, %255
  %257 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4
  %258 = icmp eq i8 %254, %257
  %259 = select i1 %256, i1 true, i1 %258
  br i1 %259, label %434, label %260

260:                                              ; preds = %252
  %261 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(5) @.str.28, i64 noundef 4) #13
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %260
  %264 = getelementptr inbounds i8, ptr %237, i64 5
  %265 = load i8, ptr %264, align 1, !tbaa !5
  %266 = icmp sgt i8 %265, -1
  br i1 %266, label %267, label %320

267:                                              ; preds = %263
  %268 = tail call ptr @__ctype_b_loc() #14
  %269 = load ptr, ptr %268, align 8, !tbaa !12
  %270 = zext nneg i8 %265 to i64
  %271 = getelementptr inbounds i16, ptr %269, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !14
  %273 = and i16 %272, 1024
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %320, label %275

275:                                              ; preds = %267, %260
  %276 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(8) @.str.29, i64 noundef 7) #13
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = getelementptr inbounds i8, ptr %237, i64 8
  %280 = load i8, ptr %279, align 1, !tbaa !5
  %281 = icmp sgt i8 %280, -1
  br i1 %281, label %282, label %320

282:                                              ; preds = %278
  %283 = tail call ptr @__ctype_b_loc() #14
  %284 = load ptr, ptr %283, align 8, !tbaa !12
  %285 = zext nneg i8 %280 to i64
  %286 = getelementptr inbounds i16, ptr %284, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !14
  %288 = and i16 %287, 1024
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %320, label %290

290:                                              ; preds = %282, %275
  %291 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(5) @.str.30, i64 noundef 4) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %290
  %294 = getelementptr inbounds i8, ptr %237, i64 5
  %295 = load i8, ptr %294, align 1, !tbaa !5
  %296 = icmp sgt i8 %295, -1
  br i1 %296, label %297, label %320

297:                                              ; preds = %293
  %298 = tail call ptr @__ctype_b_loc() #14
  %299 = load ptr, ptr %298, align 8, !tbaa !12
  %300 = zext nneg i8 %295 to i64
  %301 = getelementptr inbounds i16, ptr %299, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !14
  %303 = and i16 %302, 1024
  %304 = icmp eq i16 %303, 0
  br i1 %304, label %320, label %305

305:                                              ; preds = %297, %290
  %306 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(9) @.str.31, i64 noundef 8) #13
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  %309 = getelementptr inbounds i8, ptr %237, i64 9
  %310 = load i8, ptr %309, align 1, !tbaa !5
  %311 = icmp sgt i8 %310, -1
  br i1 %311, label %312, label %320

312:                                              ; preds = %308
  %313 = tail call ptr @__ctype_b_loc() #14
  %314 = load ptr, ptr %313, align 8, !tbaa !12
  %315 = zext nneg i8 %310 to i64
  %316 = getelementptr inbounds i16, ptr %314, i64 %315
  %317 = load i16, ptr %316, align 2, !tbaa !14
  %318 = and i16 %317, 1024
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %312, %308, %297, %293, %282, %278, %267, %263
  %321 = load i32, ptr @math_mode, align 4, !tbaa !8
  %322 = add nsw i32 %321, 2
  store i32 %322, ptr @math_mode, align 4, !tbaa !8
  br label %397

323:                                              ; preds = %312, %305
  %324 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #13
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %338

326:                                              ; preds = %323
  %327 = getelementptr inbounds i8, ptr %237, i64 7
  %328 = load i8, ptr %327, align 1, !tbaa !5
  %329 = icmp sgt i8 %328, -1
  br i1 %329, label %330, label %353

330:                                              ; preds = %326
  %331 = tail call ptr @__ctype_b_loc() #14
  %332 = load ptr, ptr %331, align 8, !tbaa !12
  %333 = zext nneg i8 %328 to i64
  %334 = getelementptr inbounds i16, ptr %332, i64 %333
  %335 = load i16, ptr %334, align 2, !tbaa !14
  %336 = and i16 %335, 1024
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %353, label %338

338:                                              ; preds = %330, %323
  %339 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(9) @.str.33, i64 noundef 8) #13
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %379

341:                                              ; preds = %338
  %342 = getelementptr inbounds i8, ptr %237, i64 9
  %343 = load i8, ptr %342, align 1, !tbaa !5
  %344 = icmp sgt i8 %343, -1
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = tail call ptr @__ctype_b_loc() #14
  %347 = load ptr, ptr %346, align 8, !tbaa !12
  %348 = zext nneg i8 %343 to i64
  %349 = getelementptr inbounds i16, ptr %347, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !14
  %351 = and i16 %350, 1024
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %353, label %379

353:                                              ; preds = %345, %341, %330, %326
  %354 = load i32, ptr @math_mode, align 4, !tbaa !8
  %355 = add nsw i32 %354, 2
  store i32 %355, ptr @math_mode, align 4, !tbaa !8
  %356 = load i8, ptr %253, align 1, !tbaa !5
  %357 = icmp eq i8 %356, 0
  %358 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %359 = icmp eq i8 %356, %358
  %360 = select i1 %357, i1 true, i1 %359
  %361 = icmp eq i8 %356, %217
  %362 = or i1 %361, %360
  br i1 %362, label %372, label %363

363:                                              ; preds = %353, %363
  %364 = phi ptr [ %365, %363 ], [ %253, %353 ]
  %365 = getelementptr inbounds i8, ptr %364, i64 1
  store ptr %365, ptr %2, align 8, !tbaa !12
  %366 = load i8, ptr %365, align 1, !tbaa !5
  %367 = icmp eq i8 %366, 0
  %368 = icmp eq i8 %366, %358
  %369 = select i1 %367, i1 true, i1 %368
  %370 = icmp eq i8 %366, %217
  %371 = or i1 %370, %369
  br i1 %371, label %372, label %363, !llvm.loop !22

372:                                              ; preds = %363, %353
  %373 = load ptr, ptr %2, align 8, !tbaa !12
  %374 = load i8, ptr %373, align 1, !tbaa !5
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %373, i64 1
  store ptr %377, ptr %2, align 8, !tbaa !12
  br label %397

378:                                              ; preds = %372
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !5
  br label %397

379:                                              ; preds = %345, %338
  %380 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(6) @.str.34, i64 noundef 5) #13
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %415

382:                                              ; preds = %379
  %383 = getelementptr inbounds i8, ptr %237, i64 6
  %384 = load i8, ptr %383, align 1, !tbaa !5
  %385 = icmp sgt i8 %384, -1
  br i1 %385, label %386, label %394

386:                                              ; preds = %382
  %387 = tail call ptr @__ctype_b_loc() #14
  %388 = load ptr, ptr %387, align 8, !tbaa !12
  %389 = zext nneg i8 %384 to i64
  %390 = getelementptr inbounds i16, ptr %388, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !14
  %392 = and i16 %391, 1024
  %393 = icmp eq i16 %392, 0
  br i1 %393, label %394, label %415

394:                                              ; preds = %386, %382
  %395 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %2), !range !20
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %415, label %434

397:                                              ; preds = %378, %376, %320
  %398 = load ptr, ptr %2, align 8, !tbaa !12
  %399 = load i8, ptr %398, align 1, !tbaa !5
  %400 = icmp eq i8 %399, 0
  %401 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %402 = icmp eq i8 %399, %401
  %403 = select i1 %400, i1 true, i1 %402
  %404 = icmp eq i8 %399, %217
  %405 = or i1 %404, %403
  br i1 %405, label %434, label %406

406:                                              ; preds = %397, %406
  %407 = phi ptr [ %408, %406 ], [ %398, %397 ]
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  %409 = load i8, ptr %408, align 1, !tbaa !5
  %410 = icmp eq i8 %409, 0
  %411 = icmp eq i8 %409, %401
  %412 = select i1 %410, i1 true, i1 %411
  %413 = icmp eq i8 %409, %217
  %414 = or i1 %413, %412
  br i1 %414, label %433, label %406, !llvm.loop !22

415:                                              ; preds = %394, %386, %379
  %416 = load ptr, ptr %2, align 8, !tbaa !12
  %417 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %416, ptr noundef nonnull dereferenceable(4) @.str.27, i64 noundef 3) #13
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %434

419:                                              ; preds = %415
  %420 = getelementptr inbounds i8, ptr %416, i64 3
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = icmp sgt i8 %421, -1
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = tail call ptr @__ctype_b_loc() #14
  %425 = load ptr, ptr %424, align 8, !tbaa !12
  %426 = zext nneg i8 %421 to i64
  %427 = getelementptr inbounds i16, ptr %425, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !14
  %429 = and i16 %428, 1024
  %430 = icmp eq i16 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %423, %419
  %432 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %2), !range !20
  br label %434

433:                                              ; preds = %406
  store ptr %408, ptr %2, align 8, !tbaa !12
  br label %434

434:                                              ; preds = %433, %431, %423, %415, %397, %394, %252, %249, %247, %245, %241
  %435 = phi i32 [ %432, %431 ], [ 1, %245 ], [ 1, %241 ], [ 0, %249 ], [ 0, %247 ], [ 1, %252 ], [ 1, %394 ], [ 1, %397 ], [ 0, %423 ], [ 0, %415 ], [ 1, %433 ]
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %434, %202, %208
  %438 = load i32, ptr @math_mode, align 4, !tbaa !8
  %439 = add nsw i32 %438, -1
  store i32 %439, ptr @math_mode, align 4, !tbaa !8
  br label %440

440:                                              ; preds = %437, %434
  %441 = load i32, ptr @math_mode, align 4, !tbaa !8
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %533

443:                                              ; preds = %440
  %444 = load i32, ptr @cbench_print, align 4, !tbaa !8
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %449, label %446

446:                                              ; preds = %443
  %447 = load ptr, ptr @stderr, align 8, !tbaa !12
  %448 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 37, i64 1, ptr %447) #15
  br label %449

449:                                              ; preds = %446, %443
  store i32 0, ptr @math_mode, align 4, !tbaa !8
  br label %533

450:                                              ; preds = %195
  %451 = icmp sgt i32 %196, 1
  %452 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %453 = icmp eq i8 %186, %452
  %454 = select i1 %451, i1 %453, i1 false
  br i1 %454, label %455, label %461

455:                                              ; preds = %450
  %456 = shl i32 %196, 7
  %457 = and i32 %456, 16128
  %458 = icmp slt i32 %196, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = add nsw i32 %196, -1
  store i32 %460, ptr @math_mode, align 4, !tbaa !8
  br label %533

461:                                              ; preds = %455, %450
  %462 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !5
  %463 = icmp eq i8 %462, 109
  br i1 %463, label %489, label %464

464:                                              ; preds = %461
  %465 = icmp eq i32 %196, 0
  br i1 %465, label %495, label %466

466:                                              ; preds = %464
  %467 = shl i32 %196, 7
  %468 = and i32 %467, 16128
  %469 = icmp slt i32 %196, %468
  br i1 %469, label %495, label %470

470:                                              ; preds = %466
  %471 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %156, ptr noundef nonnull dereferenceable(5) @.str.17, i64 noundef 4) #13
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %485

473:                                              ; preds = %470
  %474 = getelementptr inbounds i8, ptr %156, i64 4
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = icmp sgt i8 %475, -1
  br i1 %476, label %477, label %485

477:                                              ; preds = %473
  %478 = tail call ptr @__ctype_b_loc() #14
  %479 = load ptr, ptr %478, align 8, !tbaa !12
  %480 = zext nneg i8 %475 to i64
  %481 = getelementptr inbounds i16, ptr %479, i64 %480
  %482 = load i16, ptr %481, align 2, !tbaa !14
  %483 = and i16 %482, 1024
  %484 = icmp eq i16 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %477, %473, %470
  br label %486

486:                                              ; preds = %485, %477
  %487 = phi i32 [ %471, %485 ], [ 1, %477 ]
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %486, %461
  %490 = call fastcc i32 @TeX_LR_check(i32 noundef 0, ptr noundef nonnull %2), !range !20
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %533, label %492

492:                                              ; preds = %489
  %493 = load i32, ptr @math_mode, align 4, !tbaa !8
  %494 = add nsw i32 %493, -1
  store i32 %494, ptr @math_mode, align 4, !tbaa !8
  br label %533

495:                                              ; preds = %486, %466, %464
  %496 = icmp eq i8 %462, 98
  br i1 %496, label %497, label %503

497:                                              ; preds = %495
  %498 = call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %2), !range !20
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr @math_mode, align 4, !tbaa !8
  %502 = add nsw i32 %501, 1
  store i32 %502, ptr @math_mode, align 4, !tbaa !8
  br label %533

503:                                              ; preds = %497, %495
  %504 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !5
  %505 = icmp eq i8 %504, 114
  br i1 %505, label %506, label %527

506:                                              ; preds = %503
  %507 = load ptr, ptr %2, align 8, !tbaa !12
  %508 = load i8, ptr %507, align 1, !tbaa !5
  %509 = icmp eq i8 %508, 0
  %510 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %511 = icmp eq i8 %508, %510
  %512 = select i1 %509, i1 true, i1 %511
  %513 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %514 = icmp eq i8 %508, %513
  %515 = select i1 %512, i1 true, i1 %514
  br i1 %515, label %526, label %516

516:                                              ; preds = %506, %516
  %517 = phi ptr [ %518, %516 ], [ %507, %506 ]
  %518 = getelementptr inbounds i8, ptr %517, i64 1
  %519 = load i8, ptr %518, align 1, !tbaa !5
  %520 = icmp eq i8 %519, 0
  %521 = icmp eq i8 %519, %510
  %522 = select i1 %520, i1 true, i1 %521
  %523 = icmp eq i8 %519, %513
  %524 = select i1 %522, i1 true, i1 %523
  br i1 %524, label %525, label %516, !llvm.loop !23

525:                                              ; preds = %516
  store ptr %518, ptr %2, align 8, !tbaa !12
  br label %526

526:                                              ; preds = %525, %506
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !5
  br label %533

527:                                              ; preds = %503
  %528 = call fastcc i32 @TeX_math_begin(ptr noundef nonnull %2), !range !20
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %527
  %531 = load i32, ptr @math_mode, align 4, !tbaa !8
  %532 = add nsw i32 %531, 1
  store i32 %532, ptr @math_mode, align 4, !tbaa !8
  br label %533

533:                                              ; preds = %530, %527, %526, %500, %492, %489, %459, %449, %440, %192, %190
  %534 = load ptr, ptr %2, align 8, !tbaa !12
  %535 = load i8, ptr %534, align 1, !tbaa !5
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %617, label %586

537:                                              ; preds = %183
  %538 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 3), align 1, !tbaa !5
  %539 = icmp eq i8 %186, %538
  br i1 %539, label %540, label %586

540:                                              ; preds = %537
  %541 = getelementptr inbounds i8, ptr %156, i64 1
  %542 = load i8, ptr %541, align 1, !tbaa !5
  switch i8 %542, label %572 [
    i8 102, label %543
    i8 115, label %554
  ]

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %156, i64 2
  %545 = load i8, ptr %544, align 1, !tbaa !5
  %546 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !5
  %547 = icmp eq i8 %545, %546
  %548 = select i1 %547, i64 5, i64 3
  %549 = getelementptr inbounds i8, ptr %156, i64 %548
  store ptr %549, ptr %2, align 8, !tbaa !12
  br label %550

550:                                              ; preds = %614, %612, %580, %575, %570, %559, %543
  %551 = load ptr, ptr %2, align 8, !tbaa !12
  %552 = load i8, ptr %551, align 1, !tbaa !5
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %617, label %154, !llvm.loop !24

554:                                              ; preds = %540
  %555 = getelementptr inbounds i8, ptr %156, i64 2
  store ptr %555, ptr %2, align 8, !tbaa !12
  %556 = load i8, ptr %555, align 1, !tbaa !5
  switch i8 %556, label %559 [
    i8 43, label %557
    i8 45, label %557
  ]

557:                                              ; preds = %554, %554
  %558 = getelementptr inbounds i8, ptr %156, i64 3
  store ptr %558, ptr %2, align 8, !tbaa !12
  br label %559

559:                                              ; preds = %557, %554
  %560 = load ptr, ptr %2, align 8, !tbaa !12
  %561 = getelementptr inbounds i8, ptr %560, i64 1
  store ptr %561, ptr %2, align 8, !tbaa !12
  %562 = tail call ptr @__ctype_b_loc() #14
  %563 = load ptr, ptr %562, align 8, !tbaa !12
  %564 = load i8, ptr %561, align 1, !tbaa !5
  %565 = sext i8 %564 to i64
  %566 = getelementptr inbounds i16, ptr %563, i64 %565
  %567 = load i16, ptr %566, align 2, !tbaa !14
  %568 = and i16 %567, 2048
  %569 = icmp eq i16 %568, 0
  br i1 %569, label %550, label %570

570:                                              ; preds = %559
  %571 = getelementptr inbounds i8, ptr %560, i64 2
  store ptr %571, ptr %2, align 8, !tbaa !12
  br label %550

572:                                              ; preds = %540
  %573 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !5
  %574 = icmp eq i8 %542, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %572
  %576 = getelementptr inbounds i8, ptr %156, i64 4
  store ptr %576, ptr %2, align 8, !tbaa !12
  br label %550

577:                                              ; preds = %572
  %578 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 4), align 4, !tbaa !5
  %579 = icmp eq i8 %542, %578
  br i1 %579, label %580, label %586

580:                                              ; preds = %577
  %581 = getelementptr inbounds i8, ptr %156, i64 2
  %582 = load i8, ptr %581, align 1, !tbaa !5
  %583 = icmp eq i8 %582, %573
  %584 = select i1 %583, i64 5, i64 3
  %585 = getelementptr inbounds i8, ptr %156, i64 %584
  store ptr %585, ptr %2, align 8, !tbaa !12
  br label %550

586:                                              ; preds = %577, %537, %533
  %587 = load ptr, ptr %2, align 8, !tbaa !12
  %588 = load i8, ptr %587, align 1, !tbaa !5
  %589 = icmp eq i8 %588, 48
  br i1 %589, label %590, label %612

590:                                              ; preds = %586
  %591 = getelementptr inbounds i8, ptr %587, i64 1
  %592 = load i8, ptr %591, align 1, !tbaa !5
  switch i8 %592, label %612 [
    i8 120, label %593
    i8 88, label %593
  ]

593:                                              ; preds = %590, %590
  %594 = load i32, ptr @terse, align 4, !tbaa !8
  %595 = icmp eq i32 %594, 0
  %596 = load i32, ptr @aflag, align 4
  %597 = icmp ne i32 %596, 0
  %598 = select i1 %595, i1 %597, i1 false
  br i1 %598, label %612, label %599

599:                                              ; preds = %593
  %600 = getelementptr inbounds i8, ptr %587, i64 2
  %601 = tail call ptr @__ctype_b_loc() #14
  %602 = load ptr, ptr %601, align 8, !tbaa !12
  br label %603

603:                                              ; preds = %603, %599
  %604 = phi ptr [ %600, %599 ], [ %611, %603 ]
  %605 = load i8, ptr %604, align 1, !tbaa !5
  %606 = sext i8 %605 to i64
  %607 = getelementptr inbounds i16, ptr %602, i64 %606
  %608 = load i16, ptr %607, align 2, !tbaa !14
  %609 = and i16 %608, 4096
  %610 = icmp eq i16 %609, 0
  %611 = getelementptr inbounds i8, ptr %604, i64 1
  br i1 %610, label %614, label %603, !llvm.loop !25

612:                                              ; preds = %593, %590, %586
  %613 = getelementptr inbounds i8, ptr %587, i64 1
  store ptr %613, ptr %2, align 8, !tbaa !12
  br label %550

614:                                              ; preds = %603
  store ptr %604, ptr %2, align 8, !tbaa !12
  br label %550

615:                                              ; preds = %211, %230
  %616 = phi ptr [ %232, %230 ], [ %212, %211 ]
  store ptr %616, ptr %2, align 8, !tbaa !12
  br label %617

617:                                              ; preds = %550, %533, %235, %176, %615, %150
  %618 = load ptr, ptr %2, align 8, !tbaa !12
  %619 = load i8, ptr %618, align 1, !tbaa !5
  %620 = icmp eq i8 %619, 0
  %621 = load i1, ptr @TeX_comment, align 4
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %623, label %626

623:                                              ; preds = %617
  %624 = load i32, ptr @save_math_mode, align 4, !tbaa !8
  store i32 %624, ptr @math_mode, align 4, !tbaa !8
  %625 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !5
  store i8 %625, ptr @LaTeX_Mode, align 1, !tbaa !5
  store i1 false, ptr @TeX_comment, align 4
  br label %626

626:                                              ; preds = %617, %623
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %627 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %628 = icmp eq ptr %618, %627
  br i1 %628, label %634, label %629

629:                                              ; preds = %626
  %630 = ptrtoint ptr %618 to i64
  %631 = ptrtoint ptr %627 to i64
  %632 = sub i64 %630, %631
  %633 = trunc i64 %632 to i32
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef %633) #12
  br label %634

634:                                              ; preds = %629, %626
  %635 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %636 = load i8, ptr %635, align 1, !tbaa !5
  %637 = icmp eq i8 %636, 0
  br i1 %637, label %815, label %643

638:                                              ; preds = %671
  %639 = load i1, ptr @TeX_comment, align 4
  br i1 %639, label %640, label %677

640:                                              ; preds = %638
  %641 = load i32, ptr @save_math_mode, align 4, !tbaa !8
  store i32 %641, ptr @math_mode, align 4, !tbaa !8
  %642 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !5
  store i8 %642, ptr @LaTeX_Mode, align 1, !tbaa !5
  store i1 false, ptr @TeX_comment, align 4
  br label %677

643:                                              ; preds = %634, %671
  %644 = phi i8 [ %675, %671 ], [ %636, %634 ]
  %645 = phi ptr [ %674, %671 ], [ %635, %634 ]
  %646 = phi ptr [ %673, %671 ], [ null, %634 ]
  %647 = zext i8 %644 to i64
  %648 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %647
  %649 = load i8, ptr %648, align 1, !tbaa !5
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %656, label %651

651:                                              ; preds = %643
  %652 = tail call i32 @stringcharlen(ptr noundef nonnull %645, i32 noundef 0) #12
  %653 = icmp sgt i32 %652, 0
  br i1 %653, label %654, label %656

654:                                              ; preds = %651
  %655 = zext nneg i32 %652 to i64
  br label %671

656:                                              ; preds = %651, %643
  %657 = load i8, ptr %645, align 1, !tbaa !5
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !5
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %662, label %671

662:                                              ; preds = %656
  %663 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %658
  %664 = load i8, ptr %663, align 1, !tbaa !5
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %677, label %666

666:                                              ; preds = %662
  %667 = icmp eq ptr %646, null
  br i1 %667, label %671, label %668

668:                                              ; preds = %666
  %669 = getelementptr inbounds i8, ptr %645, i64 -1
  %670 = icmp eq ptr %646, %669
  br i1 %670, label %677, label %671

671:                                              ; preds = %666, %668, %656, %654
  %672 = phi i64 [ %655, %654 ], [ 1, %656 ], [ 1, %668 ], [ 1, %666 ]
  %673 = phi ptr [ null, %654 ], [ null, %656 ], [ %646, %668 ], [ %645, %666 ]
  %674 = getelementptr inbounds i8, ptr %645, i64 %672
  %675 = load i8, ptr %674, align 1, !tbaa !5
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %638, label %643, !llvm.loop !10

677:                                              ; preds = %662, %668, %638, %640
  %678 = phi ptr [ %673, %638 ], [ %673, %640 ], [ %646, %668 ], [ %646, %662 ]
  %679 = phi ptr [ %674, %638 ], [ %674, %640 ], [ %645, %668 ], [ %645, %662 ]
  %680 = icmp eq ptr %678, null
  %681 = select i1 %680, ptr %679, ptr %678
  %682 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %683 = icmp ult ptr %682, %681
  br i1 %683, label %684, label %695

684:                                              ; preds = %677, %684
  %685 = phi ptr [ %691, %684 ], [ @ctoken, %677 ]
  %686 = phi i64 [ %690, %684 ], [ 0, %677 ]
  %687 = phi ptr [ %688, %684 ], [ %682, %677 ]
  %688 = getelementptr inbounds i8, ptr %687, i64 1
  store ptr %688, ptr @currentchar, align 8, !tbaa !12
  %689 = load i8, ptr %687, align 1, !tbaa !5
  %690 = add nuw nsw i64 %686, 1
  store i8 %689, ptr %685, align 1, !tbaa !5
  %691 = getelementptr inbounds i8, ptr @ctoken, i64 %690
  %692 = icmp ult ptr %688, %681
  %693 = icmp ult i64 %686, 118
  %694 = select i1 %692, i1 %693, i1 false
  br i1 %694, label %684, label %695, !llvm.loop !26

695:                                              ; preds = %684, %677
  %696 = phi ptr [ @ctoken, %677 ], [ %691, %684 ]
  store i8 0, ptr %696, align 1, !tbaa !5
  %697 = tail call i32 @strtoichar(ptr noundef nonnull @itoken, ptr noundef nonnull @ctoken, i32 noundef 100, i32 noundef 0) #12
  %698 = icmp ne i32 %697, 0
  %699 = load i32, ptr @cbench_print, align 4
  %700 = icmp ne i32 %699, 0
  %701 = select i1 %698, i1 %700, i1 false
  br i1 %701, label %702, label %705

702:                                              ; preds = %695
  %703 = load ptr, ptr @stderr, align 8, !tbaa !12
  %704 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %703, ptr noundef nonnull @.str.5, ptr noundef nonnull @ctoken, i32 noundef 463, ptr noundef nonnull @.str.6) #15
  br label %705

705:                                              ; preds = %702, %695
  %706 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #13
  %707 = trunc i64 %706 to i32
  %708 = load i32, ptr @lflag, align 4, !tbaa !8
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %724, label %710

710:                                              ; preds = %705
  %711 = load i32, ptr @minword, align 4, !tbaa !8
  %712 = icmp slt i32 %711, %707
  br i1 %712, label %713, label %806

713:                                              ; preds = %710
  %714 = tail call i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %715 = icmp ne i32 %714, 0
  %716 = load i32, ptr @cflag, align 4
  %717 = icmp ne i32 %716, 0
  %718 = select i1 %715, i1 true, i1 %717
  br i1 %718, label %806, label %719

719:                                              ; preds = %713
  %720 = tail call i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #12
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %806

722:                                              ; preds = %719
  %723 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @ctoken)
  br label %806

724:                                              ; preds = %705
  %725 = load i32, ptr @aflag, align 4, !tbaa !8
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %802, label %727

727:                                              ; preds = %724
  %728 = load i32, ptr @minword, align 4, !tbaa !8
  %729 = icmp slt i32 %728, %707
  br i1 %729, label %735, label %730

730:                                              ; preds = %727
  %731 = load i32, ptr @terse, align 4, !tbaa !8
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %812

733:                                              ; preds = %730
  %734 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %0)
  br label %812

735:                                              ; preds = %727
  %736 = tail call i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %755, label %738

738:                                              ; preds = %735
  %739 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), align 8, !tbaa !27
  %740 = icmp eq ptr %739, null
  %741 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 2), align 16
  %742 = icmp eq ptr %741, null
  %743 = select i1 %740, i1 %742, i1 false
  %744 = load i32, ptr @terse, align 4, !tbaa !8
  %745 = icmp eq i32 %744, 0
  br i1 %743, label %746, label %749

746:                                              ; preds = %738
  br i1 %745, label %747, label %806

747:                                              ; preds = %746
  %748 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %0)
  br label %806

749:                                              ; preds = %738
  br i1 %745, label %750, label %806

750:                                              ; preds = %749
  %751 = load ptr, ptr @hits, align 16, !tbaa !29
  %752 = getelementptr inbounds %struct.dent, ptr %751, i64 0, i32 1
  %753 = load ptr, ptr %752, align 8, !tbaa !30
  %754 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %753)
  br label %806

755:                                              ; preds = %735
  %756 = tail call i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #12
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %763, label %758

758:                                              ; preds = %755
  %759 = load i32, ptr @terse, align 4, !tbaa !8
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %806

761:                                              ; preds = %758
  %762 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  br label %806

763:                                              ; preds = %755
  tail call void @makepossibilities(ptr noundef nonnull @itoken) #12
  %764 = load i32, ptr @pcount, align 4, !tbaa !8
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %792, label %766

766:                                              ; preds = %763
  %767 = load i32, ptr @easypossibilities, align 4, !tbaa !8
  %768 = icmp eq i32 %767, 0
  %769 = select i1 %768, i32 63, i32 38
  %770 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %771 = ptrtoint ptr %770 to i64
  %772 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #13
  %773 = sub i64 sub (i64 0, i64 ptrtoint (ptr @contextbufs to i64)), %772
  %774 = add i64 %773, %771
  %775 = trunc i64 %774 to i32
  %776 = load i32, ptr @contextoffset, align 4, !tbaa !8
  %777 = add nsw i32 %776, %775
  %778 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %769, ptr noundef nonnull @ctoken, i32 noundef %767, i32 noundef %777)
  br label %779

779:                                              ; preds = %766, %784
  %780 = phi i64 [ 0, %766 ], [ %788, %784 ]
  %781 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %780
  %782 = load i8, ptr %781, align 8, !tbaa !5
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %790, label %784

784:                                              ; preds = %779
  %785 = icmp eq i64 %780, 0
  %786 = select i1 %785, i32 58, i32 44
  %787 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %786, ptr noundef nonnull %781)
  %788 = add nuw nsw i64 %780, 1
  %789 = icmp eq i64 %788, 100
  br i1 %789, label %790, label %779, !llvm.loop !32

790:                                              ; preds = %779, %784
  %791 = tail call i32 @fputc(i32 10, ptr %0)
  br label %806

792:                                              ; preds = %763
  %793 = load ptr, ptr @currentchar, align 8, !tbaa !12
  %794 = ptrtoint ptr %793 to i64
  %795 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #13
  %796 = sub i64 sub (i64 0, i64 ptrtoint (ptr @contextbufs to i64)), %795
  %797 = add i64 %796, %794
  %798 = trunc i64 %797 to i32
  %799 = load i32, ptr @contextoffset, align 4, !tbaa !8
  %800 = add nsw i32 %799, %798
  %801 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @ctoken, i32 noundef %800)
  br label %806

802:                                              ; preds = %724
  %803 = load i32, ptr @quit, align 4, !tbaa !8
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %806

805:                                              ; preds = %802
  tail call void @correct(ptr noundef nonnull @ctoken, i32 noundef 120, ptr noundef nonnull @itoken, i32 noundef 120, ptr noundef nonnull @currentchar) #12
  br label %806

806:                                              ; preds = %761, %758, %792, %790, %747, %746, %750, %749, %805, %802, %710, %713, %719, %722
  %807 = load i32, ptr @aflag, align 4, !tbaa !8
  %808 = icmp ne i32 %807, 0
  %809 = load i32, ptr @lflag, align 4
  %810 = icmp ne i32 %809, 0
  %811 = select i1 %808, i1 true, i1 %810
  br i1 %811, label %812, label %813

812:                                              ; preds = %806, %813, %730, %733
  br label %150, !llvm.loop !33

813:                                              ; preds = %806
  %814 = tail call i32 @fputs(ptr nonnull @ctoken, ptr %0)
  br label %812

815:                                              ; preds = %634
  %816 = load i32, ptr @lflag, align 4, !tbaa !8
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %824

818:                                              ; preds = %815
  %819 = load i32, ptr @aflag, align 4, !tbaa !8
  %820 = icmp ne i32 %819, 0
  %821 = or i1 %9, %820
  br i1 %821, label %822, label %824

822:                                              ; preds = %818, %146, %99
  %823 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  br label %824

824:                                              ; preds = %822, %815, %818, %143, %146, %96, %99
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

declare void @copyout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @strtoichar(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @good(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @compoundgood(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @makepossibilities(ptr noundef) local_unnamed_addr #1

declare void @correct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @TeX_math_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %1, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  %6 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %7 = icmp eq i8 %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %10 = icmp eq i8 %4, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %14, %12 ], [ %3, %2 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !12
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 0
  %17 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %18 = icmp eq i8 %15, %17
  %19 = select i1 %16, i1 true, i1 %18
  %20 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %21 = icmp eq i8 %15, %20
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %12, !llvm.loop !22

23:                                               ; preds = %12, %2
  %24 = load ptr, ptr %1, align 8, !tbaa !12
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = trunc i32 %0 to i8
  store i8 %28, ptr @LaTeX_Mode, align 1, !tbaa !5
  br label %174

29:                                               ; preds = %23
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !5
  %30 = load ptr, ptr %1, align 8, !tbaa !12
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %1, align 8, !tbaa !12
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.18, i64 noundef 8) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.19, i64 noundef 8) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(12) @.str.20, i64 noundef 11) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(8) @.str.21, i64 noundef 7) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(5) @.str.22, i64 noundef 4) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43, %40, %37, %34, %29
  store ptr %30, ptr %1, align 8, !tbaa !12
  %47 = load i8, ptr %30, align 1, !tbaa !5
  %48 = icmp eq i8 %47, 0
  %49 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %50 = icmp eq i8 %47, %49
  %51 = select i1 %48, i1 true, i1 %50
  %52 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %53 = icmp eq i8 %47, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %174, label %55

55:                                               ; preds = %46, %55
  %56 = phi ptr [ %57, %55 ], [ %30, %46 ]
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %1, align 8, !tbaa !12
  %58 = load i8, ptr %57, align 1, !tbaa !5
  %59 = icmp eq i8 %58, 0
  %60 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %61 = icmp eq i8 %58, %60
  %62 = select i1 %59, i1 true, i1 %61
  %63 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %64 = icmp eq i8 %58, %63
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %174, label %55, !llvm.loop !23

66:                                               ; preds = %43
  %67 = icmp eq i32 %0, 98
  br i1 %67, label %68, label %154

68:                                               ; preds = %66
  %69 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(8) @.str.23, i64 noundef 7) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.24, i64 noundef 8) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ 1, %74 ], [ 0, %71 ]
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.25, i64 noundef 8) #13
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %76, %79
  %81 = load i8, ptr %31, align 1, !tbaa !5
  %82 = icmp eq i8 %81, 0
  %83 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %84 = icmp eq i8 %81, %83
  %85 = select i1 %82, i1 true, i1 %84
  %86 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %87 = icmp eq i8 %81, %86
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %75, %89
  %90 = phi ptr [ %91, %89 ], [ %31, %75 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %91, ptr %1, align 8, !tbaa !12
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = icmp eq i8 %92, 0
  %94 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %95 = icmp eq i8 %92, %94
  %96 = select i1 %93, i1 true, i1 %95
  %97 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %98 = icmp eq i8 %92, %97
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %100, label %89, !llvm.loop !23

100:                                              ; preds = %89, %75
  %101 = load ptr, ptr %1, align 8, !tbaa !12
  %102 = load i8, ptr %101, align 1, !tbaa !5
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %174, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %105, ptr %1, align 8, !tbaa !12
  %106 = icmp eq i32 %80, 0
  br i1 %106, label %174, label %107

107:                                              ; preds = %104
  %108 = load i8, ptr %105, align 1, !tbaa !5
  %109 = icmp eq i8 %108, 0
  %110 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %111 = icmp eq i8 %108, %110
  %112 = select i1 %109, i1 true, i1 %111
  %113 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %114 = icmp eq i8 %108, %113
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %127, label %116

116:                                              ; preds = %107, %116
  %117 = phi ptr [ %118, %116 ], [ %105, %107 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  store ptr %118, ptr %1, align 8, !tbaa !12
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = icmp eq i8 %119, 0
  %121 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %122 = icmp eq i8 %119, %121
  %123 = select i1 %120, i1 true, i1 %122
  %124 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %125 = icmp eq i8 %119, %124
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %127, label %116, !llvm.loop !23

127:                                              ; preds = %116, %107
  %128 = load ptr, ptr %1, align 8, !tbaa !12
  %129 = load i8, ptr %128, align 1, !tbaa !5
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %174, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %132, ptr %1, align 8, !tbaa !12
  %133 = icmp eq i32 %80, 1
  br i1 %133, label %174, label %134

134:                                              ; preds = %131
  %135 = load i8, ptr %132, align 1, !tbaa !5
  %136 = icmp eq i8 %135, 0
  %137 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %138 = icmp eq i8 %135, %137
  %139 = select i1 %136, i1 true, i1 %138
  %140 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %141 = icmp eq i8 %135, %140
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %174, label %143

143:                                              ; preds = %134, %143
  %144 = phi ptr [ %145, %143 ], [ %132, %134 ]
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  store ptr %145, ptr %1, align 8, !tbaa !12
  %146 = load i8, ptr %145, align 1, !tbaa !5
  %147 = icmp eq i8 %146, 0
  %148 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %149 = icmp eq i8 %146, %148
  %150 = select i1 %147, i1 true, i1 %149
  %151 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %152 = icmp eq i8 %146, %151
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %174, label %143, !llvm.loop !23

154:                                              ; preds = %66
  %155 = load i8, ptr %31, align 1, !tbaa !5
  %156 = icmp eq i8 %155, 0
  %157 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %158 = icmp eq i8 %155, %157
  %159 = select i1 %156, i1 true, i1 %158
  %160 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %161 = icmp eq i8 %155, %160
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %174, label %163

163:                                              ; preds = %154, %163
  %164 = phi ptr [ %165, %163 ], [ %31, %154 ]
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %165, ptr %1, align 8, !tbaa !12
  %166 = load i8, ptr %165, align 1, !tbaa !5
  %167 = icmp eq i8 %166, 0
  %168 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %169 = icmp eq i8 %166, %168
  %170 = select i1 %167, i1 true, i1 %169
  %171 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %172 = icmp eq i8 %166, %171
  %173 = select i1 %170, i1 true, i1 %172
  br i1 %173, label %174, label %163, !llvm.loop !23

174:                                              ; preds = %163, %143, %55, %154, %134, %131, %127, %104, %100, %46, %27
  %175 = phi i32 [ 0, %27 ], [ 1, %46 ], [ 0, %100 ], [ 0, %104 ], [ 0, %127 ], [ 0, %131 ], [ 0, %134 ], [ 0, %154 ], [ 1, %55 ], [ 0, %143 ], [ 0, %163 ]
  ret i32 %175
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @TeX_LR_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr %1, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  %6 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %7 = icmp eq i8 %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %10 = icmp eq i8 %4, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %14, %12 ], [ %3, %2 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !12
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 0
  %17 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %18 = icmp eq i8 %15, %17
  %19 = select i1 %16, i1 true, i1 %18
  %20 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %21 = icmp eq i8 %15, %20
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %12, !llvm.loop !22

23:                                               ; preds = %12, %2
  %24 = load ptr, ptr %1, align 8, !tbaa !12
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8 109, ptr @LaTeX_Mode, align 1, !tbaa !5
  br label %103

28:                                               ; preds = %23
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !5
  %29 = load ptr, ptr %1, align 8, !tbaa !12
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %30, ptr %1, align 8, !tbaa !12
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(9) @.str.24, i64 noundef 8) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %28
  %34 = load i8, ptr %30, align 1, !tbaa !5
  %35 = icmp eq i8 %34, 0
  %36 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %37 = icmp eq i8 %34, %36
  %38 = select i1 %35, i1 true, i1 %37
  %39 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %40 = icmp eq i8 %34, %39
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %33, %42
  %43 = phi ptr [ %44, %42 ], [ %30, %33 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %44, ptr %1, align 8, !tbaa !12
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = icmp eq i8 %45, 0
  %47 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %48 = icmp eq i8 %45, %47
  %49 = select i1 %46, i1 true, i1 %48
  %50 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %51 = icmp eq i8 %45, %50
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %42, !llvm.loop !23

53:                                               ; preds = %42, %33
  %54 = load ptr, ptr %1, align 8, !tbaa !12
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %58, ptr %1, align 8, !tbaa !12
  br label %59

59:                                               ; preds = %57, %53
  %60 = icmp eq i32 %0, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %1, align 8, !tbaa !12
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = icmp eq i8 %63, 0
  %65 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %66 = icmp eq i8 %63, %65
  %67 = select i1 %64, i1 true, i1 %66
  %68 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %69 = icmp eq i8 %63, %68
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %82, label %71

71:                                               ; preds = %61, %71
  %72 = phi ptr [ %73, %71 ], [ %62, %61 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %73, ptr %1, align 8, !tbaa !12
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = icmp eq i8 %74, 0
  %76 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %77 = icmp eq i8 %74, %76
  %78 = select i1 %75, i1 true, i1 %77
  %79 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %80 = icmp eq i8 %74, %79
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %71, !llvm.loop !23

82:                                               ; preds = %71, %61
  %83 = load i32, ptr @math_mode, align 4, !tbaa !8
  %84 = shl i32 %83, 7
  %85 = add i32 %84, 256
  %86 = and i32 %85, 16256
  %87 = add i32 %83, -126
  %88 = add i32 %87, %86
  store i32 %88, ptr @math_mode, align 4, !tbaa !8
  br label %103

89:                                               ; preds = %59
  %90 = load i32, ptr @math_mode, align 4, !tbaa !8
  %91 = shl i32 %90, 7
  %92 = and i32 %91, 16256
  %93 = sub nsw i32 %90, %92
  store i32 %93, ptr @math_mode, align 4, !tbaa !8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, ptr @cbench_print, align 4, !tbaa !8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr @stderr, align 8, !tbaa !12
  %100 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 36, i64 1, ptr %99) #15
  br label %101

101:                                              ; preds = %98, %95
  store i32 1, ptr @math_mode, align 4, !tbaa !8
  br label %103

102:                                              ; preds = %28
  store ptr %29, ptr %1, align 8, !tbaa !12
  br label %103

103:                                              ; preds = %82, %101, %89, %102, %27
  %104 = phi i32 [ 0, %27 ], [ 0, %102 ], [ 1, %89 ], [ 1, %101 ], [ 1, %82 ]
  ret i32 %104
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_strncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = zext nneg i32 %2 to i64
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %4) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 %4
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call ptr @__ctype_b_loc() #14
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = zext nneg i8 %9 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !14
  %17 = and i16 %16, 1024
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7, %11, %3
  br label %20

20:                                               ; preds = %11, %19
  %21 = phi i32 [ %5, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @TeX_skip_parens(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 0
  %5 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %6 = icmp eq i8 %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  %8 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %9 = icmp eq i8 %3, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !12
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 0
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %17 = icmp eq i8 %14, %16
  %18 = select i1 %15, i1 true, i1 %17
  %19 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %20 = icmp eq i8 %14, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11, !llvm.loop !23

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_math_begin(ptr nocapture noundef %0) unnamed_addr #5 {
  br label %2

2:                                                ; preds = %354, %1
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2, !tbaa !5
  %6 = icmp eq i8 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !12
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !5
  %11 = icmp eq i8 %9, %10
  br i1 %11, label %17, label %332

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %3, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, %5
  br i1 %15, label %16, label %365

16:                                               ; preds = %12
  store ptr %13, ptr %0, align 8, !tbaa !12
  br label %365

17:                                               ; preds = %7, %38
  %18 = phi ptr [ %39, %38 ], [ %8, %7 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr %0, align 8, !tbaa !12
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16), align 1, !tbaa !5
  %22 = icmp eq i8 %20, %21
  %23 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1
  %24 = icmp eq i8 %20, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %365, label %26

26:                                               ; preds = %17
  %27 = tail call ptr @__ctype_b_loc() #14
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = sext i8 %20 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !14
  %32 = and i16 %31, 1024
  %33 = icmp ne i16 %32, 0
  %34 = icmp eq i8 %20, 64
  %35 = or i1 %34, %33
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds i8, ptr %18, i64 2
  br label %38

38:                                               ; preds = %36, %63
  %39 = phi ptr [ %37, %36 ], [ %65, %63 ]
  store ptr %39, ptr %0, align 8, !tbaa !12
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !5
  %42 = icmp eq i8 %40, %41
  br i1 %42, label %17, label %332, !llvm.loop !34

43:                                               ; preds = %26
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.34, i64 noundef 5) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %18, i64 6
  %48 = load i8, ptr %47, align 1, !tbaa !5
  %49 = icmp sgt i8 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = zext nneg i8 %48 to i64
  %52 = getelementptr inbounds i16, ptr %28, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !14
  %54 = and i16 %53, 1024
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %46, %43
  br label %57

57:                                               ; preds = %50, %56
  %58 = phi i32 [ %44, %56 ], [ 1, %50 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = tail call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %0), !range !20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %365

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 8, !tbaa !12
  %65 = getelementptr inbounds i8, ptr %64, i64 -1
  br label %38

66:                                               ; preds = %57
  %67 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.27, i64 noundef 3) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = getelementptr inbounds i8, ptr %18, i64 4
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = icmp sgt i8 %71, -1
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = zext nneg i8 %71 to i64
  %75 = getelementptr inbounds i16, ptr %28, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !14
  %77 = and i16 %76, 1024
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %69, %66
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i32 [ %67, %79 ], [ 1, %73 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %252, label %83

83:                                               ; preds = %80
  %84 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %18, i64 7
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = icmp sgt i8 %88, -1
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = zext nneg i8 %88 to i64
  %92 = getelementptr inbounds i16, ptr %28, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !14
  %94 = and i16 %93, 1024
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %86, %83
  br label %97

97:                                               ; preds = %96, %90
  %98 = phi i32 [ %84, %96 ], [ 1, %90 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %252, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = getelementptr inbounds i8, ptr %18, i64 7
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = icmp sgt i8 %105, -1
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = zext nneg i8 %105 to i64
  %109 = getelementptr inbounds i16, ptr %28, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !14
  %111 = and i16 %110, 1024
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %103, %100
  br label %114

114:                                              ; preds = %113, %107
  %115 = phi i32 [ %101, %113 ], [ 1, %107 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %252, label %117

117:                                              ; preds = %114
  %118 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(5) @.str.37, i64 noundef 4) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, ptr %18, i64 5
  %122 = load i8, ptr %121, align 1, !tbaa !5
  %123 = icmp sgt i8 %122, -1
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = zext nneg i8 %122 to i64
  %126 = getelementptr inbounds i16, ptr %28, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !14
  %128 = and i16 %127, 1024
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %120, %117
  br label %131

131:                                              ; preds = %130, %124
  %132 = phi i32 [ %118, %130 ], [ 1, %124 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %252, label %134

134:                                              ; preds = %131
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.38, i64 noundef 3) #13
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = getelementptr inbounds i8, ptr %18, i64 4
  %139 = load i8, ptr %138, align 1, !tbaa !5
  %140 = icmp sgt i8 %139, -1
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = zext nneg i8 %139 to i64
  %143 = getelementptr inbounds i16, ptr %28, i64 %142
  %144 = load i16, ptr %143, align 2, !tbaa !14
  %145 = and i16 %144, 1024
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141, %137, %134
  br label %148

148:                                              ; preds = %147, %141
  %149 = phi i32 [ %135, %147 ], [ 1, %141 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %252, label %151

151:                                              ; preds = %148
  %152 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #13
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = getelementptr inbounds i8, ptr %18, i64 7
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = icmp sgt i8 %156, -1
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = zext nneg i8 %156 to i64
  %160 = getelementptr inbounds i16, ptr %28, i64 %159
  %161 = load i16, ptr %160, align 2, !tbaa !14
  %162 = and i16 %161, 1024
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158, %154, %151
  br label %165

165:                                              ; preds = %164, %158
  %166 = phi i32 [ %152, %164 ], [ 1, %158 ]
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %252, label %168

168:                                              ; preds = %165
  %169 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.39, i64 noundef 5) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = getelementptr inbounds i8, ptr %18, i64 6
  %173 = load i8, ptr %172, align 1, !tbaa !5
  %174 = icmp sgt i8 %173, -1
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = zext nneg i8 %173 to i64
  %177 = getelementptr inbounds i16, ptr %28, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !14
  %179 = and i16 %178, 1024
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175, %171, %168
  br label %182

182:                                              ; preds = %181, %175
  %183 = phi i32 [ %169, %181 ], [ 1, %175 ]
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %252, label %185

185:                                              ; preds = %182
  %186 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.40, i64 noundef 5) #13
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %18, i64 6
  %190 = load i8, ptr %189, align 1, !tbaa !5
  %191 = icmp sgt i8 %190, -1
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = zext nneg i8 %190 to i64
  %194 = getelementptr inbounds i16, ptr %28, i64 %193
  %195 = load i16, ptr %194, align 2, !tbaa !14
  %196 = and i16 %195, 1024
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192, %188, %185
  br label %199

199:                                              ; preds = %198, %192
  %200 = phi i32 [ %186, %198 ], [ 1, %192 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %252, label %202

202:                                              ; preds = %199
  %203 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #13
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = getelementptr inbounds i8, ptr %18, i64 7
  %207 = load i8, ptr %206, align 1, !tbaa !5
  %208 = icmp sgt i8 %207, -1
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = zext nneg i8 %207 to i64
  %211 = getelementptr inbounds i16, ptr %28, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !14
  %213 = and i16 %212, 1024
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209, %205, %202
  br label %216

216:                                              ; preds = %215, %209
  %217 = phi i32 [ %203, %215 ], [ 1, %209 ]
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %252, label %219

219:                                              ; preds = %216
  %220 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.42, i32 noundef 7)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %252, label %222

222:                                              ; preds = %219
  %223 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.43, i32 noundef 11)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %252, label %225

225:                                              ; preds = %222
  %226 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.44, i32 noundef 13)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %252, label %228

228:                                              ; preds = %225
  %229 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.45, i32 noundef 13)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %252, label %231

231:                                              ; preds = %228
  %232 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.46, i32 noundef 10)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %252, label %234

234:                                              ; preds = %231
  %235 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.47, i32 noundef 9)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %252, label %237

237:                                              ; preds = %234
  %238 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.48, i32 noundef 13)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %252, label %240

240:                                              ; preds = %237
  %241 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.49, i32 noundef 12)
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %240
  %244 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.50, i32 noundef 7)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.51, i32 noundef 11)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.52, i32 noundef 7)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %276

252:                                              ; preds = %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %199, %182, %165, %148, %131, %114, %97, %80
  %253 = icmp eq i8 %20, 0
  %254 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %255 = icmp eq i8 %20, %254
  %256 = select i1 %253, i1 true, i1 %255
  %257 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %258 = icmp eq i8 %20, %257
  %259 = select i1 %256, i1 true, i1 %258
  br i1 %259, label %271, label %260

260:                                              ; preds = %252, %260
  %261 = phi ptr [ %262, %260 ], [ %19, %252 ]
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %262, ptr %0, align 8, !tbaa !12
  %263 = load i8, ptr %262, align 1, !tbaa !5
  %264 = icmp eq i8 %263, 0
  %265 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %266 = icmp eq i8 %263, %265
  %267 = select i1 %264, i1 true, i1 %266
  %268 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %269 = icmp eq i8 %263, %268
  %270 = select i1 %267, i1 true, i1 %269
  br i1 %270, label %271, label %260, !llvm.loop !23

271:                                              ; preds = %260, %252
  %272 = load ptr, ptr %0, align 8, !tbaa !12
  %273 = load i8, ptr %272, align 1, !tbaa !5
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %365

275:                                              ; preds = %271
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !5
  br label %365

276:                                              ; preds = %249
  %277 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.53, i32 noundef 4)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %294, label %279

279:                                              ; preds = %276
  %280 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.54, i32 noundef 10)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %279
  %283 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.55, i32 noundef 12)
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.56, i32 noundef 9)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.57, i32 noundef 11)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.58, i32 noundef 10)
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %291, %288, %285, %282, %279, %276
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %0)
  %295 = load ptr, ptr %0, align 8, !tbaa !12
  %296 = load i8, ptr %295, align 1, !tbaa !5
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %294
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !5
  br label %365

299:                                              ; preds = %294
  %300 = getelementptr inbounds i8, ptr %295, i64 1
  store ptr %300, ptr %0, align 8, !tbaa !12
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %0)
  %301 = load ptr, ptr %0, align 8, !tbaa !12
  %302 = load i8, ptr %301, align 1, !tbaa !5
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %304, label %365

304:                                              ; preds = %299
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !5
  br label %365

305:                                              ; preds = %291
  %306 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.59, i32 noundef 4)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %305
  %309 = getelementptr inbounds i8, ptr %18, i64 5
  %310 = load i8, ptr %309, align 1, !tbaa !5
  %311 = getelementptr inbounds i8, ptr %18, i64 6
  br label %312

312:                                              ; preds = %312, %308
  %313 = phi ptr [ %311, %308 ], [ %318, %312 ]
  store ptr %313, ptr %0, align 8, !tbaa !12
  %314 = load i8, ptr %313, align 1, !tbaa !5
  %315 = icmp eq i8 %314, %310
  %316 = icmp eq i8 %314, 0
  %317 = or i1 %315, %316
  %318 = getelementptr inbounds i8, ptr %313, i64 1
  br i1 %317, label %365, label %312, !llvm.loop !35

319:                                              ; preds = %305, %319
  %320 = phi ptr [ %321, %319 ], [ %19, %305 ]
  %321 = getelementptr inbounds i8, ptr %320, i64 1
  store ptr %321, ptr %0, align 8, !tbaa !12
  %322 = load ptr, ptr %27, align 8, !tbaa !12
  %323 = load i8, ptr %321, align 1, !tbaa !5
  %324 = sext i8 %323 to i64
  %325 = getelementptr inbounds i16, ptr %322, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !14
  %327 = and i16 %326, 1024
  %328 = icmp ne i16 %327, 0
  %329 = icmp eq i8 %323, 64
  %330 = or i1 %329, %328
  br i1 %330, label %319, label %331, !llvm.loop !36

331:                                              ; preds = %319
  store ptr %320, ptr %0, align 8, !tbaa !12
  br label %365

332:                                              ; preds = %38, %7
  %333 = phi ptr [ %8, %7 ], [ %39, %38 ]
  %334 = phi i8 [ %9, %7 ], [ %40, %38 ]
  %335 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1, !tbaa !5
  %336 = icmp eq i8 %334, %335
  %337 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 6), align 1
  %338 = icmp eq i8 %334, %337
  %339 = select i1 %336, i1 true, i1 %338
  br i1 %339, label %340, label %365

340:                                              ; preds = %332
  %341 = getelementptr inbounds i8, ptr %333, i64 1
  %342 = load i8, ptr %341, align 1, !tbaa !5
  %343 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 11), align 4, !tbaa !5
  %344 = icmp eq i8 %342, %343
  br i1 %344, label %345, label %365

345:                                              ; preds = %340
  store ptr %341, ptr %0, align 8, !tbaa !12
  %346 = load i8, ptr %341, align 1, !tbaa !5
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %365, label %348

348:                                              ; preds = %345, %361
  %349 = phi ptr [ %362, %361 ], [ %341, %345 ]
  %350 = getelementptr inbounds i8, ptr %349, i64 1
  store ptr %350, ptr %0, align 8, !tbaa !12
  %351 = load i8, ptr %349, align 1, !tbaa !5
  %352 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 11), align 4, !tbaa !5
  %353 = icmp eq i8 %351, %352
  br i1 %353, label %354, label %361

354:                                              ; preds = %348
  %355 = load i8, ptr %350, align 1, !tbaa !5
  %356 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4, !tbaa !5
  %357 = icmp eq i8 %355, %356
  %358 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 7), align 4
  %359 = icmp eq i8 %355, %358
  %360 = select i1 %357, i1 true, i1 %359
  br i1 %360, label %2, label %361

361:                                              ; preds = %354, %348
  %362 = load ptr, ptr %0, align 8, !tbaa !12
  %363 = load i8, ptr %362, align 1, !tbaa !5
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %365, label %348, !llvm.loop !37

365:                                              ; preds = %60, %17, %312, %361, %345, %331, %304, %299, %298, %275, %271, %340, %332, %12, %16
  %366 = phi i32 [ 1, %16 ], [ 1, %12 ], [ 0, %332 ], [ 0, %340 ], [ 0, %271 ], [ 0, %275 ], [ 0, %298 ], [ 0, %299 ], [ 0, %304 ], [ 0, %331 ], [ 0, %345 ], [ 0, %361 ], [ 0, %312 ], [ 1, %17 ], [ 1, %60 ]
  ret i32 %366
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = !{i32 0, i32 2}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = !{!28, !13, i64 8}
!28 = !{!"success", !13, i64 0, !13, i64 8, !13, i64 16}
!29 = !{!28, !13, i64 0}
!30 = !{!31, !13, i64 8}
!31 = !{!"dent", !13, i64 0, !13, i64 8, !6, i64 16}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
