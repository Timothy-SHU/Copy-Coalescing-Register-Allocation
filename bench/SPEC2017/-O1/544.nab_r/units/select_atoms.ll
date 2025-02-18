; ModuleID = 'select_atoms.c'
source_filename = "select_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"setpoint: %s: no atoms selected\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"select_atoms: atom-expr too complicated\0A\00", align 1
@aexpr = internal global [1000 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [42 x i8] c"atom_in_aexpr: atom-expr too complicated\0A\00", align 1
@spart = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal unnamed_addr global ptr null, align 8
@apart = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16
@expbuf = internal global %struct.regex_t zeroinitializer, align 8

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @setpoint(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !46 {
  %4 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1), !range !47
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %89, label %8

8:                                                ; preds = %3, %81
  %9 = phi ptr [ %87, %81 ], [ %6, %3 ]
  %10 = phi double [ %85, %81 ], [ 0.000000e+00, %3 ]
  %11 = phi double [ %84, %81 ], [ 0.000000e+00, %3 ]
  %12 = phi double [ %83, %81 ], [ 0.000000e+00, %3 ]
  %13 = phi i32 [ %82, %81 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !52
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %81, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = zext nneg i32 %20 to i64
  br label %26

26:                                               ; preds = %22, %74
  %27 = phi i64 [ 0, %22 ], [ %79, %74 ]
  %28 = phi double [ %10, %22 ], [ %78, %74 ]
  %29 = phi double [ %11, %22 ], [ %77, %74 ]
  %30 = phi double [ %12, %22 ], [ %76, %74 ]
  %31 = phi i32 [ %13, %22 ], [ %75, %74 ]
  %32 = getelementptr inbounds ptr, ptr %24, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.residue_t, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !57
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %74, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.residue_t, ptr %33, i64 0, i32 15
  %40 = load i32, ptr %39, align 8, !tbaa !59
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.residue_t, ptr %33, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = zext nneg i32 %40 to i64
  br label %46

46:                                               ; preds = %42, %67
  %47 = phi i64 [ 0, %42 ], [ %72, %67 ]
  %48 = phi double [ %28, %42 ], [ %71, %67 ]
  %49 = phi double [ %29, %42 ], [ %70, %67 ]
  %50 = phi double [ %30, %42 ], [ %69, %67 ]
  %51 = phi i32 [ %31, %42 ], [ %68, %67 ]
  %52 = getelementptr inbounds %struct.atom_t, ptr %44, i64 %47, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !61
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.atom_t, ptr %44, i64 %47, i32 17
  %58 = load double, ptr %57, align 8, !tbaa !64
  %59 = fadd double %50, %58
  %60 = getelementptr inbounds %struct.atom_t, ptr %44, i64 %47, i32 17, i64 1
  %61 = load double, ptr %60, align 8, !tbaa !64
  %62 = fadd double %49, %61
  %63 = getelementptr inbounds %struct.atom_t, ptr %44, i64 %47, i32 17, i64 2
  %64 = load double, ptr %63, align 8, !tbaa !64
  %65 = fadd double %48, %64
  %66 = add nsw i32 %51, 1
  br label %67

67:                                               ; preds = %46, %56
  %68 = phi i32 [ %66, %56 ], [ %51, %46 ]
  %69 = phi double [ %59, %56 ], [ %50, %46 ]
  %70 = phi double [ %62, %56 ], [ %49, %46 ]
  %71 = phi double [ %65, %56 ], [ %48, %46 ]
  %72 = add nuw nsw i64 %47, 1
  %73 = icmp eq i64 %72, %45
  br i1 %73, label %74, label %46, !llvm.loop !65

74:                                               ; preds = %67, %38, %26
  %75 = phi i32 [ %31, %26 ], [ %31, %38 ], [ %68, %67 ]
  %76 = phi double [ %30, %26 ], [ %30, %38 ], [ %69, %67 ]
  %77 = phi double [ %29, %26 ], [ %29, %38 ], [ %70, %67 ]
  %78 = phi double [ %28, %26 ], [ %28, %38 ], [ %71, %67 ]
  %79 = add nuw nsw i64 %27, 1
  %80 = icmp eq i64 %79, %25
  br i1 %80, label %81, label %26, !llvm.loop !68

81:                                               ; preds = %74, %18, %8
  %82 = phi i32 [ %13, %8 ], [ %13, %18 ], [ %75, %74 ]
  %83 = phi double [ %12, %8 ], [ %12, %18 ], [ %76, %74 ]
  %84 = phi double [ %11, %8 ], [ %11, %18 ], [ %77, %74 ]
  %85 = phi double [ %10, %8 ], [ %10, %18 ], [ %78, %74 ]
  %86 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %8, !llvm.loop !69

89:                                               ; preds = %81, %3
  %90 = phi i32 [ 0, %3 ], [ %82, %81 ]
  %91 = phi double [ 0.000000e+00, %3 ], [ %83, %81 ]
  %92 = phi double [ 0.000000e+00, %3 ], [ %84, %81 ]
  %93 = phi double [ 0.000000e+00, %3 ], [ %85, %81 ]
  %94 = icmp eq i32 %90, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load ptr, ptr @stderr, align 8, !tbaa !48
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str, ptr noundef %1) #14
  br label %105

98:                                               ; preds = %89
  %99 = sitofp i32 %90 to double
  %100 = fdiv double %91, %99
  store double %100, ptr %2, align 8, !tbaa !64
  %101 = fdiv double %92, %99
  %102 = getelementptr inbounds double, ptr %2, i64 1
  store double %101, ptr %102, align 8, !tbaa !64
  %103 = fdiv double %93, %99
  %104 = getelementptr inbounds double, ptr %2, i64 2
  store double %103, ptr %104, align 8, !tbaa !64
  br label %105

105:                                              ; preds = %98, %95
  %106 = phi i32 [ 1, %95 ], [ 0, %98 ]
  ret i32 %106
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @select_atoms(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 !prof !70 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %5, label %9, label %50, !prof !71

9:                                                ; preds = %2
  br i1 %8, label %496, label %10, !prof !72

10:                                               ; preds = %9, %46
  %11 = phi ptr [ %48, %46 ], [ %7, %9 ]
  %12 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !55
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %46, !prof !73

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = zext nneg i32 %16 to i64
  br label %22

22:                                               ; preds = %18, %43
  %23 = phi i64 [ 0, %18 ], [ %44, %43 ]
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !57
  %28 = or i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 15
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %43, !prof !74

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = zext nneg i32 %30 to i64
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ 0, %32 ], [ %41, %36 ]
  %38 = getelementptr inbounds %struct.atom_t, ptr %34, i64 %37, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !61
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !61
  %41 = add nuw nsw i64 %37, 1
  %42 = icmp eq i64 %41, %35
  br i1 %42, label %43, label %36, !prof !75, !llvm.loop !76

43:                                               ; preds = %36, %22
  %44 = add nuw nsw i64 %23, 1
  %45 = icmp eq i64 %44, %21
  br i1 %45, label %46, label %22, !prof !77, !llvm.loop !78

46:                                               ; preds = %43, %10
  %47 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %496, label %10, !prof !79, !llvm.loop !80

50:                                               ; preds = %2
  br i1 %8, label %91, label %51, !prof !81

51:                                               ; preds = %50, %87
  %52 = phi ptr [ %89, %87 ], [ %7, %50 ]
  %53 = getelementptr inbounds %struct.strand_t, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !52
  %55 = and i32 %54, -129
  store i32 %55, ptr %53, align 4, !tbaa !52
  %56 = getelementptr inbounds %struct.strand_t, ptr %52, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !55
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %87, !prof !82

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.strand_t, ptr %52, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = zext nneg i32 %57 to i64
  br label %63

63:                                               ; preds = %59, %84
  %64 = phi i64 [ 0, %59 ], [ %85, %84 ]
  %65 = getelementptr inbounds ptr, ptr %61, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = getelementptr inbounds %struct.residue_t, ptr %66, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !57
  %69 = and i32 %68, -129
  store i32 %69, ptr %67, align 8, !tbaa !57
  %70 = getelementptr inbounds %struct.residue_t, ptr %66, i64 0, i32 15
  %71 = load i32, ptr %70, align 8, !tbaa !59
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %84, !prof !83

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.residue_t, ptr %66, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !60
  %76 = zext nneg i32 %71 to i64
  br label %77

77:                                               ; preds = %73, %77
  %78 = phi i64 [ 0, %73 ], [ %82, %77 ]
  %79 = getelementptr inbounds %struct.atom_t, ptr %75, i64 %78, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !61
  %81 = and i32 %80, -129
  store i32 %81, ptr %79, align 8, !tbaa !61
  %82 = add nuw nsw i64 %78, 1
  %83 = icmp eq i64 %82, %76
  br i1 %83, label %84, label %77, !prof !84, !llvm.loop !85

84:                                               ; preds = %77, %63
  %85 = add nuw nsw i64 %64, 1
  %86 = icmp eq i64 %85, %62
  br i1 %86, label %87, label %63, !prof !86, !llvm.loop !87

87:                                               ; preds = %84, %51
  %88 = getelementptr inbounds %struct.strand_t, ptr %52, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !48
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %51, !prof !88, !llvm.loop !89

91:                                               ; preds = %87, %50
  tail call fastcc void @clear_select(ptr noundef %0)
  %92 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 124) #15
  br label %96

93:                                               ; preds = %447
  %94 = load ptr, ptr %6, align 8, !tbaa !48
  %95 = icmp eq ptr %94, null
  br i1 %95, label %496, label %450, !prof !81

96:                                               ; preds = %91, %447
  %97 = phi ptr [ %92, %91 ], [ %448, %447 ]
  %98 = phi ptr [ %1, %91 ], [ %108, %447 ]
  %99 = icmp eq ptr %97, null
  br i1 %99, label %105, label %100, !prof !90

100:                                              ; preds = %96
  %101 = ptrtoint ptr %97 to i64
  %102 = ptrtoint ptr %98 to i64
  %103 = sub i64 %101, %102
  %104 = getelementptr inbounds i8, ptr %97, i64 1
  br label %107

105:                                              ; preds = %96
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %98) #15
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi ptr [ %104, %100 ], [ null, %105 ]
  %109 = phi i64 [ %103, %100 ], [ %106, %105 ]
  %110 = trunc i64 %109 to i32
  %111 = icmp sgt i32 %110, 999
  br i1 %111, label %112, label %115, !prof !91

