; ModuleID = 'blender/source/blender/makesdna/intern/dna_genfile.c'
source_filename = "blender/source/blender/makesdna/intern/dna_genfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDNA = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"sdna\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sdna_data\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"compflags\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"blocktype\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ipowin\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"reconstruct\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sdnanames\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"[3]\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Cvi\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gravity[3]\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"sdnatypes\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bScreen\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sdnastrcs\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"ListBase\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"ClothSimSettings\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"init_structDNA gh\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"const char\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"uchar\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"ulong\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@str = private unnamed_addr constant [24 x i8] c"NAME error in SDNA file\00", align 1
@str.43 = private unnamed_addr constant [24 x i8] c"TYPE error in SDNA file\00", align 1
@str.44 = private unnamed_addr constant [24 x i8] c"TLEN error in SDNA file\00", align 1
@str.45 = private unnamed_addr constant [24 x i8] c"STRC error in SDNA file\00", align 1
@str.46 = private unnamed_addr constant [57 x i8] c"ListBase struct error! Needs it to calculate pointerize.\00", align 1
@str.47 = private unnamed_addr constant [25 x i8] c"error: file without SDNA\00", align 1
@str.48 = private unnamed_addr constant [28 x i8] c"errpr: illegal pointersize!\00", align 1
@switch.table.DNA_elem_type_size = private unnamed_addr constant [12 x i32] [i32 1, i32 1, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8], align 4

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define dso_local i32 @DNA_elem_array_size(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi i64 [ %20, %17 ], [ 0, %1 ]
  %4 = phi i32 [ %18, %17 ], [ 1, %1 ]
  %5 = phi ptr [ %19, %17 ], [ null, %1 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %3
  %7 = load i8, ptr %6, align 1, !tbaa !34
  switch i8 %7, label %10 [
    i8 0, label %21
    i8 91, label %8
  ]

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %6, i64 1
  br label %17

10:                                               ; preds = %2
  %11 = icmp eq i8 %7, 93
  %12 = icmp ne ptr %5, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call i32 @atoi(ptr nocapture noundef nonnull %5) #19
  %16 = mul nsw i32 %15, %4
  br label %17

17:                                               ; preds = %8, %14, %10
  %18 = phi i32 [ %4, %8 ], [ %16, %14 ], [ %4, %10 ]
  %19 = phi ptr [ %9, %8 ], [ %5, %14 ], [ %5, %10 ]
  %20 = add nuw i64 %3, 1
  br label %2, !llvm.loop !37

21:                                               ; preds = %2
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DNA_sdna_free(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  tail call void %2(ptr noundef %3) #20
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void %4(ptr noundef %6) #20
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  tail call void %7(ptr noundef %9) #20
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void %10(ptr noundef %12) #20
  %13 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  tail call void @BLI_ghash_free(ptr noundef %14, ptr noundef null, ptr noundef null) #20
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %15(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DNA_struct_find_nr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = load i16, ptr %13, align 2, !tbaa !50
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %1) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %8, %2
  %23 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = tail call ptr @BLI_ghash_lookup(ptr noundef %24, ptr noundef %1) #20
  %26 = ptrtoint ptr %25 to i64
  %27 = trunc i64 %26 to i32
  %28 = add i32 %27, -1
  br label %29

29:                                               ; preds = %8, %22
  %30 = phi i32 [ %28, %22 ], [ %4, %8 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DNA_sdna_from_data(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %5 = tail call ptr %4(i64 noundef 80, ptr noundef nonnull @.str) #20
  %6 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 11
  store i32 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !52
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %9 = sext i32 %1 to i64
  %10 = tail call ptr %8(i64 noundef %9, ptr noundef nonnull @.str.1) #20
  store ptr %10, ptr %5, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %0, i64 %9, i1 false)
  tail call fastcc void @init_structDNA(ptr noundef nonnull %5, i8 noundef zeroext %2) #21
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_structDNA(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = load i32, ptr %3, align 4, !tbaa !54
  %5 = icmp eq i32 %4, 1095648339
  br i1 %5, label %6, label %265

6:                                                ; preds = %2
  %7 = getelementptr inbounds i32, ptr %3, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = icmp eq i32 %8, 1162690894
  br i1 %9, label %10, label %262

10:                                               ; preds = %6
  %11 = getelementptr inbounds i32, ptr %3, i64 2
  %12 = icmp eq i8 %1, 0
  %13 = load i32, ptr %11, align 4, !tbaa !54
  br i1 %12, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @le_int(i32 noundef %13) #21
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i32 [ %15, %14 ], [ %13, %10 ]
  %18 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds i32, ptr %3, i64 3
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %21 = sext i32 %17 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.9) #20
  %24 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !44
  %25 = load i32, ptr %18, align 4, !tbaa !55
  %26 = sext i32 %25 to i64
  %27 = icmp sgt i32 %25, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %16, %57
  %29 = phi ptr [ %56, %57 ], [ %19, %16 ]
  %30 = phi i64 [ %58, %57 ], [ 0, %16 ]
  %31 = phi i32 [ %51, %57 ], [ -1, %16 ]
  %32 = load ptr, ptr %24, align 8, !tbaa !44
  %33 = getelementptr inbounds ptr, ptr %32, i64 %30
  store ptr %29, ptr %33, align 8, !tbaa !39
  %34 = load i8, ptr %29, align 1, !tbaa !34
  %35 = icmp eq i8 %34, 91
  br i1 %35, label %36, label %50

36:                                               ; preds = %28
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.11) #19
  %38 = icmp eq i32 %37, 0
  %39 = icmp ne i64 %30, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load ptr, ptr %24, align 8, !tbaa !44
  %43 = getelementptr ptr, ptr %42, i64 %30
  %44 = getelementptr ptr, ptr %43, i64 -1
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(4) @.str.12) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  store ptr @.str.13, ptr %43, align 8, !tbaa !39
  %49 = trunc i64 %30 to i32
  br label %50

50:                                               ; preds = %41, %48, %36, %28
  %51 = phi i32 [ %49, %48 ], [ %31, %41 ], [ %31, %36 ], [ %31, %28 ]
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi ptr [ %29, %50 ], [ %56, %52 ]
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds i8, ptr %53, i64 1
  br i1 %55, label %57, label %52, !llvm.loop !56

57:                                               ; preds = %52
  %58 = add nuw nsw i64 %30, 1
  %59 = icmp eq i64 %58, %26
  br i1 %59, label %60, label %28, !llvm.loop !57

60:                                               ; preds = %57, %16
  %61 = phi i32 [ -1, %16 ], [ %51, %57 ]
  %62 = phi ptr [ %19, %16 ], [ %56, %57 ]
  %63 = ptrtoint ptr %62 to i64
  %64 = add nsw i64 %63, 3
  %65 = and i64 %64, -4
  %66 = inttoptr i64 %65 to ptr
  %67 = load i32, ptr %66, align 4, !tbaa !54
  %68 = icmp eq i32 %67, 1162893652
  br i1 %68, label %69, label %262

69:                                               ; preds = %60
  %70 = getelementptr inbounds i32, ptr %66, i64 1
  %71 = load i32, ptr %70, align 4, !tbaa !54
  br i1 %12, label %74, label %72

72:                                               ; preds = %69
  %73 = tail call fastcc i32 @le_int(i32 noundef %71) #21
  br label %74

74:                                               ; preds = %69, %72
  %75 = phi i32 [ %73, %72 ], [ %71, %69 ]
  %76 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 5
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds i32, ptr %66, i64 2
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %79 = sext i32 %75 to i64
  %80 = shl nsw i64 %79, 3
  %81 = tail call ptr %78(i64 noundef %80, ptr noundef nonnull @.str.15) #20
  %82 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  store ptr %81, ptr %82, align 8, !tbaa !45
  %83 = load i32, ptr %76, align 4, !tbaa !58
  %84 = sext i32 %83 to i64
  %85 = icmp sgt i32 %83, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %74, %106
  %87 = phi ptr [ %105, %106 ], [ %77, %74 ]
  %88 = phi i64 [ %107, %106 ], [ 0, %74 ]
  %89 = load ptr, ptr %82, align 8, !tbaa !45
  %90 = getelementptr inbounds ptr, ptr %89, i64 %88
  store ptr %87, ptr %90, align 8, !tbaa !39
  %91 = load i8, ptr %87, align 1, !tbaa !34
  %92 = icmp eq i8 %91, 98
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.17, ptr noundef nonnull dereferenceable(1) %87) #19
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %87, i64 1
  %98 = load ptr, ptr %82, align 8, !tbaa !45
  %99 = getelementptr inbounds ptr, ptr %98, i64 %88
  store ptr %97, ptr %99, align 8, !tbaa !39
  br label %100

100:                                              ; preds = %93, %96, %86
  br label %101

101:                                              ; preds = %100, %101
  %102 = phi ptr [ %105, %101 ], [ %87, %100 ]
  %103 = load i8, ptr %102, align 1, !tbaa !34
  %104 = icmp eq i8 %103, 0
  %105 = getelementptr inbounds i8, ptr %102, i64 1
  br i1 %104, label %106, label %101, !llvm.loop !59

106:                                              ; preds = %101
  %107 = add nuw nsw i64 %88, 1
  %108 = icmp eq i64 %107, %84
  br i1 %108, label %109, label %86, !llvm.loop !60

109:                                              ; preds = %106, %74
  %110 = phi ptr [ %77, %74 ], [ %105, %106 ]
  %111 = ptrtoint ptr %110 to i64
  %112 = add nsw i64 %111, 3
  %113 = and i64 %112, -4
  %114 = inttoptr i64 %113 to ptr
  %115 = load i32, ptr %114, align 4, !tbaa !54
  %116 = icmp eq i32 %115, 1313164372
  br i1 %116, label %117, label %262

117:                                              ; preds = %109
  %118 = getelementptr inbounds i32, ptr %114, i64 1
  %119 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 7
  store ptr %118, ptr %119, align 8, !tbaa !61
  br i1 %12, label %138, label %120

120:                                              ; preds = %117
  %121 = trunc i32 %83 to i16
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120, %123
  %124 = phi ptr [ %129, %123 ], [ %118, %120 ]
  %125 = phi i16 [ %126, %123 ], [ %121, %120 ]
  %126 = add i16 %125, -1
  %127 = load i16, ptr %124, align 2, !tbaa !50
  %128 = tail call fastcc signext i16 @le_short(i16 noundef signext %127) #21
  store i16 %128, ptr %124, align 2, !tbaa !50
  %129 = getelementptr inbounds i16, ptr %124, i64 1
  %130 = icmp eq i16 %126, 0
  br i1 %130, label %131, label %123, !llvm.loop !62

131:                                              ; preds = %123, %120
  %132 = getelementptr inbounds i16, ptr %118, i64 %84
  %133 = and i32 %83, 1
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds i16, ptr %132, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !54
  %137 = icmp eq i32 %136, 1129469011
  br i1 %137, label %148, label %262

138:                                              ; preds = %117
  %139 = getelementptr inbounds i16, ptr %118, i64 %84
  %140 = and i32 %83, 1
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds i16, ptr %139, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !54
  %144 = icmp eq i32 %143, 1129469011
  br i1 %144, label %145, label %262

145:                                              ; preds = %138
  %146 = getelementptr inbounds i32, ptr %142, i64 1
  %147 = load i32, ptr %146, align 4, !tbaa !54
  br label %152

148:                                              ; preds = %131
  %149 = getelementptr inbounds i32, ptr %135, i64 1
  %150 = load i32, ptr %149, align 4, !tbaa !54
  %151 = tail call fastcc i32 @le_int(i32 noundef %150) #21
  br label %152

152:                                              ; preds = %145, %148
  %153 = phi i32 [ %147, %145 ], [ %151, %148 ]
  %154 = phi ptr [ %142, %145 ], [ %135, %148 ]
  %155 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  store i32 %153, ptr %155, align 8, !tbaa !49
  %156 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %157 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %158 = sext i32 %153 to i64
  %159 = shl nsw i64 %158, 3
  %160 = tail call ptr %156(i64 noundef %159, ptr noundef nonnull @.str.21) #20
  %161 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  store ptr %160, ptr %161, align 8, !tbaa !46
  %162 = load i32, ptr %157, align 8, !tbaa !49
  %163 = sext i32 %162 to i64
  %164 = icmp sgt i32 %162, 0
  br i1 %164, label %165, label %204

165:                                              ; preds = %152
  %166 = getelementptr inbounds i32, ptr %154, i64 2
  br label %167

167:                                              ; preds = %165, %200
  %168 = phi ptr [ %201, %200 ], [ %166, %165 ]
  %169 = phi i64 [ %202, %200 ], [ 0, %165 ]
  %170 = load ptr, ptr %161, align 8, !tbaa !46
  %171 = getelementptr inbounds ptr, ptr %170, i64 %169
  store ptr %168, ptr %171, align 8, !tbaa !39
  br i1 %12, label %192, label %172

172:                                              ; preds = %167
  %173 = load i16, ptr %168, align 2, !tbaa !50
  %174 = tail call fastcc signext i16 @le_short(i16 noundef signext %173) #21
  store i16 %174, ptr %168, align 2, !tbaa !50
  %175 = getelementptr inbounds i16, ptr %168, i64 1
  %176 = load i16, ptr %175, align 2, !tbaa !50
  %177 = tail call fastcc signext i16 @le_short(i16 noundef signext %176) #21
  store i16 %177, ptr %175, align 2, !tbaa !50
  %178 = getelementptr inbounds i16, ptr %168, i64 2
  %179 = icmp eq i16 %177, 0
  br i1 %179, label %200, label %180

180:                                              ; preds = %172, %180
  %181 = phi ptr [ %190, %180 ], [ %178, %172 ]
  %182 = phi i16 [ %184, %180 ], [ %177, %172 ]
  %183 = phi ptr [ %181, %180 ], [ %168, %172 ]
  %184 = add i16 %182, -1
  %185 = load i16, ptr %181, align 2, !tbaa !50
  %186 = tail call fastcc signext i16 @le_short(i16 noundef signext %185) #21
  store i16 %186, ptr %181, align 2, !tbaa !50
  %187 = getelementptr inbounds i16, ptr %183, i64 3
  %188 = load i16, ptr %187, align 2, !tbaa !50
  %189 = tail call fastcc signext i16 @le_short(i16 noundef signext %188) #21
  store i16 %189, ptr %187, align 2, !tbaa !50
  %190 = getelementptr inbounds i16, ptr %181, i64 2
  %191 = icmp eq i16 %184, 0
  br i1 %191, label %200, label %180, !llvm.loop !63

192:                                              ; preds = %167
  %193 = getelementptr inbounds i16, ptr %168, i64 1
  %194 = load i16, ptr %193, align 2, !tbaa !50
  %195 = sext i16 %194 to i32
  %196 = shl nsw i32 %195, 1
  %197 = add nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i16, ptr %168, i64 %198
  br label %200

200:                                              ; preds = %180, %172, %192
  %201 = phi ptr [ %199, %192 ], [ %178, %172 ], [ %190, %180 ]
  %202 = add nuw nsw i64 %169, 1
  %203 = icmp eq i64 %202, %163
  br i1 %203, label %204, label %167, !llvm.loop !64

204:                                              ; preds = %200, %152
  %205 = tail call fastcc ptr @findstruct_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #21
  %206 = load ptr, ptr %119, align 8, !tbaa !61
  %207 = load i16, ptr %205, align 2, !tbaa !50
  %208 = sext i16 %207 to i64
  %209 = getelementptr inbounds i16, ptr %206, i64 %208
  %210 = load i16, ptr %209, align 2, !tbaa !50
  %211 = sdiv i16 %210, 2
  %212 = sext i16 %211 to i32
  %213 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  store i32 %212, ptr %213, align 8, !tbaa !65
  %214 = getelementptr inbounds i16, ptr %205, i64 1
  %215 = load i16, ptr %214, align 2, !tbaa !50
  %216 = icmp eq i16 %215, 2
  br i1 %216, label %217, label %218

217:                                              ; preds = %204
  switch i16 %210, label %218 [
    i16 17, label %220
    i16 16, label %220
    i16 9, label %220
    i16 8, label %220
  ]

218:                                              ; preds = %217, %204
  %219 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  tail call void @exit(i32 noundef 1) #22
  unreachable

220:                                              ; preds = %217, %217, %217, %217
  %221 = icmp sgt i32 %61, -1
  %222 = and i1 %221, %164
  br i1 %222, label %223, label %241

223:                                              ; preds = %220
  %224 = load ptr, ptr %161, align 8, !tbaa !46
  %225 = load ptr, ptr %82, align 8, !tbaa !45
  br label %226

226:                                              ; preds = %223, %238
  %227 = phi i64 [ 0, %223 ], [ %239, %238 ]
  %228 = getelementptr inbounds ptr, ptr %224, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !39
  %230 = load i16, ptr %229, align 2, !tbaa !50
  %231 = sext i16 %230 to i64
  %232 = getelementptr inbounds ptr, ptr %225, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !39
  %234 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %233, ptr noundef nonnull dereferenceable(17) @.str.25) #19
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %226
  %237 = getelementptr inbounds i16, ptr %229, i64 10
  store i16 9, ptr %237, align 2, !tbaa !50
  br label %238