112:                                              ; preds = %107
  %113 = load ptr, ptr @stderr, align 8, !tbaa !48
  %114 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 40, i64 1, ptr %113) #14
  br label %496

115:                                              ; preds = %107
  %116 = shl i64 %109, 32
  %117 = ashr exact i64 %116, 32
  %118 = tail call ptr @strncpy(ptr noundef nonnull @aexpr, ptr noundef nonnull %98, i64 noundef %117) #16
  %119 = getelementptr inbounds [1000 x i8], ptr @aexpr, i64 0, i64 %117
  store i8 0, ptr %119, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %120 = load i8, ptr @aexpr, align 16, !tbaa !92
  %121 = icmp eq i8 %120, 58
  br i1 %121, label %122, label %123, !prof !90

122:                                              ; preds = %115
  store ptr null, ptr @spart, align 8, !tbaa !48
  br label %127

123:                                              ; preds = %115
  %124 = tail call ptr @strtok(ptr noundef nonnull @aexpr, ptr noundef nonnull @.str.3) #16
  store ptr %124, ptr @spart, align 8, !tbaa !48
  %125 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %124) #15
  %126 = getelementptr i8, ptr getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), i64 %125
  br label %127

127:                                              ; preds = %123, %122
  %128 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), %122 ], [ %126, %123 ]
  %129 = load i8, ptr %128, align 1, !tbaa !92
  %130 = icmp eq i8 %129, 58
  br i1 %130, label %131, label %132, !prof !90

131:                                              ; preds = %127
  store ptr null, ptr @rpart, align 8, !tbaa !48
  br label %136

132:                                              ; preds = %127
  %133 = tail call ptr @strtok(ptr noundef nonnull %128, ptr noundef nonnull @.str.3) #16
  store ptr %133, ptr @rpart, align 8, !tbaa !48
  %134 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %133) #15
  %135 = add i64 %134, 1
  br label %136

136:                                              ; preds = %132, %131
  %137 = phi i64 [ %135, %132 ], [ 1, %131 ]
  %138 = getelementptr inbounds i8, ptr %128, i64 %137
  %139 = tail call ptr @strtok(ptr noundef nonnull %138, ptr noundef nonnull @.str.3) #16
  store ptr %139, ptr @apart, align 8, !tbaa !48
  %140 = load ptr, ptr @spart, align 8, !tbaa !48
  %141 = icmp eq ptr %140, null
  br i1 %141, label %213, label %142, !prof !90

142:                                              ; preds = %136
  %143 = tail call ptr @strtok(ptr noundef nonnull %140, ptr noundef nonnull @.str.4) #16
  %144 = call fastcc i32 @is_pattern(ptr noundef %143, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call fastcc void @match_str_pat(ptr noundef %0, ptr noundef %143)
  br label %174

147:                                              ; preds = %142
  %148 = load i32, ptr %3, align 4, !tbaa !94
  %149 = load i32, ptr %4, align 4, !tbaa !94
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !95
  br label %154

154:                                              ; preds = %151, %147
  %155 = phi i32 [ %153, %151 ], [ %149, %147 ]
  %156 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !95
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %174, label %159

159:                                              ; preds = %154, %170
  %160 = phi ptr [ %172, %170 ], [ %6, %154 ]
  %161 = phi i32 [ %171, %170 ], [ 1, %154 ]
  %162 = load ptr, ptr %160, align 8, !tbaa !48
  %163 = icmp slt i32 %161, %148
  %164 = icmp sgt i32 %161, %155
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.strand_t, ptr %162, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !52
  %169 = or i32 %168, 1
  store i32 %169, ptr %167, align 4, !tbaa !52
  br label %170

170:                                              ; preds = %166, %159
  %171 = add nuw i32 %161, 1
  %172 = getelementptr inbounds %struct.strand_t, ptr %162, i64 0, i32 4
  %173 = icmp eq i32 %161, %157
  br i1 %173, label %174, label %159, !llvm.loop !97

174:                                              ; preds = %170, %154, %146
  %175 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %176 = icmp eq ptr %175, null
  br i1 %176, label %227, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %179 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  br label %180

180:                                              ; preds = %177, %210
  %181 = phi ptr [ %211, %210 ], [ %175, %177 ]
  %182 = call fastcc i32 @is_pattern(ptr noundef nonnull %181, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  tail call fastcc void @match_str_pat(ptr noundef %0, ptr noundef nonnull %181)
  br label %210

185:                                              ; preds = %180
  %186 = load i32, ptr %3, align 4, !tbaa !94
  %187 = load i32, ptr %4, align 4, !tbaa !94
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, ptr %178, align 8, !tbaa !95
  br label %191

191:                                              ; preds = %189, %185
  %192 = phi i32 [ %190, %189 ], [ %187, %185 ]
  %193 = load i32, ptr %179, align 8, !tbaa !95
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %210, label %195

195:                                              ; preds = %191, %206
  %196 = phi ptr [ %208, %206 ], [ %6, %191 ]
  %197 = phi i32 [ %207, %206 ], [ 1, %191 ]
  %198 = load ptr, ptr %196, align 8, !tbaa !48
  %199 = icmp slt i32 %197, %186
  %200 = icmp sgt i32 %197, %192
  %201 = select i1 %199, i1 true, i1 %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.strand_t, ptr %198, i64 0, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !52
  %205 = or i32 %204, 1
  store i32 %205, ptr %203, align 4, !tbaa !52
  br label %206

206:                                              ; preds = %202, %195
  %207 = add nuw i32 %197, 1
  %208 = getelementptr inbounds %struct.strand_t, ptr %198, i64 0, i32 4
  %209 = icmp eq i32 %197, %193
  br i1 %209, label %210, label %195, !llvm.loop !97

210:                                              ; preds = %206, %191, %184
  %211 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %212 = icmp eq ptr %211, null
  br i1 %212, label %227, label %180, !llvm.loop !98

213:                                              ; preds = %136
  %214 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !95
  %216 = icmp slt i32 %215, 1
  br i1 %216, label %227, label %217, !prof !81

217:                                              ; preds = %213, %217
  %218 = phi ptr [ %225, %217 ], [ %6, %213 ]
  %219 = phi i32 [ %224, %217 ], [ 1, %213 ]
  %220 = load ptr, ptr %218, align 8, !tbaa !48
  %221 = getelementptr inbounds %struct.strand_t, ptr %220, i64 0, i32 2
  %222 = load i32, ptr %221, align 4, !tbaa !52
  %223 = or i32 %222, 1
  store i32 %223, ptr %221, align 4, !tbaa !52
  %224 = add nuw i32 %219, 1
  %225 = getelementptr inbounds %struct.strand_t, ptr %220, i64 0, i32 4
  %226 = icmp eq i32 %219, %215
  br i1 %226, label %227, label %217, !prof !88, !llvm.loop !97

227:                                              ; preds = %210, %217, %174, %213
  %228 = load ptr, ptr @rpart, align 8, !tbaa !48
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %233, !prof !90

230:                                              ; preds = %227
  %231 = load ptr, ptr %6, align 8, !tbaa !48
  %232 = icmp eq ptr %231, null
  br i1 %232, label %368, label %341, !prof !81

233:                                              ; preds = %227
  %234 = tail call ptr @strtok(ptr noundef nonnull %228, ptr noundef nonnull @.str.4) #16
  %235 = call fastcc i32 @is_pattern(ptr noundef %234, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  tail call fastcc void @match_res_pat(ptr noundef %0, ptr noundef %234)
  br label %284

238:                                              ; preds = %233
  %239 = load i32, ptr %4, align 4, !tbaa !94
  %240 = load ptr, ptr %6, align 8, !tbaa !48
  %241 = icmp eq ptr %240, null
  br i1 %241, label %284, label %242

242:                                              ; preds = %238
  %243 = load i32, ptr %3, align 4, !tbaa !94
  %244 = icmp eq i32 %239, -1
  %245 = sext i32 %243 to i64
  br label %246

246:                                              ; preds = %242, %280
  %247 = phi ptr [ %240, %242 ], [ %282, %280 ]
  %248 = getelementptr inbounds %struct.strand_t, ptr %247, i64 0, i32 2
  %249 = load i32, ptr %248, align 4, !tbaa !52
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %280, label %252

252:                                              ; preds = %246
  br i1 %244, label %253, label %256

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.strand_t, ptr %247, i64 0, i32 5
  %255 = load i32, ptr %254, align 8, !tbaa !55
  br label %256

256:                                              ; preds = %253, %252
  %257 = phi i32 [ %255, %253 ], [ %239, %252 ]
  %258 = getelementptr inbounds %struct.strand_t, ptr %247, i64 0, i32 5
  %259 = load i32, ptr %258, align 8, !tbaa !55
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %280

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.strand_t, ptr %247, i64 0, i32 7
  %263 = sext i32 %257 to i64
  %264 = zext nneg i32 %259 to i64
  br label %265

265:                                              ; preds = %261, %278
  %266 = phi i64 [ 0, %261 ], [ %267, %278 ]
  %267 = add nuw nsw i64 %266, 1
  %268 = icmp sge i64 %267, %245
  %269 = icmp slt i64 %266, %263
  %270 = select i1 %268, i1 %269, i1 false
  br i1 %270, label %271, label %278

271:                                              ; preds = %265
  %272 = load ptr, ptr %262, align 8, !tbaa !56
  %273 = getelementptr inbounds ptr, ptr %272, i64 %266
  %274 = load ptr, ptr %273, align 8, !tbaa !48
  %275 = getelementptr inbounds %struct.residue_t, ptr %274, i64 0, i32 6
  %276 = load i32, ptr %275, align 8, !tbaa !57
  %277 = or i32 %276, 1
  store i32 %277, ptr %275, align 8, !tbaa !57
  br label %278

278:                                              ; preds = %271, %265
  %279 = icmp eq i64 %267, %264
  br i1 %279, label %280, label %265, !llvm.loop !99

280:                                              ; preds = %278, %256, %246
  %281 = getelementptr inbounds %struct.strand_t, ptr %247, i64 0, i32 4
  %282 = load ptr, ptr %281, align 8, !tbaa !48
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %246, !llvm.loop !100

284:                                              ; preds = %280, %238, %237
  %285 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %286 = icmp eq ptr %285, null
  br i1 %286, label %368, label %287

287:                                              ; preds = %284, %338
  %288 = phi ptr [ %339, %338 ], [ %285, %284 ]
  %289 = call fastcc i32 @is_pattern(ptr noundef nonnull %288, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %287
  tail call fastcc void @match_res_pat(ptr noundef %0, ptr noundef nonnull %288)
  br label %338

292:                                              ; preds = %287
  %293 = load i32, ptr %4, align 4, !tbaa !94
  %294 = load ptr, ptr %6, align 8, !tbaa !48
  %295 = icmp eq ptr %294, null
  br i1 %295, label %338, label %296

296:                                              ; preds = %292
  %297 = load i32, ptr %3, align 4, !tbaa !94
  %298 = icmp eq i32 %293, -1
  %299 = sext i32 %297 to i64
  br label %300

300:                                              ; preds = %296, %334
  %301 = phi ptr [ %294, %296 ], [ %336, %334 ]
  %302 = getelementptr inbounds %struct.strand_t, ptr %301, i64 0, i32 2
  %303 = load i32, ptr %302, align 4, !tbaa !52
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %334, label %306

306:                                              ; preds = %300
  br i1 %298, label %307, label %310

307:                                              ; preds = %306
  %308 = getelementptr inbounds %struct.strand_t, ptr %301, i64 0, i32 5
  %309 = load i32, ptr %308, align 8, !tbaa !55
  br label %310

310:                                              ; preds = %307, %306
  %311 = phi i32 [ %309, %307 ], [ %293, %306 ]
  %312 = getelementptr inbounds %struct.strand_t, ptr %301, i64 0, i32 5
  %313 = load i32, ptr %312, align 8, !tbaa !55
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %334

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.strand_t, ptr %301, i64 0, i32 7
  %317 = sext i32 %311 to i64
  %318 = zext nneg i32 %313 to i64
  br label %319

319:                                              ; preds = %315, %332
  %320 = phi i64 [ 0, %315 ], [ %321, %332 ]
  %321 = add nuw nsw i64 %320, 1
  %322 = icmp sge i64 %321, %299
  %323 = icmp slt i64 %320, %317
  %324 = select i1 %322, i1 %323, i1 false
  br i1 %324, label %325, label %332

325:                                              ; preds = %319
  %326 = load ptr, ptr %316, align 8, !tbaa !56
  %327 = getelementptr inbounds ptr, ptr %326, i64 %320
  %328 = load ptr, ptr %327, align 8, !tbaa !48
  %329 = getelementptr inbounds %struct.residue_t, ptr %328, i64 0, i32 6
  %330 = load i32, ptr %329, align 8, !tbaa !57
  %331 = or i32 %330, 1
  store i32 %331, ptr %329, align 8, !tbaa !57
  br label %332

332:                                              ; preds = %325, %319
  %333 = icmp eq i64 %321, %318
  br i1 %333, label %334, label %319, !llvm.loop !99

334:                                              ; preds = %332, %310, %300
  %335 = getelementptr inbounds %struct.strand_t, ptr %301, i64 0, i32 4
  %336 = load ptr, ptr %335, align 8, !tbaa !48
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %300, !llvm.loop !100

338:                                              ; preds = %334, %292, %291
  %339 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %340 = icmp eq ptr %339, null
  br i1 %340, label %368, label %287, !llvm.loop !101

341:                                              ; preds = %230, %364
  %342 = phi ptr [ %366, %364 ], [ %231, %230 ]
  %343 = getelementptr inbounds %struct.strand_t, ptr %342, i64 0, i32 2
  %344 = load i32, ptr %343, align 4, !tbaa !52
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %364, label %347, !prof !102

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.strand_t, ptr %342, i64 0, i32 5
  %349 = load i32, ptr %348, align 8, !tbaa !55
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %364, !prof !82

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.strand_t, ptr %342, i64 0, i32 7
  %353 = load ptr, ptr %352, align 8, !tbaa !56
  %354 = zext nneg i32 %349 to i64
  br label %355

355:                                              ; preds = %351, %355
  %356 = phi i64 [ 0, %351 ], [ %357, %355 ]
  %357 = add nuw nsw i64 %356, 1
  %358 = getelementptr inbounds ptr, ptr %353, i64 %356
  %359 = load ptr, ptr %358, align 8, !tbaa !48
  %360 = getelementptr inbounds %struct.residue_t, ptr %359, i64 0, i32 6
  %361 = load i32, ptr %360, align 8, !tbaa !57
  %362 = or i32 %361, 1
  store i32 %362, ptr %360, align 8, !tbaa !57
  %363 = icmp eq i64 %357, %354
  br i1 %363, label %364, label %355, !prof !86, !llvm.loop !99

364:                                              ; preds = %355, %347, %341
  %365 = getelementptr inbounds %struct.strand_t, ptr %342, i64 0, i32 4
  %366 = load ptr, ptr %365, align 8, !tbaa !48
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %341, !prof !88, !llvm.loop !100

368:                                              ; preds = %338, %364, %284, %230
  %369 = load ptr, ptr @apart, align 8, !tbaa !48
  %370 = icmp eq ptr %369, null
  br i1 %370, label %393, label %371, !prof !91

371:                                              ; preds = %368
  %372 = tail call ptr @strtok(ptr noundef nonnull %369, ptr noundef nonnull @.str.4) #16
  %373 = call fastcc i32 @is_pattern(ptr noundef %372, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %376, label %375, !prof !91

375:                                              ; preds = %371
  tail call fastcc void @match_atom_pat(ptr noundef %0, ptr noundef %372)
  br label %379

376:                                              ; preds = %371
  %377 = load ptr, ptr @stderr, align 8, !tbaa !48
  %378 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %377) #14
  br label %379

379:                                              ; preds = %376, %375
  %380 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %381 = icmp eq ptr %380, null
  br i1 %381, label %394, label %382, !prof !103

382:                                              ; preds = %379, %390
  %383 = phi ptr [ %391, %390 ], [ %380, %379 ]
  %384 = call fastcc i32 @is_pattern(ptr noundef nonnull %383, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  tail call fastcc void @match_atom_pat(ptr noundef %0, ptr noundef nonnull %383)
  br label %390

387:                                              ; preds = %382
  %388 = load ptr, ptr @stderr, align 8, !tbaa !48
  %389 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %388) #14
  br label %390

390:                                              ; preds = %387, %386
  %391 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %392 = icmp eq ptr %391, null
  br i1 %392, label %394, label %382, !prof !103, !llvm.loop !104

393:                                              ; preds = %368
  tail call fastcc void @match_atom_pat(ptr noundef %0, ptr noundef nonnull @.str.6)
  br label %394

394:                                              ; preds = %390, %379, %393
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %395 = load ptr, ptr %6, align 8, !tbaa !48
  %396 = icmp eq ptr %395, null
  br i1 %396, label %443, label %397, !prof !81

397:                                              ; preds = %394, %439
  %398 = phi ptr [ %441, %439 ], [ %395, %394 ]
  %399 = getelementptr inbounds %struct.strand_t, ptr %398, i64 0, i32 2
  %400 = load i32, ptr %399, align 4, !tbaa !52
  %401 = shl i32 %400, 7
  %402 = and i32 %401, 128
  %403 = or i32 %402, %400
  store i32 %403, ptr %399, align 4, !tbaa !52
  %404 = getelementptr inbounds %struct.strand_t, ptr %398, i64 0, i32 5
  %405 = load i32, ptr %404, align 8, !tbaa !55
  %406 = icmp sgt i32 %405, 0
  br i1 %406, label %407, label %439, !prof !82

407:                                              ; preds = %397
  %408 = getelementptr inbounds %struct.strand_t, ptr %398, i64 0, i32 7
  %409 = load ptr, ptr %408, align 8, !tbaa !56
  %410 = zext nneg i32 %405 to i64
  br label %411

411:                                              ; preds = %407, %436
  %412 = phi i64 [ 0, %407 ], [ %437, %436 ]
  %413 = getelementptr inbounds ptr, ptr %409, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !48
  %415 = getelementptr inbounds %struct.residue_t, ptr %414, i64 0, i32 6
  %416 = load i32, ptr %415, align 8, !tbaa !57
  %417 = shl i32 %416, 7
  %418 = and i32 %417, 128
  %419 = or i32 %418, %416
  store i32 %419, ptr %415, align 8, !tbaa !57
  %420 = getelementptr inbounds %struct.residue_t, ptr %414, i64 0, i32 15
  %421 = load i32, ptr %420, align 8, !tbaa !59
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %436, !prof !83

423:                                              ; preds = %411
  %424 = getelementptr inbounds %struct.residue_t, ptr %414, i64 0, i32 17
  %425 = load ptr, ptr %424, align 8, !tbaa !60
  %426 = zext nneg i32 %421 to i64
  br label %427

427:                                              ; preds = %423, %427
  %428 = phi i64 [ 0, %423 ], [ %434, %427 ]
  %429 = getelementptr inbounds %struct.atom_t, ptr %425, i64 %428, i32 2
  %430 = load i32, ptr %429, align 8, !tbaa !61
  %431 = shl i32 %430, 7
  %432 = and i32 %431, 128
  %433 = or i32 %432, %430
  store i32 %433, ptr %429, align 8, !tbaa !61
  %434 = add nuw nsw i64 %428, 1
  %435 = icmp eq i64 %434, %426
  br i1 %435, label %436, label %427, !prof !84, !llvm.loop !105

436:                                              ; preds = %427, %411
  %437 = add nuw nsw i64 %412, 1
  %438 = icmp eq i64 %437, %410
  br i1 %438, label %439, label %411, !prof !86, !llvm.loop !106

439:                                              ; preds = %436, %397
  %440 = getelementptr inbounds %struct.strand_t, ptr %398, i64 0, i32 4
  %441 = load ptr, ptr %440, align 8, !tbaa !48
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %397, !prof !88, !llvm.loop !107

443:                                              ; preds = %439, %394
  %444 = icmp eq ptr %108, null
  br i1 %444, label %447, label %445, !prof !90

445:                                              ; preds = %443
  %446 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %108, i32 noundef 124) #15
  br label %447

447:                                              ; preds = %445, %443
  %448 = phi ptr [ %446, %445 ], [ null, %443 ]
  tail call fastcc void @clear_select(ptr noundef %0)
  %449 = icmp eq ptr %108, null
  br i1 %449, label %93, label %96, !prof !90, !llvm.loop !108

450:                                              ; preds = %93, %492
  %451 = phi ptr [ %494, %492 ], [ %94, %93 ]
  %452 = getelementptr inbounds %struct.strand_t, ptr %451, i64 0, i32 2
  %453 = load i32, ptr %452, align 4, !tbaa !52
  %454 = lshr i32 %453, 7
  %455 = and i32 %454, 1
  %456 = or i32 %455, %453
  store i32 %456, ptr %452, align 4, !tbaa !52
  %457 = getelementptr inbounds %struct.strand_t, ptr %451, i64 0, i32 5
  %458 = load i32, ptr %457, align 8, !tbaa !55
  %459 = icmp sgt i32 %458, 0
  br i1 %459, label %460, label %492, !prof !82

460:                                              ; preds = %450
  %461 = getelementptr inbounds %struct.strand_t, ptr %451, i64 0, i32 7
  %462 = load ptr, ptr %461, align 8, !tbaa !56
  %463 = zext nneg i32 %458 to i64
  br label %464

464:                                              ; preds = %460, %489
  %465 = phi i64 [ 0, %460 ], [ %490, %489 ]
  %466 = getelementptr inbounds ptr, ptr %462, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !48
  %468 = getelementptr inbounds %struct.residue_t, ptr %467, i64 0, i32 6
  %469 = load i32, ptr %468, align 8, !tbaa !57
  %470 = lshr i32 %469, 7
  %471 = and i32 %470, 1
  %472 = or i32 %471, %469
  store i32 %472, ptr %468, align 8, !tbaa !57
  %473 = getelementptr inbounds %struct.residue_t, ptr %467, i64 0, i32 15
  %474 = load i32, ptr %473, align 8, !tbaa !59
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %489, !prof !83

476:                                              ; preds = %464
  %477 = getelementptr inbounds %struct.residue_t, ptr %467, i64 0, i32 17
  %478 = load ptr, ptr %477, align 8, !tbaa !60
  %479 = zext nneg i32 %474 to i64
  br label %480

480:                                              ; preds = %476, %480
  %481 = phi i64 [ 0, %476 ], [ %487, %480 ]
  %482 = getelementptr inbounds %struct.atom_t, ptr %478, i64 %481, i32 2
  %483 = load i32, ptr %482, align 8, !tbaa !61
  %484 = lshr i32 %483, 7
  %485 = and i32 %484, 1
  %486 = or i32 %485, %483
  store i32 %486, ptr %482, align 8, !tbaa !61
  %487 = add nuw nsw i64 %481, 1
  %488 = icmp eq i64 %487, %479
  br i1 %488, label %489, label %480, !prof !84, !llvm.loop !109

489:                                              ; preds = %480, %464
  %490 = add nuw nsw i64 %465, 1
  %491 = icmp eq i64 %490, %463
  br i1 %491, label %492, label %464, !prof !86, !llvm.loop !110

492:                                              ; preds = %489, %450
  %493 = getelementptr inbounds %struct.strand_t, ptr %451, i64 0, i32 4
  %494 = load ptr, ptr %493, align 8, !tbaa !48
  %495 = icmp eq ptr %494, null
  br i1 %495, label %496, label %450, !prof !88, !llvm.loop !111

496:                                              ; preds = %492, %46, %93, %9, %112
  %497 = phi i32 [ 1, %112 ], [ 0, %9 ], [ 0, %93 ], [ 0, %46 ], [ 0, %492 ]
  ret i32 %497
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_select(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !112 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5, !prof !81

5:                                                ; preds = %1, %41
  %6 = phi ptr [ %43, %41 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = and i32 %8, -2
  store i32 %9, ptr %7, align 4, !tbaa !52
  %10 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %41, !prof !82

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %38
  %18 = phi i64 [ 0, %13 ], [ %39, %38 ]
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38, !prof !114

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ 0, %27 ], [ %36, %31 ]
  %33 = getelementptr inbounds %struct.atom_t, ptr %29, i64 %32, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !61
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 8, !tbaa !61
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, %30
  br i1 %37, label %38, label %31, !prof !115, !llvm.loop !116

38:                                               ; preds = %31, %17
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %17, !prof !86, !llvm.loop !117

41:                                               ; preds = %38, %5
  %42 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %5, !prof !88, !llvm.loop !118

45:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @atom_in_aexpr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !46 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %261, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 124) #15
  br label %8

8:                                                ; preds = %6, %258
  %9 = phi ptr [ %7, %6 ], [ %259, %258 ]
  %10 = phi ptr [ %1, %6 ], [ %20, %258 ]
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %10 to i64
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds i8, ptr %9, i64 1
  br label %19

17:                                               ; preds = %8
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #15
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ null, %17 ]
  %21 = phi i64 [ %15, %12 ], [ %18, %17 ]
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %22, 999
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr @stderr, align 8, !tbaa !48
  %26 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 41, i64 1, ptr %25) #14
  br label %261

27:                                               ; preds = %19
  %28 = shl i64 %21, 32
  %29 = ashr exact i64 %28, 32
  %30 = tail call ptr @strncpy(ptr noundef nonnull @aexpr, ptr noundef nonnull %10, i64 noundef %29) #16
  %31 = getelementptr inbounds [1000 x i8], ptr @aexpr, i64 0, i64 %29
  store i8 0, ptr %31, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %32 = load i8, ptr @aexpr, align 16, !tbaa !92
  %33 = icmp eq i8 %32, 58
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store ptr null, ptr @spart, align 8, !tbaa !48
  br label %39

35:                                               ; preds = %27
  %36 = tail call ptr @strtok(ptr noundef nonnull @aexpr, ptr noundef nonnull @.str.3) #16
  store ptr %36, ptr @spart, align 8, !tbaa !48
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #15
  %38 = getelementptr i8, ptr getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), i64 %37
  br label %39