238:                                              ; preds = %226, %236
  %239 = add nuw nsw i64 %227, 1
  %240 = icmp eq i64 %239, %163
  br i1 %240, label %241, label %226, !llvm.loop !66

241:                                              ; preds = %238, %220
  %242 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.26, i32 noundef %162) #20
  %243 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  store ptr %242, ptr %243, align 8, !tbaa !47
  %244 = load i32, ptr %157, align 8, !tbaa !49
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %241, %246
  %247 = phi i64 [ %257, %246 ], [ 0, %241 ]
  %248 = load ptr, ptr %161, align 8, !tbaa !46
  %249 = getelementptr inbounds ptr, ptr %248, i64 %247
  %250 = load ptr, ptr %249, align 8, !tbaa !39
  %251 = load ptr, ptr %243, align 8, !tbaa !47
  %252 = load ptr, ptr %82, align 8, !tbaa !45
  %253 = load i16, ptr %250, align 2, !tbaa !50
  %254 = sext i16 %253 to i64
  %255 = getelementptr inbounds ptr, ptr %252, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !39
  %257 = add nuw nsw i64 %247, 1
  %258 = inttoptr i64 %257 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %251, ptr noundef %256, ptr noundef nonnull %258) #20
  %259 = load i32, ptr %157, align 8, !tbaa !49
  %260 = sext i32 %259 to i64
  %261 = icmp slt i64 %257, %260
  br i1 %261, label %246, label %265, !llvm.loop !67

262:                                              ; preds = %131, %138, %109, %60, %6
  %263 = phi ptr [ @str, %6 ], [ @str.43, %60 ], [ @str.44, %109 ], [ @str.45, %138 ], [ @str.45, %131 ]
  %264 = tail call i32 @puts(ptr nonnull dereferenceable(1) %263)
  br label %265

265:                                              ; preds = %246, %262, %241, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DNA_struct_get_compareflags(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47)
  br label %127

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %10 = sext i32 %4 to i64
  %11 = tail call ptr %9(i64 noundef %10, ptr noundef nonnull @.str.3) #20
  %12 = load i32, ptr %3, align 8, !tbaa !49
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %110

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %20 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 3
  %21 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 4
  br label %24

24:                                               ; preds = %14, %105
  %25 = phi i64 [ 0, %14 ], [ %106, %105 ]
  %26 = load ptr, ptr %15, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = load ptr, ptr %16, align 8, !tbaa !45
  %30 = load i16, ptr %28, align 2, !tbaa !50
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = tail call fastcc ptr @findstruct_name(ptr noundef %1, ptr noundef %33) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %105, label %36

36:                                               ; preds = %24
  %37 = getelementptr inbounds i8, ptr %11, i64 %25
  store i8 2, ptr %37, align 1, !tbaa !34
  %38 = getelementptr inbounds i16, ptr %34, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !50
  %40 = getelementptr inbounds i16, ptr %28, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !50
  %42 = icmp eq i16 %39, %41
  br i1 %42, label %43, label %105

43:                                               ; preds = %36
  %44 = sext i16 %39 to i32
  %45 = load ptr, ptr %17, align 8, !tbaa !61
  %46 = load i16, ptr %34, align 2, !tbaa !50
  %47 = sext i16 %46 to i64
  %48 = getelementptr inbounds i16, ptr %45, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !50
  %50 = load ptr, ptr %18, align 8, !tbaa !61
  %51 = load i16, ptr %28, align 2, !tbaa !50
  %52 = sext i16 %51 to i64
  %53 = getelementptr inbounds i16, ptr %50, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !50
  %55 = icmp eq i16 %49, %54
  br i1 %55, label %56, label %105

56:                                               ; preds = %43
  %57 = icmp sgt i16 %39, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %56
  %59 = load ptr, ptr %19, align 8, !tbaa !45
  %60 = load ptr, ptr %16, align 8, !tbaa !45
  br label %61

61:                                               ; preds = %58, %99
  %62 = phi ptr [ %34, %58 ], [ %65, %99 ]
  %63 = phi ptr [ %28, %58 ], [ %66, %99 ]
  %64 = phi i32 [ %44, %58 ], [ %100, %99 ]
  %65 = getelementptr inbounds i16, ptr %62, i64 2
  %66 = getelementptr inbounds i16, ptr %63, i64 2
  %67 = load i16, ptr %65, align 2, !tbaa !50
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %59, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !39
  %71 = load i16, ptr %66, align 2, !tbaa !50
  %72 = sext i16 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %60, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !39
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) %74) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %61
  %78 = load ptr, ptr %20, align 8, !tbaa !44
  %79 = getelementptr inbounds i16, ptr %62, i64 3
  %80 = load i16, ptr %79, align 2, !tbaa !50
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %78, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !39
  %84 = load ptr, ptr %21, align 8, !tbaa !44
  %85 = getelementptr inbounds i16, ptr %63, i64 3
  %86 = load i16, ptr %85, align 2, !tbaa !50
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %84, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !39
  %90 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) %89) #19
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %77
  %93 = tail call fastcc zeroext i8 @ispointer(ptr noundef %83) #21, !range !68
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %22, align 8, !tbaa !65
  %97 = load i32, ptr %23, align 8, !tbaa !65
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95, %92
  %100 = add nsw i32 %64, -1
  %101 = icmp sgt i32 %64, 1
  br i1 %101, label %61, label %104, !llvm.loop !69