39:                                               ; preds = %35, %34
  %40 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), %34 ], [ %38, %35 ]
  %41 = load i8, ptr %40, align 1, !tbaa !92
  %42 = icmp eq i8 %41, 58
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr null, ptr @rpart, align 8, !tbaa !48
  br label %48

44:                                               ; preds = %39
  %45 = tail call ptr @strtok(ptr noundef nonnull %40, ptr noundef nonnull @.str.3) #16
  store ptr %45, ptr @rpart, align 8, !tbaa !48
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #15
  %47 = add i64 %46, 1
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i64 [ %47, %44 ], [ 1, %43 ]
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = tail call ptr @strtok(ptr noundef nonnull %50, ptr noundef nonnull @.str.3) #16
  store ptr %51, ptr @apart, align 8, !tbaa !48
  %52 = load ptr, ptr @spart, align 8, !tbaa !48
  %53 = icmp eq ptr %52, null
  br i1 %53, label %141, label %54

54:                                               ; preds = %48
  %55 = tail call ptr @strtok(ptr noundef nonnull %52, ptr noundef nonnull @.str.4) #16
  %56 = call fastcc i32 @is_pattern(ptr noundef %55, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc i32 @atom_in_str_pat(ptr noundef %0, ptr noundef %55), !range !47
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %94, label %141

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %63 = load i32, ptr %3, align 4, !tbaa !94
  %64 = load i32, ptr %4, align 4, !tbaa !94
  %65 = load ptr, ptr %62, align 8, !tbaa !119
  %66 = getelementptr inbounds %struct.residue_t, ptr %65, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !120
  %68 = getelementptr inbounds %struct.strand_t, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !121
  %70 = icmp eq i32 %64, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.molecule_t, ptr %69, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !95
  br label %74

74:                                               ; preds = %71, %61
  %75 = phi i32 [ %73, %71 ], [ %64, %61 ]
  %76 = getelementptr inbounds %struct.molecule_t, ptr %69, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !95
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.molecule_t, ptr %69, i64 0, i32 2
  br label %81

81:                                               ; preds = %79, %90
  %82 = phi ptr [ %92, %90 ], [ %80, %79 ]
  %83 = phi i32 [ %91, %90 ], [ 1, %79 ]
  %84 = load ptr, ptr %82, align 8, !tbaa !48
  %85 = icmp ne ptr %67, %84
  %86 = icmp slt i32 %83, %63
  %87 = or i1 %86, %85
  %88 = icmp sgt i32 %83, %75
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %81
  %91 = add nuw i32 %83, 1
  %92 = getelementptr inbounds %struct.strand_t, ptr %84, i64 0, i32 4
  %93 = icmp eq i32 %83, %77
  br i1 %93, label %94, label %81, !llvm.loop !122

94:                                               ; preds = %90, %74, %58
  %95 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %254, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  br label %99

99:                                               ; preds = %97, %138
  %100 = phi ptr [ %139, %138 ], [ %95, %97 ]
  %101 = call fastcc i32 @is_pattern(ptr noundef nonnull %100, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = tail call fastcc i32 @atom_in_str_pat(ptr noundef %0, ptr noundef nonnull %100), !range !47
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %138, label %141

106:                                              ; preds = %99
  %107 = load i32, ptr %3, align 4, !tbaa !94
  %108 = load i32, ptr %4, align 4, !tbaa !94
  %109 = load ptr, ptr %98, align 8, !tbaa !119
  %110 = getelementptr inbounds %struct.residue_t, ptr %109, i64 0, i32 9
  %111 = load ptr, ptr %110, align 8, !tbaa !120
  %112 = getelementptr inbounds %struct.strand_t, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !121
  %114 = icmp eq i32 %108, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.molecule_t, ptr %113, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !95
  br label %118

118:                                              ; preds = %115, %106
  %119 = phi i32 [ %117, %115 ], [ %108, %106 ]
  %120 = getelementptr inbounds %struct.molecule_t, ptr %113, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !95
  %122 = icmp slt i32 %121, 1
  br i1 %122, label %138, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.molecule_t, ptr %113, i64 0, i32 2
  br label %125

125:                                              ; preds = %123, %134
  %126 = phi ptr [ %136, %134 ], [ %124, %123 ]
  %127 = phi i32 [ %135, %134 ], [ 1, %123 ]
  %128 = load ptr, ptr %126, align 8, !tbaa !48
  %129 = icmp ne ptr %111, %128
  %130 = icmp slt i32 %127, %107
  %131 = or i1 %130, %129
  %132 = icmp sgt i32 %127, %119
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = add nuw i32 %127, 1
  %136 = getelementptr inbounds %struct.strand_t, ptr %128, i64 0, i32 4
  %137 = icmp eq i32 %127, %121
  br i1 %137, label %138, label %125, !llvm.loop !122

138:                                              ; preds = %134, %118, %103
  %139 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %140 = icmp eq ptr %139, null
  br i1 %140, label %254, label %99, !llvm.loop !123

141:                                              ; preds = %81, %103, %125, %58, %48
  %142 = load ptr, ptr @rpart, align 8, !tbaa !48
  %143 = icmp eq ptr %142, null
  br i1 %143, label %231, label %144

144:                                              ; preds = %141
  %145 = tail call ptr @strtok(ptr noundef nonnull %142, ptr noundef nonnull @.str.4) #16
  %146 = call fastcc i32 @is_pattern(ptr noundef %145, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = tail call fastcc i32 @atom_in_res_pat(ptr noundef %0, ptr noundef %145), !range !47
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %184, label %231

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %153 = load i32, ptr %3, align 4, !tbaa !94
  %154 = load i32, ptr %4, align 4, !tbaa !94
  %155 = load ptr, ptr %152, align 8, !tbaa !119
  %156 = getelementptr inbounds %struct.residue_t, ptr %155, i64 0, i32 9
  %157 = load ptr, ptr %156, align 8, !tbaa !120
  %158 = icmp eq i32 %154, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.strand_t, ptr %157, i64 0, i32 5
  %161 = load i32, ptr %160, align 8, !tbaa !55
  br label %162

162:                                              ; preds = %159, %151
  %163 = phi i32 [ %161, %159 ], [ %154, %151 ]
  %164 = getelementptr inbounds %struct.strand_t, ptr %157, i64 0, i32 5
  %165 = load i32, ptr %164, align 8, !tbaa !55
  %166 = getelementptr inbounds %struct.strand_t, ptr %157, i64 0, i32 7
  %167 = sext i32 %163 to i64
  %168 = tail call i32 @llvm.smax.i32(i32 %165, i32 0)
  %169 = zext nneg i32 %168 to i64
  br label %170

170:                                              ; preds = %173, %162
  %171 = phi i64 [ %178, %173 ], [ 0, %162 ]
  %172 = icmp eq i64 %171, %169
  br i1 %172, label %184, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %166, align 8, !tbaa !56
  %175 = getelementptr inbounds ptr, ptr %174, i64 %171
  %176 = load ptr, ptr %175, align 8, !tbaa !48
  %177 = icmp eq ptr %155, %176
  %178 = add nuw nsw i64 %171, 1
  %179 = trunc i64 %178 to i32
  %180 = icmp sle i32 %153, %179
  %181 = select i1 %177, i1 %180, i1 false
  %182 = icmp slt i64 %171, %167
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %231, label %170, !llvm.loop !124

184:                                              ; preds = %170, %148
  %185 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %186 = icmp eq ptr %185, null
  br i1 %186, label %254, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  br label %189

189:                                              ; preds = %187, %228
  %190 = phi ptr [ %229, %228 ], [ %185, %187 ]
  %191 = call fastcc i32 @is_pattern(ptr noundef nonnull %190, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = tail call fastcc i32 @atom_in_res_pat(ptr noundef %0, ptr noundef nonnull %190), !range !47
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %228, label %231

196:                                              ; preds = %189
  %197 = load i32, ptr %3, align 4, !tbaa !94
  %198 = load i32, ptr %4, align 4, !tbaa !94
  %199 = load ptr, ptr %188, align 8, !tbaa !119
  %200 = getelementptr inbounds %struct.residue_t, ptr %199, i64 0, i32 9
  %201 = load ptr, ptr %200, align 8, !tbaa !120
  %202 = icmp eq i32 %198, -1
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.strand_t, ptr %201, i64 0, i32 5
  %205 = load i32, ptr %204, align 8, !tbaa !55
  br label %206

206:                                              ; preds = %203, %196
  %207 = phi i32 [ %205, %203 ], [ %198, %196 ]
  %208 = getelementptr inbounds %struct.strand_t, ptr %201, i64 0, i32 5
  %209 = load i32, ptr %208, align 8, !tbaa !55
  %210 = getelementptr inbounds %struct.strand_t, ptr %201, i64 0, i32 7
  %211 = sext i32 %207 to i64
  %212 = tail call i32 @llvm.smax.i32(i32 %209, i32 0)
  %213 = zext nneg i32 %212 to i64
  br label %214

214:                                              ; preds = %217, %206
  %215 = phi i64 [ %222, %217 ], [ 0, %206 ]
  %216 = icmp eq i64 %215, %213
  br i1 %216, label %228, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %210, align 8, !tbaa !56
  %219 = getelementptr inbounds ptr, ptr %218, i64 %215
  %220 = load ptr, ptr %219, align 8, !tbaa !48
  %221 = icmp eq ptr %199, %220
  %222 = add nuw nsw i64 %215, 1
  %223 = trunc i64 %222 to i32
  %224 = icmp sle i32 %197, %223
  %225 = select i1 %221, i1 %224, i1 false
  %226 = icmp slt i64 %215, %211
  %227 = select i1 %225, i1 %226, i1 false
  br i1 %227, label %231, label %214, !llvm.loop !124

228:                                              ; preds = %214, %193
  %229 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %230 = icmp eq ptr %229, null
  br i1 %230, label %254, label %189, !llvm.loop !125

231:                                              ; preds = %173, %193, %217, %148, %141
  %232 = load ptr, ptr @apart, align 8, !tbaa !48
  %233 = icmp eq ptr %232, null
  br i1 %233, label %250, label %234

234:                                              ; preds = %231
  %235 = tail call ptr @strtok(ptr noundef nonnull %232, ptr noundef nonnull @.str.4) #16
  %236 = call fastcc i32 @is_pattern(ptr noundef %235, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %251, label %238

238:                                              ; preds = %234
  %239 = tail call fastcc i32 @atom_in_atom_pat(ptr noundef %0, ptr noundef %235), !range !47
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %238, %247
  %242 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.4) #16
  %243 = icmp eq ptr %242, null
  br i1 %243, label %254, label %244

244:                                              ; preds = %241
  %245 = call fastcc i32 @is_pattern(ptr noundef nonnull %242, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !93
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %244
  %248 = tail call fastcc i32 @atom_in_atom_pat(ptr noundef %0, ptr noundef nonnull %242), !range !47
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %241, label %250, !llvm.loop !126

250:                                              ; preds = %231, %238, %247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %261

251:                                              ; preds = %244, %234
  %252 = load ptr, ptr @stderr, align 8, !tbaa !48
  %253 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %252) #14
  br label %254

254:                                              ; preds = %138, %228, %241, %251, %94, %184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %255 = icmp eq ptr %20, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %254
  %257 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef 124) #15
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi ptr [ %257, %256 ], [ null, %254 ]
  %260 = icmp eq ptr %20, null
  br i1 %260, label %261, label %8, !llvm.loop !127

261:                                              ; preds = %258, %250, %2, %24
  %262 = phi i32 [ 0, %24 ], [ 0, %2 ], [ 1, %250 ], [ 0, %258 ]
  ret i32 %262
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_attr_if(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !46 {
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %3, %52
  %8 = phi ptr [ %54, %52 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = and i32 %10, %2
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 %1
  %14 = or i32 %13, %10
  store i32 %14, ptr %9, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !55
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = zext nneg i32 %16 to i64
  br label %22

22:                                               ; preds = %18, %49
  %23 = phi i64 [ 0, %18 ], [ %50, %49 ]
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !57
  %28 = and i32 %27, %2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 %1
  %31 = or i32 %30, %27
  store i32 %31, ptr %26, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 15
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = zext nneg i32 %33 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %47, %39 ]
  %41 = getelementptr inbounds %struct.atom_t, ptr %37, i64 %40, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !61
  %43 = and i32 %42, %2
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 0, i32 %1
  %46 = or i32 %45, %42
  store i32 %46, ptr %41, align 8, !tbaa !61
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, %38
  br i1 %48, label %49, label %39, !llvm.loop !128

49:                                               ; preds = %39, %22
  %50 = add nuw nsw i64 %23, 1
  %51 = icmp eq i64 %50, %21
  br i1 %51, label %52, label %22, !llvm.loop !129

52:                                               ; preds = %49, %7
  %53 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %7, !llvm.loop !130

56:                                               ; preds = %52, %3
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_attr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !46 {
  %3 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = xor i32 %1, -1
  br label %8

8:                                                ; preds = %6, %44
  %9 = phi ptr [ %4, %6 ], [ %46, %44 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = and i32 %11, %7
  store i32 %12, ptr %10, align 4, !tbaa !52
  %13 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = zext nneg i32 %14 to i64
  br label %20

20:                                               ; preds = %16, %41
  %21 = phi i64 [ 0, %16 ], [ %42, %41 ]
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !57
  %26 = and i32 %25, %7
  store i32 %26, ptr %24, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 15
  %28 = load i32, ptr %27, align 8, !tbaa !59
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = zext nneg i32 %28 to i64
  br label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ 0, %30 ], [ %39, %34 ]
  %36 = getelementptr inbounds %struct.atom_t, ptr %32, i64 %35, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !61
  %38 = and i32 %37, %7
  store i32 %38, ptr %36, align 8, !tbaa !61
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, %33
  br i1 %40, label %41, label %34, !llvm.loop !131

41:                                               ; preds = %34, %20
  %42 = add nuw nsw i64 %21, 1
  %43 = icmp eq i64 %42, %19
  br i1 %43, label %44, label %20, !llvm.loop !132

44:                                               ; preds = %41, %8
  %45 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %8, !llvm.loop !133

48:                                               ; preds = %44, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: cold nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @is_pattern(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !134 !PGOFuncName !135 {
  %4 = tail call ptr @__ctype_b_loc() #17
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load i8, ptr %0, align 1, !tbaa !92
  %7 = sext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %5, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !136
  %10 = and i16 %9, 2048
  %11 = icmp ne i16 %10, 0
  %12 = icmp eq i8 %6, 45
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %121, !prof !91

14:                                               ; preds = %3
  %15 = icmp eq i16 %10, 0
  br i1 %15, label %83, label %16

16:                                               ; preds = %14
  %17 = load i8, ptr %0, align 1, !tbaa !92
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds i16, ptr %5, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !136
  %21 = and i16 %20, 2048
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %16, %23
  %24 = phi i8 [ %32, %23 ], [ %17, %16 ]
  %25 = phi ptr [ %31, %23 ], [ %0, %16 ]
  %26 = phi i32 [ %30, %23 ], [ 0, %16 ]
  %27 = sext i8 %24 to i32
  %28 = mul nsw i32 %26, 10
  %29 = add i32 %28, -48
  %30 = add i32 %29, %27
  %31 = getelementptr inbounds i8, ptr %25, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !92
  %33 = sext i8 %32 to i64
  %34 = getelementptr inbounds i16, ptr %5, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !136
  %36 = and i16 %35, 2048
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %23, !llvm.loop !138

38:                                               ; preds = %23, %16
  %39 = phi i32 [ 0, %16 ], [ %30, %23 ]
  %40 = phi ptr [ %0, %16 ], [ %31, %23 ]
  store i32 %39, ptr %1, align 4, !tbaa !94
  %41 = load i8, ptr %40, align 1, !tbaa !92
  switch i8 %41, label %45 [
    i8 0, label %42
    i8 45, label %43
  ]

42:                                               ; preds = %38
  store i32 %39, ptr %2, align 4, !tbaa !94
  br label %121

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  br label %45

45:                                               ; preds = %38, %43
  %46 = phi ptr [ %44, %43 ], [ %40, %38 ]
  %47 = load i8, ptr %46, align 1, !tbaa !92
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, ptr %2, align 4, !tbaa !94
  br label %121

50:                                               ; preds = %45
  %51 = sext i8 %47 to i64
  %52 = getelementptr inbounds i16, ptr %5, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !136
  %54 = and i16 %53, 2048
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %121, label %56

56:                                               ; preds = %50
  %57 = load i8, ptr %46, align 1, !tbaa !92
  %58 = sext i8 %57 to i64
  %59 = getelementptr inbounds i16, ptr %5, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !136
  %61 = and i16 %60, 2048
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %56, %63
  %64 = phi i8 [ %72, %63 ], [ %57, %56 ]
  %65 = phi ptr [ %71, %63 ], [ %46, %56 ]
  %66 = phi i32 [ %70, %63 ], [ 0, %56 ]
  %67 = sext i8 %64 to i32
  %68 = mul nsw i32 %66, 10
  %69 = add i32 %68, -48
  %70 = add i32 %69, %67
  %71 = getelementptr inbounds i8, ptr %65, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !92
  %73 = sext i8 %72 to i64
  %74 = getelementptr inbounds i16, ptr %5, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !136
  %76 = and i16 %75, 2048
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %63, !llvm.loop !139

78:                                               ; preds = %63, %56
  %79 = phi i32 [ 0, %56 ], [ %70, %63 ]
  %80 = phi ptr [ %46, %56 ], [ %71, %63 ]
  store i32 %79, ptr %2, align 4, !tbaa !94
  %81 = load i8, ptr %80, align 1, !tbaa !92
  %82 = sext i8 %81 to i32
  br label %121

83:                                               ; preds = %14
  store i32 1, ptr %1, align 4, !tbaa !94
  %84 = getelementptr inbounds i8, ptr %0, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !92
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 -1, ptr %2, align 4, !tbaa !94
  br label %121

88:                                               ; preds = %83
  %89 = sext i8 %85 to i64
  %90 = getelementptr inbounds i16, ptr %5, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !136
  %92 = and i16 %91, 2048
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %88
  %95 = load i8, ptr %84, align 1, !tbaa !92
  %96 = sext i8 %95 to i64
  %97 = getelementptr inbounds i16, ptr %5, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !136
  %99 = and i16 %98, 2048
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %94, %101
  %102 = phi i8 [ %110, %101 ], [ %95, %94 ]
  %103 = phi ptr [ %109, %101 ], [ %84, %94 ]
  %104 = phi i32 [ %108, %101 ], [ 0, %94 ]
  %105 = sext i8 %102 to i32
  %106 = mul nsw i32 %104, 10
  %107 = add i32 %106, -48
  %108 = add i32 %107, %105
  %109 = getelementptr inbounds i8, ptr %103, i64 1
  %110 = load i8, ptr %109, align 1, !tbaa !92
  %111 = sext i8 %110 to i64
  %112 = getelementptr inbounds i16, ptr %5, i64 %111
  %113 = load i16, ptr %112, align 2, !tbaa !136
  %114 = and i16 %113, 2048
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %101, !llvm.loop !140

116:                                              ; preds = %101, %94
  %117 = phi i32 [ 0, %94 ], [ %108, %101 ]
  %118 = phi ptr [ %84, %94 ], [ %109, %101 ]
  store i32 %117, ptr %2, align 4, !tbaa !94
  %119 = load i8, ptr %118, align 1, !tbaa !92
  %120 = sext i8 %119 to i32
  br label %121

121:                                              ; preds = %88, %50, %3, %116, %87, %78, %49, %42
  %122 = phi i32 [ %82, %78 ], [ 0, %49 ], [ 0, %42 ], [ %120, %116 ], [ 0, %87 ], [ 1, %3 ], [ 1, %50 ], [ 0, %88 ]
  ret i32 %122
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @match_str_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !46 {
  store i8 94, ptr @rexpr, align 16, !tbaa !92
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi ptr [ %1, %2 ], [ %14, %12 ]
  %5 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %2 ], [ %13, %12 ]
  %6 = load i8, ptr %4, align 1, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  switch i8 %6, label %11 [
    i8 0, label %15
    i8 42, label %8
    i8 63, label %10
  ]

8:                                                ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  %9 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 42, ptr %7, align 1, !tbaa !92
  br label %12

10:                                               ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  br label %12

11:                                               ; preds = %3
  store i8 %6, ptr %5, align 1, !tbaa !92
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = phi ptr [ %9, %8 ], [ %7, %10 ], [ %7, %11 ]
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !141

15:                                               ; preds = %3
  store i8 36, ptr %5, align 1, !tbaa !92
  store i8 0, ptr %7, align 1, !tbaa !92
  %16 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #16
  %17 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %15 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !142
  %23 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %22, i64 noundef 0, ptr noundef null, i32 noundef 0) #16
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = or i32 %27, %25
  store i32 %28, ptr %26, align 4, !tbaa !52
  %29 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !143

32:                                               ; preds = %20, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @match_res_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !46 {
  store i8 94, ptr @rexpr, align 16, !tbaa !92
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi ptr [ %1, %2 ], [ %14, %12 ]
  %5 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %2 ], [ %13, %12 ]
  %6 = load i8, ptr %4, align 1, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  switch i8 %6, label %11 [
    i8 0, label %15
    i8 42, label %8
    i8 63, label %10
  ]

8:                                                ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  %9 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 42, ptr %7, align 1, !tbaa !92
  br label %12

10:                                               ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  br label %12

11:                                               ; preds = %3
  store i8 %6, ptr %5, align 1, !tbaa !92
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = phi ptr [ %9, %8 ], [ %7, %10 ], [ %7, %11 ]
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !141

15:                                               ; preds = %3
  store i8 36, ptr %5, align 1, !tbaa !92
  store i8 0, ptr %7, align 1, !tbaa !92
  %16 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #16
  %17 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %15, %49
  %21 = phi ptr [ %51, %49 ], [ %18, %15 ]
  %22 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !55
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 7
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %45, %32 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !56
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !144
  %39 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %38, i64 noundef 0, ptr noundef null, i32 noundef 0) #16
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !57
  %44 = or i32 %43, %41
  store i32 %44, ptr %42, align 8, !tbaa !57
  %45 = add nuw nsw i64 %33, 1
  %46 = load i32, ptr %27, align 8, !tbaa !55
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %32, label %49, !llvm.loop !145

49:                                               ; preds = %32, %26, %20
  %50 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %20, !llvm.loop !146

53:                                               ; preds = %49, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_atom_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !134 !PGOFuncName !147 {
  store i8 94, ptr @rexpr, align 16, !tbaa !92
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi ptr [ %1, %2 ], [ %14, %12 ]
  %5 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %2 ], [ %13, %12 ]
  %6 = load i8, ptr %4, align 1, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  switch i8 %6, label %11 [
    i8 0, label %15
    i8 42, label %8
    i8 63, label %10
  ], !prof !148

8:                                                ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  %9 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 42, ptr %7, align 1, !tbaa !92
  br label %12

10:                                               ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  br label %12

11:                                               ; preds = %3
  store i8 %6, ptr %5, align 1, !tbaa !92
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = phi ptr [ %9, %8 ], [ %7, %10 ], [ %7, %11 ]
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !141

15:                                               ; preds = %3
  store i8 36, ptr %5, align 1, !tbaa !92
  store i8 0, ptr %7, align 1, !tbaa !92
  %16 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #16
  %17 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20, !prof !81

20:                                               ; preds = %15, %67
  %21 = phi ptr [ %69, %67 ], [ %18, %15 ]
  %22 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %67, label %26, !prof !102

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !55
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %67, !prof !82

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 7
  br label %32

32:                                               ; preds = %30, %62
  %33 = phi i64 [ 0, %30 ], [ %63, %62 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !56
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !57
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41, !prof !149

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !59
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %62, !prof !83

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 17
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %58, %47 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.atom_t, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !150
  %52 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %51, i64 noundef 0, ptr noundef null, i32 noundef 0) #16
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.atom_t, ptr %49, i64 %48, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !61
  %57 = or i32 %56, %54
  store i32 %57, ptr %55, align 8, !tbaa !61
  %58 = add nuw nsw i64 %48, 1
  %59 = load i32, ptr %42, align 8, !tbaa !59
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %47, label %62, !prof !151, !llvm.loop !152

62:                                               ; preds = %47, %41, %32
  %63 = add nuw nsw i64 %33, 1
  %64 = load i32, ptr %27, align 8, !tbaa !55
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %32, label %67, !prof !153, !llvm.loop !154

67:                                               ; preds = %62, %26, %20
  %68 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %20, !prof !88, !llvm.loop !155

71:                                               ; preds = %67, %15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @atom_in_str_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !46 {
  %3 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.residue_t, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  store i8 94, ptr @rexpr, align 16, !tbaa !92
  br label %7

7:                                                ; preds = %16, %2
  %8 = phi ptr [ %1, %2 ], [ %18, %16 ]
  %9 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %2 ], [ %17, %16 ]
  %10 = load i8, ptr %8, align 1, !tbaa !92
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  switch i8 %10, label %15 [
    i8 0, label %19
    i8 42, label %12
    i8 63, label %14
  ]

12:                                               ; preds = %7
  store i8 46, ptr %9, align 1, !tbaa !92
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 42, ptr %11, align 1, !tbaa !92
  br label %16

14:                                               ; preds = %7
  store i8 46, ptr %9, align 1, !tbaa !92
  br label %16

15:                                               ; preds = %7
  store i8 %10, ptr %9, align 1, !tbaa !92
  br label %16

16:                                               ; preds = %15, %14, %12
  %17 = phi ptr [ %13, %12 ], [ %11, %14 ], [ %11, %15 ]
  %18 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !141

19:                                               ; preds = %7
  store i8 36, ptr %9, align 1, !tbaa !92
  store i8 0, ptr %11, align 1, !tbaa !92
  %20 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #16
  %21 = load ptr, ptr %6, align 8, !tbaa !142
  %22 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %21, i64 noundef 0, ptr noundef null, i32 noundef 0) #16
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @atom_in_res_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !46 {
  %3 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  store i8 94, ptr @rexpr, align 16, !tbaa !92
  br label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %1, %2 ], [ %16, %14 ]
  %7 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %2 ], [ %15, %14 ]
  %8 = load i8, ptr %6, align 1, !tbaa !92
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  switch i8 %8, label %13 [
    i8 0, label %17
    i8 42, label %10
    i8 63, label %12
  ]

10:                                               ; preds = %5
  store i8 46, ptr %7, align 1, !tbaa !92
  %11 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 42, ptr %9, align 1, !tbaa !92
  br label %14

12:                                               ; preds = %5
  store i8 46, ptr %7, align 1, !tbaa !92
  br label %14

13:                                               ; preds = %5
  store i8 %8, ptr %7, align 1, !tbaa !92
  br label %14

14:                                               ; preds = %13, %12, %10
  %15 = phi ptr [ %11, %10 ], [ %9, %12 ], [ %9, %13 ]
  %16 = getelementptr inbounds i8, ptr %6, i64 1
  br label %5, !llvm.loop !141

17:                                               ; preds = %5
  store i8 36, ptr %7, align 1, !tbaa !92
  store i8 0, ptr %9, align 1, !tbaa !92
  %18 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #16
  %19 = getelementptr inbounds %struct.residue_t, ptr %4, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %20, i64 noundef 0, ptr noundef null, i32 noundef 0) #16
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @atom_in_atom_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !46 {
  store i8 94, ptr @rexpr, align 16, !tbaa !92
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi ptr [ %1, %2 ], [ %14, %12 ]
  %5 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %2 ], [ %13, %12 ]
  %6 = load i8, ptr %4, align 1, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  switch i8 %6, label %11 [
    i8 0, label %15
    i8 42, label %8
    i8 63, label %10
  ]

8:                                                ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  %9 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 42, ptr %7, align 1, !tbaa !92
  br label %12

10:                                               ; preds = %3
  store i8 46, ptr %5, align 1, !tbaa !92
  br label %12

11:                                               ; preds = %3
  store i8 %6, ptr %5, align 1, !tbaa !92
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = phi ptr [ %9, %8 ], [ %7, %10 ], [ %7, %11 ]
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !141

15:                                               ; preds = %3
  store i8 36, ptr %5, align 1, !tbaa !92
  store i8 0, ptr %7, align 1, !tbaa !92
  %16 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #16
  %17 = load ptr, ptr %0, align 8, !tbaa !150
  %18 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %17, i64 noundef 0, ptr noundef null, i32 noundef 0) #16
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @select_atoms, ptr @clear_select, i64 4}
!36 = !{ptr @select_atoms, ptr @strchr, i64 2}
!37 = !{ptr @select_atoms, ptr @strlen, i64 2}
!38 = !{ptr @select_atoms, ptr @strncpy, i64 2}
!39 = !{ptr @select_atoms, ptr @strtok, i64 6}
!40 = !{ptr @select_atoms, ptr @is_pattern, i64 2}
!41 = !{ptr @select_atoms, ptr @match_atom_pat, i64 2}
!42 = !{ptr @is_pattern, ptr @__ctype_b_loc, i64 2}
!43 = !{ptr @match_atom_pat, ptr @regcomp, i64 2}
!44 = !{ptr @match_atom_pat, ptr @regexec, i64 38060}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{i32 0, i32 2}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !54, i64 12}
!53 = !{!"strand_t", !49, i64 0, !54, i64 8, !54, i64 12, !49, i64 16, !49, i64 24, !54, i64 32, !54, i64 36, !49, i64 40}
!54 = !{!"int", !50, i64 0}
!55 = !{!53, !54, i64 32}
!56 = !{!53, !49, i64 40}
!57 = !{!58, !54, i64 40}
!58 = !{!"residue_t", !49, i64 0, !54, i64 8, !54, i64 12, !54, i64 16, !49, i64 24, !49, i64 32, !54, i64 40, !54, i64 44, !54, i64 48, !49, i64 56, !49, i64 64, !54, i64 72, !49, i64 80, !54, i64 88, !49, i64 96, !54, i64 104, !49, i64 112, !49, i64 120}
!59 = !{!58, !54, i64 104}
!60 = !{!58, !49, i64 120}
!61 = !{!62, !54, i64 16}
!62 = !{!"atom_t", !49, i64 0, !49, i64 8, !54, i64 16, !54, i64 20, !50, i64 24, !49, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !49, i64 96, !54, i64 104, !63, i64 112, !63, i64 120, !54, i64 128, !54, i64 132, !49, i64 136, !50, i64 144, !63, i64 168}
!63 = !{!"double", !50, i64 0}
!64 = !{!63, !63, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !66, !67}
!69 = distinct !{!69, !66, !67}
!70 = !{!"function_entry_count", i64 5}
!71 = !{!"branch_weights", i32 3, i32 2}
!72 = !{!"branch_weights", i32 1, i32 191}
!73 = !{!"branch_weights", i32 191, i32 1}
!74 = !{!"branch_weights", i32 3605, i32 1}
!75 = !{!"branch_weights", i32 3605, i32 53485}
!76 = distinct !{!76, !66, !67}
!77 = !{!"branch_weights", i32 191, i32 115201}
!78 = distinct !{!78, !66, !67}
!79 = !{!"branch_weights", i32 191, i32 193}
!80 = distinct !{!80, !66, !67}
!81 = !{!"branch_weights", i32 1, i32 127}
!82 = !{!"branch_weights", i32 127, i32 1}
!83 = !{!"branch_weights", i32 2403, i32 1}
!84 = !{!"branch_weights", i32 2403, i32 35657}
!85 = distinct !{!85, !66, !67}
!86 = !{!"branch_weights", i32 127, i32 76801}
!87 = distinct !{!87, !66, !67}
!88 = !{!"branch_weights", i32 127, i32 129}
!89 = distinct !{!89, !66, !67}
!90 = !{!"branch_weights", i32 2, i32 0}
!91 = !{!"branch_weights", i32 0, i32 2}
!92 = !{!50, !50, i64 0}
!93 = !{i32 -128, i32 128}
!94 = !{!54, !54, i64 0}
!95 = !{!96, !54, i64 96}
!96 = !{!"molecule_t", !50, i64 0, !54, i64 96, !49, i64 104, !54, i64 112, !54, i64 116, !54, i64 120, !49, i64 128}
!97 = distinct !{!97, !66, !67}
!98 = distinct !{!98, !66, !67}
!99 = distinct !{!99, !66, !67}
!100 = distinct !{!100, !66, !67}
!101 = distinct !{!101, !66, !67}
!102 = !{!"branch_weights", i32 0, i32 4}
!103 = !{!"branch_weights", i32 1, i32 0}
!104 = distinct !{!104, !66, !67}
!105 = distinct !{!105, !66, !67}
!106 = distinct !{!106, !66, !67}
!107 = distinct !{!107, !66, !67}
!108 = distinct !{!108, !66, !67}
!109 = distinct !{!109, !66, !67}
!110 = distinct !{!110, !66, !67}
!111 = distinct !{!111, !66, !67}
!112 = !{!"function_entry_count", i64 4}
!113 = !{!"select_atoms.c;clear_select"}
!114 = !{!"branch_weights", i32 4807, i32 1}
!115 = !{!"branch_weights", i32 4807, i32 71313}
!116 = distinct !{!116, !66, !67}
!117 = distinct !{!117, !66, !67}
!118 = distinct !{!118, !66, !67}
!119 = !{!62, !49, i64 56}
!120 = !{!58, !49, i64 56}
!121 = !{!53, !49, i64 16}
!122 = distinct !{!122, !66, !67}
!123 = distinct !{!123, !66, !67}
!124 = distinct !{!124, !66, !67}
!125 = distinct !{!125, !66, !67}
!126 = distinct !{!126, !66, !67}
!127 = distinct !{!127, !66, !67}
!128 = distinct !{!128, !66, !67}
!129 = distinct !{!129, !66, !67}
!130 = distinct !{!130, !66, !67}
!131 = distinct !{!131, !66, !67}
!132 = distinct !{!132, !66, !67}
!133 = distinct !{!133, !66, !67}
!134 = !{!"function_entry_count", i64 2}
!135 = !{!"select_atoms.c;is_pattern"}
!136 = !{!137, !137, i64 0}
!137 = !{!"short", !50, i64 0}
!138 = distinct !{!138, !66, !67}
!139 = distinct !{!139, !66, !67}
!140 = distinct !{!140, !66, !67}
!141 = distinct !{!141, !66, !67}
!142 = !{!53, !49, i64 0}
!143 = distinct !{!143, !66, !67}
!144 = !{!58, !49, i64 24}
!145 = distinct !{!145, !66, !67}
!146 = distinct !{!146, !66, !67}
!147 = !{!"select_atoms.c;match_atom_pat"}
!148 = !{!"branch_weights", i32 8, i32 2, i32 0, i32 0}
!149 = !{!"branch_weights", i32 0, i32 2404}
!150 = !{!62, !49, i64 0}
!151 = !{!"branch_weights", i32 35657, i32 2403}
!152 = distinct !{!152, !66, !67}
!153 = !{!"branch_weights", i32 76801, i32 127}
!154 = distinct !{!154, !66, !67}
!155 = distinct !{!155, !66, !67}