102:                                              ; preds = %56
  %103 = icmp eq i16 %39, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %102
  store i8 1, ptr %37, align 1, !tbaa !34
  br label %105

105:                                              ; preds = %61, %77, %95, %24, %43, %104, %102, %36
  %106 = add nuw nsw i64 %25, 1
  %107 = load i32, ptr %3, align 8, !tbaa !49
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %24, label %110, !llvm.loop !70

110:                                              ; preds = %105, %8
  store i8 1, ptr %11, align 1, !tbaa !34
  %111 = load i32, ptr %3, align 8, !tbaa !49
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110, %122
  %114 = phi i32 [ %123, %122 ], [ %111, %110 ]
  %115 = phi i64 [ %124, %122 ], [ 0, %110 ]
  %116 = getelementptr inbounds i8, ptr %11, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !34
  %118 = icmp eq i8 %117, 2
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = trunc i64 %115 to i32
  tail call fastcc void @recurs_test_compflags(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %120) #21
  %121 = load i32, ptr %3, align 8, !tbaa !49
  br label %122

122:                                              ; preds = %113, %119
  %123 = phi i32 [ %114, %113 ], [ %121, %119 ]
  %124 = add nuw nsw i64 %115, 1
  %125 = sext i32 %123 to i64
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %113, label %127, !llvm.loop !71

127:                                              ; preds = %122, %110, %6
  %128 = phi ptr [ null, %6 ], [ %11, %110 ], [ %11, %122 ]
  ret ptr %128
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @findstruct_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = zext nneg i32 %4 to i64
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %11
  br i1 %14, label %25, label %15, !llvm.loop !73

15:                                               ; preds = %6, %12
  %16 = phi i64 [ 0, %6 ], [ %13, %12 ]
  %17 = getelementptr inbounds ptr, ptr %8, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = load i16, ptr %18, align 2, !tbaa !50
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %10, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %1) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %12

25:                                               ; preds = %15, %12, %2
  %26 = phi ptr [ null, %2 ], [ null, %12 ], [ %18, %15 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ispointer(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !74 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  switch i8 %2, label %8 [
    i8 42, label %9
    i8 40, label %3
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 42
  %7 = zext i1 %6 to i8
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8, %3
  %10 = phi i8 [ 1, %1 ], [ %7, %3 ], [ 0, %8 ]
  ret i8 %10
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @recurs_test_compflags(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !75 {
  %4 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %15 = zext i32 %2 to i64
  br label %16

16:                                               ; preds = %13, %55
  %17 = phi i32 [ %11, %13 ], [ %56, %55 ]
  %18 = phi i64 [ 0, %13 ], [ %57, %55 ]
  %19 = icmp eq i64 %18, %15
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %1, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = getelementptr inbounds i16, ptr %27, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !50
  %30 = sext i16 %29 to i32
  %31 = icmp sgt i16 %29, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = trunc i64 %18 to i32
  br label %34

34:                                               ; preds = %32, %50
  %35 = phi ptr [ %37, %50 ], [ %27, %32 ]
  %36 = phi i32 [ %51, %50 ], [ 0, %32 ]
  %37 = getelementptr inbounds i16, ptr %35, i64 2
  %38 = load i16, ptr %37, align 2, !tbaa !50
  %39 = icmp eq i16 %38, %9
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load ptr, ptr %14, align 8, !tbaa !44
  %42 = getelementptr inbounds i16, ptr %35, i64 3
  %43 = load i16, ptr %42, align 2, !tbaa !50
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %41, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !39
  %47 = tail call fastcc zeroext i8 @ispointer(ptr noundef %46) #21, !range !68
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i8 2, ptr %21, align 1, !tbaa !34
  tail call fastcc void @recurs_test_compflags(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %33) #21
  br label %50

50:                                               ; preds = %34, %49, %40
  %51 = add nuw nsw i32 %36, 1
  %52 = icmp eq i32 %51, %30
  br i1 %52, label %53, label %34, !llvm.loop !76

53:                                               ; preds = %50
  %54 = load i32, ptr %10, align 8, !tbaa !49
  br label %55

55:                                               ; preds = %53, %24, %16, %20
  %56 = phi i32 [ %54, %53 ], [ %17, %24 ], [ %17, %16 ], [ %17, %20 ]
  %57 = add nuw nsw i64 %18, 1
  %58 = sext i32 %56 to i64
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %16, label %60, !llvm.loop !77

60:                                               ; preds = %55, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DNA_struct_switch_endian(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %129, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !50
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i16 %14, 0
  br i1 %16, label %17, label %129

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  br label %21

21:                                               ; preds = %17, %124
  %22 = phi i32 [ 0, %17 ], [ %127, %124 ]
  %23 = phi ptr [ %2, %17 ], [ %126, %124 ]
  %24 = phi ptr [ %12, %17 ], [ %25, %124 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 2
  %26 = load ptr, ptr %18, align 8, !tbaa !45
  %27 = load i16, ptr %25, align 2, !tbaa !50
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = load ptr, ptr %19, align 8, !tbaa !44
  %32 = getelementptr inbounds i16, ptr %24, i64 3
  %33 = load i16, ptr %32, align 2, !tbaa !50
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %31, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = tail call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %27, i16 noundef signext %33) #21
  %38 = icmp slt i16 %27, %9
  br i1 %38, label %56, label %39

39:                                               ; preds = %21
  %40 = tail call fastcc zeroext i8 @ispointer(ptr noundef %36) #21, !range !68
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @find_elem(ptr noundef nonnull %0, ptr noundef %30, ptr noundef %36, ptr noundef %12, ptr noundef %2, ptr noundef null) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %124, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @DNA_struct_find_nr(ptr noundef nonnull %0, ptr noundef %30) #21
  %47 = tail call i32 @DNA_elem_array_size(ptr noundef %36) #21
  %48 = sdiv i32 %37, %47
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %45, %50
  %51 = phi ptr [ %43, %45 ], [ %54, %50 ]
  %52 = phi i32 [ %47, %45 ], [ %53, %50 ]
  %53 = add nsw i32 %52, -1
  tail call void @DNA_struct_switch_endian(ptr noundef %0, i32 noundef %46, ptr noundef %51) #21
  %54 = getelementptr inbounds i8, ptr %51, i64 %49
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %124, label %50, !llvm.loop !78

56:                                               ; preds = %39, %21
  %57 = tail call fastcc zeroext i8 @ispointer(ptr noundef %36) #21, !range !68
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %20, align 8, !tbaa !65
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %124

62:                                               ; preds = %59
  %63 = tail call i32 @DNA_elem_array_size(ptr noundef %36) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %124, label %65

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %71, %65 ], [ %23, %62 ]
  %67 = phi i32 [ %68, %65 ], [ %63, %62 ]
  %68 = add nsw i32 %67, -1
  %69 = load <8 x i8>, ptr %66, align 1, !tbaa !34
  %70 = shufflevector <8 x i8> %69, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %70, ptr %66, align 1, !tbaa !34
  %71 = getelementptr inbounds i8, ptr %66, i64 8
  %72 = icmp eq i32 %68, 0
  br i1 %72, label %124, label %65, !llvm.loop !79

73:                                               ; preds = %56
  switch i16 %27, label %124 [
    i16 2, label %74
    i16 3, label %74
    i16 4, label %102
    i16 5, label %102
    i16 6, label %102
    i16 7, label %102
    i16 10, label %113
    i16 11, label %113
  ]

74:                                               ; preds = %73, %73
  %75 = load i8, ptr %36, align 1, !tbaa !34
  switch i8 %75, label %90 [
    i8 98, label %76
    i8 105, label %83
  ]

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8, ptr %36, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = icmp eq i8 %78, 108
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(10) @.str.4) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %124, label %90

83:                                               ; preds = %74
  %84 = getelementptr inbounds i8, ptr %36, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = icmp eq i8 %85, 112
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(7) @.str.5) #19
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %124, label %90

90:                                               ; preds = %74, %76, %80, %83, %87
  %91 = tail call i32 @DNA_elem_array_size(ptr noundef nonnull %36) #21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %124, label %93

93:                                               ; preds = %90, %93
  %94 = phi ptr [ %100, %93 ], [ %23, %90 ]
  %95 = phi i32 [ %96, %93 ], [ %91, %90 ]
  %96 = add nsw i32 %95, -1
  %97 = load i8, ptr %94, align 1, !tbaa !34
  %98 = getelementptr inbounds i8, ptr %94, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !34
  store i8 %99, ptr %94, align 1, !tbaa !34
  store i8 %97, ptr %98, align 1, !tbaa !34
  %100 = getelementptr inbounds i8, ptr %94, i64 2
  %101 = icmp eq i32 %96, 0
  br i1 %101, label %124, label %93, !llvm.loop !80

102:                                              ; preds = %73, %73, %73, %73
  %103 = tail call i32 @DNA_elem_array_size(ptr noundef %36) #21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %124, label %105

105:                                              ; preds = %102, %105
  %106 = phi ptr [ %111, %105 ], [ %23, %102 ]
  %107 = phi i32 [ %108, %105 ], [ %103, %102 ]
  %108 = add nsw i32 %107, -1
  %109 = load <4 x i8>, ptr %106, align 1, !tbaa !34
  %110 = shufflevector <4 x i8> %109, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %110, ptr %106, align 1, !tbaa !34
  %111 = getelementptr inbounds i8, ptr %106, i64 4
  %112 = icmp eq i32 %108, 0
  br i1 %112, label %124, label %105, !llvm.loop !81

113:                                              ; preds = %73, %73
  %114 = tail call i32 @DNA_elem_array_size(ptr noundef %36) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %113, %116
  %117 = phi ptr [ %122, %116 ], [ %23, %113 ]
  %118 = phi i32 [ %119, %116 ], [ %114, %113 ]
  %119 = add nsw i32 %118, -1
  %120 = load <8 x i8>, ptr %117, align 1, !tbaa !34
  %121 = shufflevector <8 x i8> %120, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %121, ptr %117, align 1, !tbaa !34
  %122 = getelementptr inbounds i8, ptr %117, i64 8
  %123 = icmp eq i32 %119, 0
  br i1 %123, label %124, label %116, !llvm.loop !82

124:                                              ; preds = %50, %65, %116, %105, %93, %62, %113, %102, %90, %80, %73, %87, %59, %42
  %125 = sext i32 %37 to i64
  %126 = getelementptr inbounds i8, ptr %23, i64 %125
  %127 = add nuw nsw i32 %22, 1
  %128 = icmp eq i32 %127, %15
  br i1 %128, label %129, label %21, !llvm.loop !83

129:                                              ; preds = %124, %5, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define internal fastcc i32 @elementsize(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !84 {
  %4 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = sext i16 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #19
  %10 = tail call fastcc zeroext i8 @ispointer(ptr noundef %8) #21, !range !68
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = shl i64 %9, 32
  %14 = add i64 %13, -4294967296
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds i8, ptr %8, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 93
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 @DNA_elem_array_size(ptr noundef nonnull %8) #21
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %20, %19 ], [ 1, %12 ]
  %23 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !65
  %25 = mul nsw i32 %24, %22
  br label %46

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = sext i16 %1 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !50
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = shl i64 %9, 32
  %35 = add i64 %34, -4294967296
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds i8, ptr %8, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = icmp eq i8 %38, 93
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = tail call i32 @DNA_elem_array_size(ptr noundef nonnull %8) #21
  br label %42

42:                                               ; preds = %40, %33
  %43 = phi i32 [ %41, %40 ], [ 1, %33 ]
  %44 = sext i16 %31 to i32
  %45 = mul nsw i32 %43, %44
  br label %46

46:                                               ; preds = %26, %42, %21
  %47 = phi i32 [ %25, %21 ], [ %45, %42 ], [ 0, %26 ]
  ret i32 %47
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable
define internal fastcc ptr @find_elem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readnone %4, ptr noundef writeonly %5) unnamed_addr #10 !PGOFuncName !85 {
  %7 = getelementptr inbounds i16, ptr %3, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !50
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %11, %39
  %15 = phi ptr [ %3, %11 ], [ %18, %39 ]
  %16 = phi ptr [ %4, %11 ], [ %41, %39 ]
  %17 = phi i32 [ 0, %11 ], [ %42, %39 ]
  %18 = getelementptr inbounds i16, ptr %15, i64 2
  %19 = load i16, ptr %18, align 2, !tbaa !50
  %20 = getelementptr inbounds i16, ptr %15, i64 3
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %13, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = tail call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %19, i16 noundef signext %21) #21
  %26 = tail call fastcc i32 @elem_strcmp(ptr noundef %2, ptr noundef %24) #21, !range !86
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = sext i16 %19 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %33) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = icmp eq ptr %5, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  store ptr %18, ptr %5, align 8, !tbaa !39
  br label %44

39:                                               ; preds = %14
  %40 = sext i32 %25 to i64
  %41 = getelementptr inbounds i8, ptr %16, i64 %40
  %42 = add nuw nsw i32 %17, 1
  %43 = icmp eq i32 %42, %9
  br i1 %43, label %44, label %14, !llvm.loop !87

44:                                               ; preds = %39, %6, %28, %36, %38
  %45 = phi ptr [ %16, %38 ], [ %16, %36 ], [ null, %28 ], [ null, %6 ], [ null, %39 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DNA_struct_reconstruct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = load i16, ptr %11, align 2, !tbaa !50
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = getelementptr inbounds i16, ptr %19, i64 %15
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = tail call i32 @DNA_struct_find_nr(ptr noundef %0, ptr noundef %17) #21
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %55, label %24

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = sext i32 %22 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = load i16, ptr %29, align 2, !tbaa !50
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds i16, ptr %31, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !50
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %24
  %38 = sext i16 %35 to i32
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %40 = mul nsw i32 %38, %4
  %41 = sext i32 %40 to i64
  %42 = tail call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.6) #20
  %43 = icmp sgt i32 %4, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = sext i16 %35 to i64
  %46 = sext i16 %21 to i64
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %5, %44 ], [ %52, %47 ]
  %49 = phi ptr [ %42, %44 ], [ %51, %47 ]
  %50 = phi i32 [ 0, %44 ], [ %53, %47 ]
  tail call fastcc void @reconstruct_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %48, i32 noundef %22, ptr noundef %49) #21
  %51 = getelementptr inbounds i8, ptr %49, i64 %45
  %52 = getelementptr inbounds i8, ptr %48, i64 %46
  %53 = add nuw nsw i32 %50, 1
  %54 = icmp eq i32 %53, %4
  br i1 %54, label %55, label %47, !llvm.loop !88

55:                                               ; preds = %47, %37, %6, %24
  %56 = phi ptr [ null, %24 ], [ null, %6 ], [ %42, %37 ], [ %42, %47 ]
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reconstruct_struct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #3 !PGOFuncName !89 {
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  %9 = icmp eq i32 %3, -1
  %10 = icmp eq i32 %5, -1
  %11 = or i1 %9, %10
  br i1 %11, label %113, label %12

12:                                               ; preds = %7
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = load i16, ptr %21, align 2, !tbaa !50
  %25 = sext i16 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !50
  %28 = sext i16 %27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 %28, i1 false)
  br label %113

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = load i16, ptr %32, align 2, !tbaa !50
  %34 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds ptr, ptr %35, i64 %13
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = sext i32 %5 to i64
  %39 = getelementptr inbounds ptr, ptr %31, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !50
  %43 = sext i16 %42 to i32
  %44 = icmp sgt i16 %42, 0
  br i1 %44, label %45, label %113

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %47 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 3
  br label %49

49:                                               ; preds = %45, %109
  %50 = phi ptr [ %6, %45 ], [ %110, %109 ]
  %51 = phi i32 [ 0, %45 ], [ %111, %109 ]
  %52 = phi ptr [ %40, %45 ], [ %53, %109 ]
  %53 = getelementptr inbounds i16, ptr %52, i64 2
  %54 = load ptr, ptr %46, align 8, !tbaa !45
  %55 = load i16, ptr %53, align 2, !tbaa !50
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = load ptr, ptr %47, align 8, !tbaa !44
  %60 = getelementptr inbounds i16, ptr %52, i64 3
  %61 = load i16, ptr %60, align 2, !tbaa !50
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !39
  %65 = call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %55, i16 noundef signext %61) #21
  %66 = icmp slt i16 %55, %33
  br i1 %66, label %106, label %67

67:                                               ; preds = %49
  %68 = call fastcc zeroext i8 @ispointer(ptr noundef %64) #21, !range !68
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = call fastcc ptr @find_elem(ptr noundef %1, ptr noundef %58, ptr noundef %64, ptr noundef %37, ptr noundef %4, ptr noundef nonnull %8) #21
  %72 = icmp eq ptr %71, null
  br i1 %72, label %103, label %73

73:                                               ; preds = %70
  %74 = call i32 @DNA_struct_find_nr(ptr noundef %1, ptr noundef %58) #21
  %75 = call i32 @DNA_struct_find_nr(ptr noundef nonnull %0, ptr noundef %58) #21
  %76 = call i32 @DNA_elem_array_size(ptr noundef %64) #21
  %77 = load ptr, ptr %48, align 8, !tbaa !44
  %78 = load ptr, ptr %8, align 8, !tbaa !39
  %79 = getelementptr inbounds i16, ptr %78, i64 1
  %80 = load i16, ptr %79, align 2, !tbaa !50
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %77, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !39
  %84 = call i32 @DNA_elem_array_size(ptr noundef %83) #21
  %85 = load i16, ptr %78, align 2, !tbaa !50
  %86 = call fastcc i32 @elementsize(ptr noundef %1, i16 noundef signext %85, i16 noundef signext %80) #21
  %87 = sdiv i32 %65, %76
  %88 = sdiv i32 %86, %84
  %89 = sext i32 %88 to i64
  %90 = sext i32 %87 to i64
  br label %91

91:                                               ; preds = %97, %73
  %92 = phi i32 [ %76, %73 ], [ %98, %97 ]
  %93 = phi i32 [ %84, %73 ], [ %101, %97 ]
  %94 = phi ptr [ %71, %73 ], [ %99, %97 ]
  %95 = phi ptr [ %50, %73 ], [ %100, %97 ]
  %96 = icmp eq i32 %92, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %91
  %98 = add nsw i32 %92, -1
  call fastcc void @reconstruct_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %74, ptr noundef %94, i32 noundef %75, ptr noundef %95) #21
  %99 = getelementptr inbounds i8, ptr %94, i64 %89
  %100 = getelementptr inbounds i8, ptr %95, i64 %90
  %101 = add nsw i32 %93, -1
  %102 = icmp slt i32 %93, 2
  br i1 %102, label %109, label %91, !llvm.loop !90

103:                                              ; preds = %70
  %104 = sext i32 %65 to i64
  %105 = getelementptr inbounds i8, ptr %50, i64 %104
  br label %109

106:                                              ; preds = %67, %49
  call fastcc void @reconstruct_elem(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %58, ptr noundef %64, ptr noundef %50, ptr noundef %37, ptr noundef %4) #21
  %107 = sext i32 %65 to i64
  %108 = getelementptr inbounds i8, ptr %50, i64 %107
  br label %109

109:                                              ; preds = %91, %97, %106, %103
  %110 = phi ptr [ %108, %106 ], [ %105, %103 ], [ %95, %91 ], [ %100, %97 ]
  %111 = add nuw nsw i32 %51, 1
  %112 = icmp eq i32 %111, %43
  br i1 %112, label %113, label %49, !llvm.loop !91

113:                                              ; preds = %109, %29, %7, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DNA_elem_offset(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = tail call i32 @DNA_struct_find_nr(ptr noundef %0, ptr noundef %1) #21
  %6 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = tail call fastcc ptr @find_elem(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %10, ptr noundef null, ptr noundef null) #21
  %12 = ptrtoint ptr %11 to i64
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @DNA_struct_elem_find(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = tail call i32 @DNA_struct_find_nr(ptr noundef %0, ptr noundef %1) #21
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = tail call fastcc ptr @find_elem(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %12, ptr noundef null, ptr noundef null) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %7, %4
  br label %16

16:                                               ; preds = %7, %15
  %17 = phi i8 [ 0, %15 ], [ 1, %7 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @DNA_elem_type_size(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 12
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [12 x i32], ptr @switch.table.DNA_elem_type_size, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 8, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @le_int(i32 noundef %0) unnamed_addr #11 !PGOFuncName !92 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef signext i16 @le_short(i16 noundef signext %0) unnamed_addr #11 !PGOFuncName !93 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @elem_strcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !94 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = load i8, ptr %1, align 1, !tbaa !34
  %5 = icmp eq i8 %3, %4
  br i1 %5, label %13, label %16

6:                                                ; preds = %13
  %7 = add nuw i64 %14, 1
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %1, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2, %6
  %14 = phi i64 [ %7, %6 ], [ 0, %2 ]
  %15 = phi i8 [ %9, %6 ], [ %3, %2 ]
  switch i8 %15, label %6 [
    i8 91, label %16
    i8 0, label %16
  ]

16:                                               ; preds = %6, %13, %13, %2
  %17 = phi i32 [ 1, %2 ], [ 0, %13 ], [ 1, %6 ], [ 0, %13 ]
  ret i32 %17
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @reconstruct_elem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #14 !PGOFuncName !95 {
  br label %8

8:                                                ; preds = %12, %7
  %9 = phi i32 [ 0, %7 ], [ %14, %12 ]
  %10 = phi ptr [ %3, %7 ], [ %13, %12 ]
  %11 = load i8, ptr %10, align 1, !tbaa !34
  switch i8 %11, label %12 [
    i8 0, label %15
    i8 91, label %15
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !96

15:                                               ; preds = %8, %8
  %16 = getelementptr inbounds i16, ptr %5, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !50
  %18 = sext i16 %17 to i32
  %19 = icmp sgt i16 %17, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %15
  %21 = icmp eq i8 %11, 91
  %22 = select i1 %21, i32 %9, i32 0
  %23 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq i32 %22, 0
  %26 = zext nneg i32 %22 to i64
  br label %27

27:                                               ; preds = %20, %103
  %28 = phi ptr [ %5, %20 ], [ %31, %103 ]
  %29 = phi ptr [ %6, %20 ], [ %105, %103 ]
  %30 = phi i32 [ 0, %20 ], [ %106, %103 ]
  %31 = getelementptr inbounds i16, ptr %28, i64 2
  %32 = load i16, ptr %31, align 2, !tbaa !50
  %33 = getelementptr inbounds i16, ptr %28, i64 3
  %34 = load i16, ptr %33, align 2, !tbaa !50
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %24, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = tail call fastcc i32 @elementsize(ptr noundef %1, i16 noundef signext %32, i16 noundef signext %34) #21
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %37) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = sext i16 %32 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !39
  %47 = tail call fastcc zeroext i8 @ispointer(ptr noundef %3) #21, !range !68
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !65
  tail call fastcc void @cast_pointer(i32 noundef %51, i32 noundef %53, ptr noundef %3, ptr noundef %4, ptr noundef %29) #21
  br label %108

54:                                               ; preds = %41
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %46) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = sext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %29, i64 %58, i1 false)
  br label %108

59:                                               ; preds = %54
  tail call fastcc void @cast_elem(ptr noundef %2, ptr noundef %46, ptr noundef %3, ptr noundef %4, ptr noundef %29) #21
  br label %108

60:                                               ; preds = %27
  br i1 %25, label %103, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds i8, ptr %37, i64 %26
  %63 = load i8, ptr %62, align 1, !tbaa !34
  %64 = icmp eq i8 %63, 91
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  %66 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull %37, i64 noundef %26) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = sext i16 %32 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !39
  %74 = tail call i32 @DNA_elem_array_size(ptr noundef %3) #21
  %75 = tail call i32 @DNA_elem_array_size(ptr noundef nonnull %37) #21
  %76 = tail call fastcc zeroext i8 @ispointer(ptr noundef %3) #21, !range !68
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !65
  %83 = icmp sgt i32 %74, %75
  %84 = select i1 %83, ptr %37, ptr %3
  tail call fastcc void @cast_pointer(i32 noundef %80, i32 noundef %82, ptr noundef %84, ptr noundef %4, ptr noundef %29) #21
  br label %108

85:                                               ; preds = %68
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %73) #19
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = sdiv i32 %38, %75
  %90 = icmp slt i32 %74, %75
  %91 = tail call i32 @llvm.smin.i32(i32 %74, i32 %75)
  %92 = mul nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %29, i64 %93, i1 false)
  br i1 %90, label %94, label %108

94:                                               ; preds = %88
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.27) #19
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = getelementptr i8, ptr %4, i64 %93
  %99 = getelementptr i8, ptr %98, i64 -1
  store i8 0, ptr %99, align 1, !tbaa !34
  br label %108

100:                                              ; preds = %85
  %101 = icmp sgt i32 %74, %75
  %102 = select i1 %101, ptr %37, ptr %3
  tail call fastcc void @cast_elem(ptr noundef %2, ptr noundef %73, ptr noundef %102, ptr noundef %4, ptr noundef %29) #21
  br label %108

103:                                              ; preds = %60, %65, %61
  %104 = sext i32 %38 to i64
  %105 = getelementptr inbounds i8, ptr %29, i64 %104
  %106 = add nuw nsw i32 %30, 1
  %107 = icmp eq i32 %106, %18
  br i1 %107, label %108, label %27, !llvm.loop !97

108:                                              ; preds = %103, %15, %78, %88, %94, %97, %100, %49, %59, %57
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @cast_pointer(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #14 !PGOFuncName !98 {
  %6 = tail call i32 @DNA_elem_array_size(ptr noundef %2) #21
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %5
  %9 = icmp eq i32 %0, %1
  %10 = icmp eq i32 %0, 4
  %11 = icmp eq i32 %1, 8
  %12 = and i1 %10, %11
  %13 = icmp eq i32 %0, 8
  %14 = icmp eq i32 %1, 4
  %15 = and i1 %13, %14
  %16 = sext i32 %0 to i64
  %17 = sext i32 %1 to i64
  br label %18

18:                                               ; preds = %8, %34
  %19 = phi i32 [ %6, %8 ], [ %37, %34 ]
  %20 = phi ptr [ %3, %8 ], [ %36, %34 ]
  %21 = phi ptr [ %4, %8 ], [ %35, %34 ]
  br i1 %9, label %22, label %23

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 %16, i1 false)
  br label %34

23:                                               ; preds = %18
  br i1 %12, label %24, label %28

24:                                               ; preds = %23
  %25 = load i64, ptr %21, align 1
  %26 = lshr i64 %25, 3
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %20, align 4, !tbaa !54
  br label %34

28:                                               ; preds = %23
  br i1 %15, label %29, label %32

29:                                               ; preds = %28
  %30 = load i32, ptr %21, align 4, !tbaa !54
  %31 = sext i32 %30 to i64
  store i64 %31, ptr %20, align 8, !tbaa !99
  br label %34

32:                                               ; preds = %28
  %33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  br label %34

34:                                               ; preds = %24, %32, %29, %22
  %35 = getelementptr inbounds i8, ptr %21, i64 %17
  %36 = getelementptr inbounds i8, ptr %20, i64 %16
  %37 = add nsw i32 %19, -1
  %38 = icmp sgt i32 %19, 1
  br i1 %38, label %18, label %39, !llvm.loop !101

39:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable
define internal fastcc void @cast_elem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #15 !PGOFuncName !102 {
  %6 = tail call i32 @DNA_elem_array_size(ptr noundef %2) #21
  %7 = tail call fastcc i32 @sdna_type_nr(ptr noundef %1) #21, !range !103
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %90, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @sdna_type_nr(ptr noundef %0) #21, !range !103
  %11 = icmp ne i32 %10, -1
  %12 = icmp sgt i32 %6, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %90

14:                                               ; preds = %9
  %15 = tail call i32 @DNA_elem_type_size(i32 noundef %10) #21, !range !104
  %16 = tail call i32 @DNA_elem_type_size(i32 noundef %7) #21, !range !104
  %17 = icmp ult i32 %7, 2
  %18 = zext nneg i32 %16 to i64
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %14, %84
  %21 = phi ptr [ %3, %14 ], [ %87, %84 ]
  %22 = phi ptr [ %4, %14 ], [ %86, %84 ]
  %23 = phi i32 [ %6, %14 ], [ %88, %84 ]
  %24 = phi double [ 0.000000e+00, %14 ], [ %85, %84 ]
  switch i32 %7, label %57 [
    i32 0, label %25
    i32 1, label %28
    i32 2, label %31
    i32 3, label %34
    i32 4, label %37
    i32 5, label %40
    i32 6, label %43
    i32 7, label %46
    i32 8, label %49
    i32 10, label %51
    i32 11, label %54
  ]

25:                                               ; preds = %20
  %26 = load i8, ptr %22, align 1, !tbaa !34
  %27 = uitofp i8 %26 to double
  br label %57

28:                                               ; preds = %20
  %29 = load i8, ptr %22, align 1, !tbaa !34
  %30 = uitofp i8 %29 to double
  br label %57

31:                                               ; preds = %20
  %32 = load i16, ptr %22, align 2, !tbaa !50
  %33 = sitofp i16 %32 to double
  br label %57

34:                                               ; preds = %20
  %35 = load i16, ptr %22, align 2, !tbaa !50
  %36 = uitofp i16 %35 to double
  br label %57

37:                                               ; preds = %20
  %38 = load i32, ptr %22, align 4, !tbaa !54
  %39 = sitofp i32 %38 to double
  br label %57

40:                                               ; preds = %20
  %41 = load i32, ptr %22, align 4, !tbaa !54
  %42 = sitofp i32 %41 to double
  br label %57

43:                                               ; preds = %20
  %44 = load i32, ptr %22, align 4, !tbaa !54
  %45 = uitofp i32 %44 to double
  br label %57

46:                                               ; preds = %20
  %47 = load float, ptr %22, align 4, !tbaa !105
  %48 = fpext float %47 to double
  br label %57

49:                                               ; preds = %20
  %50 = load double, ptr %22, align 8, !tbaa !107
  br label %57

51:                                               ; preds = %20
  %52 = load i64, ptr %22, align 8, !tbaa !99
  %53 = sitofp i64 %52 to double
  br label %57

54:                                               ; preds = %20
  %55 = load i64, ptr %22, align 8, !tbaa !99
  %56 = uitofp i64 %55 to double
  br label %57

57:                                               ; preds = %20, %54, %51, %49, %46, %43, %40, %37, %34, %31, %28, %25
  %58 = phi double [ %24, %20 ], [ %56, %54 ], [ %53, %51 ], [ %50, %49 ], [ %48, %46 ], [ %45, %43 ], [ %42, %40 ], [ %39, %37 ], [ %36, %34 ], [ %33, %31 ], [ %30, %28 ], [ %27, %25 ]
  switch i32 %10, label %84 [
    i32 0, label %59
    i32 1, label %61
    i32 2, label %63
    i32 3, label %65
    i32 4, label %67
    i32 5, label %69
    i32 6, label %71
    i32 7, label %73
    i32 8, label %77
    i32 10, label %80
    i32 11, label %82
  ]

59:                                               ; preds = %57
  %60 = fptoui double %58 to i8
  store i8 %60, ptr %21, align 1, !tbaa !34
  br label %84

61:                                               ; preds = %57
  %62 = fptoui double %58 to i8
  store i8 %62, ptr %21, align 1, !tbaa !34
  br label %84

63:                                               ; preds = %57
  %64 = fptosi double %58 to i16
  store i16 %64, ptr %21, align 2, !tbaa !50
  br label %84

65:                                               ; preds = %57
  %66 = fptoui double %58 to i16
  store i16 %66, ptr %21, align 2, !tbaa !50
  br label %84

67:                                               ; preds = %57
  %68 = fptosi double %58 to i32
  store i32 %68, ptr %21, align 4, !tbaa !54
  br label %84

69:                                               ; preds = %57
  %70 = fptosi double %58 to i32
  store i32 %70, ptr %21, align 4, !tbaa !54
  br label %84

71:                                               ; preds = %57
  %72 = fptoui double %58 to i32
  store i32 %72, ptr %21, align 4, !tbaa !54
  br label %84

73:                                               ; preds = %57
  %74 = fdiv double %58, 2.550000e+02
  %75 = select i1 %17, double %74, double %58
  %76 = fptrunc double %75 to float
  store float %76, ptr %21, align 4, !tbaa !105
  br label %84

77:                                               ; preds = %57
  %78 = fdiv double %58, 2.550000e+02
  %79 = select i1 %17, double %78, double %58
  store double %79, ptr %21, align 8, !tbaa !107
  br label %84

80:                                               ; preds = %57
  %81 = fptosi double %58 to i64
  store i64 %81, ptr %21, align 8, !tbaa !99
  br label %84

82:                                               ; preds = %57
  %83 = fptoui double %58 to i64
  store i64 %83, ptr %21, align 8, !tbaa !99
  br label %84

84:                                               ; preds = %57, %82, %80, %77, %73, %71, %69, %67, %65, %63, %61, %59
  %85 = phi double [ %58, %57 ], [ %58, %82 ], [ %58, %80 ], [ %79, %77 ], [ %75, %73 ], [ %58, %71 ], [ %58, %69 ], [ %58, %67 ], [ %58, %65 ], [ %58, %63 ], [ %58, %61 ], [ %58, %59 ]
  %86 = getelementptr inbounds i8, ptr %22, i64 %18
  %87 = getelementptr inbounds i8, ptr %21, i64 %19
  %88 = add nsw i32 %23, -1
  %89 = icmp sgt i32 %23, 1
  br i1 %89, label %20, label %90, !llvm.loop !109

90:                                               ; preds = %84, %5, %9
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @sdna_type_nr(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !110 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.27) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.29) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.31) #19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.32) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.33) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.34) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.35) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.36) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.38) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.39) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.40) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.41) #19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.42) #19
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 11, i32 -1
  br label %47

47:                                               ; preds = %43, %40, %37, %34, %28, %31, %25, %22, %16, %19, %13, %7, %10, %1, %4
  %48 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 1, %10 ], [ 1, %7 ], [ 2, %13 ], [ 3, %19 ], [ 3, %16 ], [ 4, %22 ], [ 5, %25 ], [ 6, %31 ], [ 6, %28 ], [ 7, %34 ], [ 8, %37 ], [ 10, %40 ], [ %46, %43 ]
  ret i32 %48
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { nofree noinline nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !35, i64 0}
!41 = !{!42, !40, i64 0}
!42 = !{!"SDNA", !40, i64 0, !43, i64 8, !43, i64 12, !40, i64 16, !43, i64 24, !43, i64 28, !40, i64 32, !40, i64 40, !43, i64 48, !40, i64 56, !40, i64 64, !43, i64 72}
!43 = !{!"int", !35, i64 0}
!44 = !{!42, !40, i64 16}
!45 = !{!42, !40, i64 32}
!46 = !{!42, !40, i64 56}
!47 = !{!42, !40, i64 64}
!48 = !{!42, !43, i64 72}
!49 = !{!42, !43, i64 48}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !35, i64 0}
!52 = !{!42, !43, i64 8}
!53 = !{!"dna_genfile.c:init_structDNA"}
!54 = !{!43, !43, i64 0}
!55 = !{!42, !43, i64 12}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !38}
!58 = !{!42, !43, i64 28}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = !{!42, !40, i64 40}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !38}
!64 = distinct !{!64, !38}
!65 = !{!42, !43, i64 24}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !38}
!68 = !{i8 0, i8 2}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = distinct !{!71, !38}
!72 = !{!"dna_genfile.c:findstruct_name"}
!73 = distinct !{!73, !38}
!74 = !{!"dna_genfile.c:ispointer"}
!75 = !{!"dna_genfile.c:recurs_test_compflags"}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38}
!84 = !{!"dna_genfile.c:elementsize"}
!85 = !{!"dna_genfile.c:find_elem"}
!86 = !{i32 0, i32 2}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = !{!"dna_genfile.c:reconstruct_struct"}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = !{!"dna_genfile.c:le_int"}
!93 = !{!"dna_genfile.c:le_short"}
!94 = !{!"dna_genfile.c:elem_strcmp"}
!95 = !{!"dna_genfile.c:reconstruct_elem"}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38}
!98 = !{!"dna_genfile.c:cast_pointer"}
!99 = !{!100, !100, i64 0}
!100 = !{!"long", !35, i64 0}
!101 = distinct !{!101, !38}
!102 = !{!"dna_genfile.c:cast_elem"}
!103 = !{i32 -1, i32 12}
!104 = !{i32 1, i32 9}
!105 = !{!106, !106, i64 0}
!106 = !{!"float", !35, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"double", !35, i64 0}
!109 = distinct !{!109, !38}
!110 = !{!"dna_genfile.c:sdna_type_nr"}
