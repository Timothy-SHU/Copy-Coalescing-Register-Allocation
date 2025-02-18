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
@switch.table.cast_elem.49 = private unnamed_addr constant [12 x i64] [i64 1, i64 1, i64 2, i64 2, i64 4, i64 4, i64 4, i64 4, i64 8, i64 8, i64 8, i64 8], align 8

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @DNA_elem_array_size(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %18, %1
  %3 = phi i64 [ %21, %18 ], [ 0, %1 ]
  %4 = phi i32 [ %19, %18 ], [ 1, %1 ]
  %5 = phi ptr [ %20, %18 ], [ null, %1 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %3
  %7 = load i8, ptr %6, align 1, !tbaa !34
  switch i8 %7, label %10 [
    i8 0, label %22
    i8 91, label %8
  ]

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %6, i64 1
  br label %18

10:                                               ; preds = %2
  %11 = icmp eq i8 %7, 93
  %12 = icmp ne ptr %5, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = tail call i64 @strtol(ptr nocapture noundef nonnull %5, ptr noundef null, i32 noundef 10) #13
  %16 = trunc i64 %15 to i32
  %17 = mul nsw i32 %4, %16
  br label %18

18:                                               ; preds = %8, %14, %10
  %19 = phi i32 [ %4, %8 ], [ %17, %14 ], [ %4, %10 ]
  %20 = phi ptr [ %9, %8 ], [ %5, %14 ], [ %5, %10 ]
  %21 = add nuw i64 %3, 1
  br label %2, !llvm.loop !37

22:                                               ; preds = %2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @DNA_sdna_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  tail call void %2(ptr noundef %3) #13
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void %4(ptr noundef %6) #13
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void %7(ptr noundef %9) #13
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  tail call void %10(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  tail call void @BLI_ghash_free(ptr noundef %14, ptr noundef null, ptr noundef null) #13
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %15(ptr noundef nonnull %0) #13
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @DNA_struct_find_nr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load i16, ptr %13, align 2, !tbaa !51
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %1) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %8, %2
  %23 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = tail call ptr @BLI_ghash_lookup(ptr noundef %24, ptr noundef %1) #13
  %26 = ptrtoint ptr %25 to i64
  %27 = trunc i64 %26 to i32
  %28 = add i32 %27, -1
  br label %29

29:                                               ; preds = %8, %22
  %30 = phi i32 [ %28, %22 ], [ %4, %8 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DNA_sdna_from_data(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %5 = tail call ptr %4(i64 noundef 80, ptr noundef nonnull @.str) #13
  %6 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 11
  store i32 0, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !53
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %9 = sext i32 %1 to i64
  %10 = tail call ptr %8(i64 noundef %9, ptr noundef nonnull @.str.1) #13
  store ptr %10, ptr %5, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %0, i64 %9, i1 false)
  %11 = load ptr, ptr %5, align 8, !tbaa !42
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = icmp eq i32 %12, 1095648339
  br i1 %13, label %14, label %273

14:                                               ; preds = %3
  %15 = getelementptr inbounds i32, ptr %11, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = icmp eq i32 %16, 1162690894
  br i1 %17, label %18, label %270

18:                                               ; preds = %14
  %19 = getelementptr inbounds i32, ptr %11, i64 2
  %20 = icmp eq i8 %2, 0
  %21 = load i32, ptr %19, align 4, !tbaa !54
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = select i1 %20, i32 %21, i32 %22
  %24 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 2
  store i32 %23, ptr %24, align 4, !tbaa !55
  %25 = getelementptr inbounds i32, ptr %11, i64 3
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 2
  %28 = sext i32 %23 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr %26(i64 noundef %29, ptr noundef nonnull @.str.9) #13
  %31 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !45
  %32 = load i32, ptr %27, align 4, !tbaa !55
  %33 = sext i32 %32 to i64
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %18, %64
  %36 = phi ptr [ %65, %64 ], [ %25, %18 ]
  %37 = phi i64 [ %66, %64 ], [ 0, %18 ]
  %38 = phi i32 [ %58, %64 ], [ -1, %18 ]
  %39 = load ptr, ptr %31, align 8, !tbaa !45
  %40 = getelementptr inbounds ptr, ptr %39, i64 %37
  store ptr %36, ptr %40, align 8, !tbaa !40
  %41 = load i8, ptr %36, align 1, !tbaa !34
  %42 = icmp eq i8 %41, 91
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(4) @.str.11) #14
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne i64 %37, 0
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load ptr, ptr %31, align 8, !tbaa !45
  %50 = getelementptr ptr, ptr %49, i64 %37
  %51 = getelementptr ptr, ptr %50, i64 -1
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(4) @.str.12) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  store ptr @.str.13, ptr %50, align 8, !tbaa !40
  %56 = trunc i64 %37 to i32
  br label %57

57:                                               ; preds = %55, %48, %43, %35
  %58 = phi i32 [ %56, %55 ], [ %38, %48 ], [ %38, %43 ], [ %38, %35 ]
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi ptr [ %36, %57 ], [ %63, %59 ]
  %61 = load i8, ptr %60, align 1, !tbaa !34
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds i8, ptr %60, i64 1
  br i1 %62, label %64, label %59, !llvm.loop !56

64:                                               ; preds = %59
  %65 = getelementptr inbounds i8, ptr %60, i64 1
  %66 = add nuw nsw i64 %37, 1
  %67 = icmp eq i64 %66, %33
  br i1 %67, label %68, label %35, !llvm.loop !57

68:                                               ; preds = %64
  %69 = icmp sgt i32 %58, -1
  br label %70

70:                                               ; preds = %68, %18
  %71 = phi i1 [ false, %18 ], [ %69, %68 ]
  %72 = phi ptr [ %25, %18 ], [ %65, %68 ]
  %73 = ptrtoint ptr %72 to i64
  %74 = add nsw i64 %73, 3
  %75 = and i64 %74, -4
  %76 = inttoptr i64 %75 to ptr
  %77 = load i32, ptr %76, align 4, !tbaa !54
  %78 = icmp eq i32 %77, 1162893652
  br i1 %78, label %79, label %270

79:                                               ; preds = %70
  %80 = getelementptr inbounds i32, ptr %76, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !54
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = select i1 %20, i32 %81, i32 %82
  %84 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 5
  store i32 %83, ptr %84, align 4, !tbaa !58
  %85 = getelementptr inbounds i32, ptr %76, i64 2
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %87 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 5
  %88 = sext i32 %83 to i64
  %89 = shl nsw i64 %88, 3
  %90 = tail call ptr %86(i64 noundef %89, ptr noundef nonnull @.str.15) #13
  %91 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 6
  store ptr %90, ptr %91, align 8, !tbaa !46
  %92 = load i32, ptr %87, align 4, !tbaa !58
  %93 = sext i32 %92 to i64
  %94 = icmp sgt i32 %92, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %79, %115
  %96 = phi ptr [ %116, %115 ], [ %85, %79 ]
  %97 = phi i64 [ %117, %115 ], [ 0, %79 ]
  %98 = load ptr, ptr %91, align 8, !tbaa !46
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  store ptr %96, ptr %99, align 8, !tbaa !40
  %100 = load i8, ptr %96, align 1, !tbaa !34
  %101 = icmp eq i8 %100, 98
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.17, ptr noundef nonnull dereferenceable(1) %96) #14
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = getelementptr inbounds i8, ptr %96, i64 1
  %107 = load ptr, ptr %91, align 8, !tbaa !46
  %108 = getelementptr inbounds ptr, ptr %107, i64 %97
  store ptr %106, ptr %108, align 8, !tbaa !40
  br label %109

109:                                              ; preds = %105, %102, %95
  br label %110

110:                                              ; preds = %109, %110
  %111 = phi ptr [ %114, %110 ], [ %96, %109 ]
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = icmp eq i8 %112, 0
  %114 = getelementptr inbounds i8, ptr %111, i64 1
  br i1 %113, label %115, label %110, !llvm.loop !59

115:                                              ; preds = %110
  %116 = getelementptr inbounds i8, ptr %111, i64 1
  %117 = add nuw nsw i64 %97, 1
  %118 = icmp eq i64 %117, %93
  br i1 %118, label %119, label %95, !llvm.loop !60

119:                                              ; preds = %115, %79
  %120 = phi ptr [ %85, %79 ], [ %116, %115 ]
  %121 = ptrtoint ptr %120 to i64
  %122 = add nsw i64 %121, 3
  %123 = and i64 %122, -4
  %124 = inttoptr i64 %123 to ptr
  %125 = load i32, ptr %124, align 4, !tbaa !54
  %126 = icmp eq i32 %125, 1313164372
  br i1 %126, label %127, label %270

127:                                              ; preds = %119
  %128 = getelementptr inbounds i32, ptr %124, i64 1
  %129 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 7
  store ptr %128, ptr %129, align 8, !tbaa !61
  %130 = trunc i32 %92 to i16
  %131 = icmp eq i16 %130, 0
  %132 = or i1 %20, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %127, %133
  %134 = phi ptr [ %139, %133 ], [ %128, %127 ]
  %135 = phi i16 [ %136, %133 ], [ %130, %127 ]
  %136 = add i16 %135, -1
  %137 = load i16, ptr %134, align 2, !tbaa !51
  %138 = tail call i16 @llvm.bswap.i16(i16 %137)
  store i16 %138, ptr %134, align 2, !tbaa !51
  %139 = getelementptr inbounds i16, ptr %134, i64 1
  %140 = icmp eq i16 %136, 0
  br i1 %140, label %141, label %133, !llvm.loop !62

141:                                              ; preds = %133, %127
  %142 = getelementptr inbounds i16, ptr %128, i64 %93
  %143 = and i32 %92, 1
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds i16, ptr %142, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !54
  %147 = icmp eq i32 %146, 1129469011
  br i1 %147, label %148, label %270

148:                                              ; preds = %141
  %149 = getelementptr inbounds i32, ptr %145, i64 1
  %150 = load i32, ptr %149, align 4, !tbaa !54
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %152 = select i1 %20, i32 %150, i32 %151
  %153 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 8
  store i32 %152, ptr %153, align 8, !tbaa !50
  %154 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %155 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 8
  %156 = sext i32 %152 to i64
  %157 = shl nsw i64 %156, 3
  %158 = tail call ptr %154(i64 noundef %157, ptr noundef nonnull @.str.21) #13
  %159 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 9
  store ptr %158, ptr %159, align 8, !tbaa !47
  %160 = load i32, ptr %155, align 8, !tbaa !50
  %161 = sext i32 %160 to i64
  %162 = icmp sgt i32 %160, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %148
  %164 = getelementptr inbounds i32, ptr %145, i64 2
  br label %169

165:                                              ; preds = %202, %148
  %166 = load ptr, ptr %159, align 8, !tbaa !47
  %167 = load ptr, ptr %91, align 8, !tbaa !46
  %168 = sext i32 %160 to i64
  br label %206

169:                                              ; preds = %163, %202
  %170 = phi ptr [ %203, %202 ], [ %164, %163 ]
  %171 = phi i64 [ %204, %202 ], [ 0, %163 ]
  %172 = load ptr, ptr %159, align 8, !tbaa !47
  %173 = getelementptr inbounds ptr, ptr %172, i64 %171
  store ptr %170, ptr %173, align 8, !tbaa !40
  br i1 %20, label %194, label %174

174:                                              ; preds = %169
  %175 = load i16, ptr %170, align 2, !tbaa !51
  %176 = tail call i16 @llvm.bswap.i16(i16 %175)
  store i16 %176, ptr %170, align 2, !tbaa !51
  %177 = getelementptr inbounds i16, ptr %170, i64 1
  %178 = load i16, ptr %177, align 2, !tbaa !51
  %179 = tail call i16 @llvm.bswap.i16(i16 %178)
  store i16 %179, ptr %177, align 2, !tbaa !51
  %180 = getelementptr inbounds i16, ptr %170, i64 2
  %181 = icmp eq i16 %178, 0
  br i1 %181, label %202, label %182

182:                                              ; preds = %174, %182
  %183 = phi ptr [ %192, %182 ], [ %180, %174 ]
  %184 = phi i16 [ %186, %182 ], [ %179, %174 ]
  %185 = phi ptr [ %183, %182 ], [ %170, %174 ]
  %186 = add i16 %184, -1
  %187 = load i16, ptr %183, align 2, !tbaa !51
  %188 = tail call i16 @llvm.bswap.i16(i16 %187)
  store i16 %188, ptr %183, align 2, !tbaa !51
  %189 = getelementptr inbounds i16, ptr %185, i64 3
  %190 = load i16, ptr %189, align 2, !tbaa !51
  %191 = tail call i16 @llvm.bswap.i16(i16 %190)
  store i16 %191, ptr %189, align 2, !tbaa !51
  %192 = getelementptr inbounds i16, ptr %183, i64 2
  %193 = icmp eq i16 %186, 0
  br i1 %193, label %202, label %182, !llvm.loop !63

194:                                              ; preds = %169
  %195 = getelementptr inbounds i16, ptr %170, i64 1
  %196 = load i16, ptr %195, align 2, !tbaa !51
  %197 = sext i16 %196 to i32
  %198 = shl nsw i32 %197, 1
  %199 = add nsw i32 %198, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i16, ptr %170, i64 %200
  br label %202

202:                                              ; preds = %182, %174, %194
  %203 = phi ptr [ %201, %194 ], [ %180, %174 ], [ %192, %182 ]
  %204 = add nuw nsw i64 %171, 1
  %205 = icmp eq i64 %204, %161
  br i1 %205, label %165, label %169, !llvm.loop !64

206:                                              ; preds = %206, %165
  %207 = phi i64 [ %217, %206 ], [ 0, %165 ]
  %208 = icmp slt i64 %207, %168
  tail call void @llvm.assume(i1 %208)
  %209 = getelementptr inbounds ptr, ptr %166, i64 %207
  %210 = load ptr, ptr %209, align 8, !tbaa !40
  %211 = load i16, ptr %210, align 2, !tbaa !51
  %212 = sext i16 %211 to i64
  %213 = getelementptr inbounds ptr, ptr %167, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !40
  %215 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %214, ptr noundef nonnull dereferenceable(9) @.str.23) #14
  %216 = icmp eq i32 %215, 0
  %217 = add nuw i64 %207, 1
  br i1 %216, label %218, label %206, !llvm.loop !65

218:                                              ; preds = %206
  %219 = load ptr, ptr %129, align 8, !tbaa !61
  %220 = getelementptr inbounds i16, ptr %219, i64 %212
  %221 = load i16, ptr %220, align 2, !tbaa !51
  %222 = sdiv i16 %221, 2
  %223 = sext i16 %222 to i32
  %224 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 4
  store i32 %223, ptr %224, align 8, !tbaa !66
  %225 = getelementptr inbounds i16, ptr %210, i64 1
  %226 = load i16, ptr %225, align 2, !tbaa !51
  %227 = icmp eq i16 %226, 2
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  switch i16 %221, label %229 [
    i16 17, label %231
    i16 16, label %231
    i16 9, label %231
    i16 8, label %231
  ]

229:                                              ; preds = %228, %218
  %230 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  tail call void @exit(i32 noundef 1) #15
  unreachable

231:                                              ; preds = %228, %228, %228, %228
  %232 = icmp sgt i32 %160, 0
  %233 = and i1 %71, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %231, %246
  %235 = phi i64 [ %247, %246 ], [ 0, %231 ]
  %236 = getelementptr inbounds ptr, ptr %166, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !40
  %238 = load i16, ptr %237, align 2, !tbaa !51
  %239 = sext i16 %238 to i64
  %240 = getelementptr inbounds ptr, ptr %167, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !40
  %242 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %241, ptr noundef nonnull dereferenceable(17) @.str.25) #14
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %234
  %245 = getelementptr inbounds i16, ptr %237, i64 10
  store i16 9, ptr %245, align 2, !tbaa !51
  br label %246

246:                                              ; preds = %244, %234
  %247 = add nuw nsw i64 %235, 1
  %248 = icmp eq i64 %247, %161
  br i1 %248, label %249, label %234, !llvm.loop !67

249:                                              ; preds = %246, %231
  %250 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.26, i32 noundef %160) #13
  %251 = getelementptr inbounds %struct.SDNA, ptr %5, i64 0, i32 10
  store ptr %250, ptr %251, align 8, !tbaa !48
  %252 = load i32, ptr %155, align 8, !tbaa !50
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %273

254:                                              ; preds = %249, %254
  %255 = phi i64 [ %265, %254 ], [ 0, %249 ]
  %256 = load ptr, ptr %159, align 8, !tbaa !47
  %257 = getelementptr inbounds ptr, ptr %256, i64 %255
  %258 = load ptr, ptr %257, align 8, !tbaa !40
  %259 = load ptr, ptr %251, align 8, !tbaa !48
  %260 = load ptr, ptr %91, align 8, !tbaa !46
  %261 = load i16, ptr %258, align 2, !tbaa !51
  %262 = sext i16 %261 to i64
  %263 = getelementptr inbounds ptr, ptr %260, i64 %262
  %264 = load ptr, ptr %263, align 8, !tbaa !40
  %265 = add nuw nsw i64 %255, 1
  %266 = inttoptr i64 %265 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %259, ptr noundef %264, ptr noundef nonnull %266) #13
  %267 = load i32, ptr %155, align 8, !tbaa !50
  %268 = sext i32 %267 to i64
  %269 = icmp slt i64 %265, %268
  br i1 %269, label %254, label %273, !llvm.loop !68

270:                                              ; preds = %141, %119, %70, %14
  %271 = phi ptr [ @str, %14 ], [ @str.43, %70 ], [ @str.44, %119 ], [ @str.45, %141 ]
  %272 = tail call i32 @puts(ptr nonnull dereferenceable(1) %271)
  br label %273

273:                                              ; preds = %254, %270, %249, %3
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @DNA_struct_get_compareflags(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47)
  br label %157

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %10 = sext i32 %4 to i64
  %11 = tail call ptr %9(i64 noundef %10, ptr noundef nonnull @.str.3) #13
  %12 = load i32, ptr %3, align 8, !tbaa !50
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %142

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 9
  %18 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 8
  %19 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %20 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 7
  %21 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %23 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %25 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 4
  br label %27

27:                                               ; preds = %14, %137
  %28 = phi i64 [ 0, %14 ], [ %138, %137 ]
  %29 = load ptr, ptr %15, align 8, !tbaa !47
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = load ptr, ptr %16, align 8, !tbaa !46
  %33 = load i16, ptr %31, align 2, !tbaa !51
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = load i32, ptr %18, align 8, !tbaa !50
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %27
  %40 = load ptr, ptr %17, align 8, !tbaa !47
  %41 = load ptr, ptr %19, align 8, !tbaa !46
  %42 = zext nneg i32 %37 to i64
  br label %46

43:                                               ; preds = %46
  %44 = add nuw nsw i64 %47, 1
  %45 = icmp eq i64 %44, %42
  br i1 %45, label %56, label %46, !llvm.loop !65

46:                                               ; preds = %39, %43
  %47 = phi i64 [ 0, %39 ], [ %44, %43 ]
  %48 = getelementptr inbounds ptr, ptr %40, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !40
  %50 = load i16, ptr %49, align 2, !tbaa !51
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %41, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(1) %36) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %43

56:                                               ; preds = %46, %43, %27
  %57 = phi ptr [ null, %27 ], [ %49, %46 ], [ null, %43 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %137, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %11, i64 %28
  store i8 2, ptr %60, align 1, !tbaa !34
  %61 = getelementptr inbounds i16, ptr %57, i64 1
  %62 = load i16, ptr %61, align 2, !tbaa !51
  %63 = getelementptr inbounds i16, ptr %31, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !51
  %65 = icmp eq i16 %62, %64
  br i1 %65, label %66, label %137

66:                                               ; preds = %59
  %67 = sext i16 %64 to i32
  %68 = load ptr, ptr %20, align 8, !tbaa !61
  %69 = load i16, ptr %57, align 2, !tbaa !51
  %70 = sext i16 %69 to i64
  %71 = getelementptr inbounds i16, ptr %68, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !51
  %73 = load ptr, ptr %21, align 8, !tbaa !61
  %74 = load i16, ptr %31, align 2, !tbaa !51
  %75 = sext i16 %74 to i64
  %76 = getelementptr inbounds i16, ptr %73, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !51
  %78 = icmp eq i16 %72, %77
  br i1 %78, label %79, label %137

79:                                               ; preds = %66
  %80 = icmp sgt i16 %64, 0
  br i1 %80, label %81, label %133

81:                                               ; preds = %79
  %82 = load ptr, ptr %22, align 8, !tbaa !46
  %83 = load ptr, ptr %16, align 8, !tbaa !46
  br label %84

84:                                               ; preds = %81, %130
  %85 = phi ptr [ %57, %81 ], [ %88, %130 ]
  %86 = phi ptr [ %31, %81 ], [ %89, %130 ]
  %87 = phi i32 [ %67, %81 ], [ %131, %130 ]
  %88 = getelementptr inbounds i16, ptr %85, i64 2
  %89 = getelementptr inbounds i16, ptr %86, i64 2
  %90 = load i16, ptr %88, align 2, !tbaa !51
  %91 = sext i16 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %82, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !40
  %94 = load i16, ptr %89, align 2, !tbaa !51
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %83, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !40
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(1) %97) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %133

100:                                              ; preds = %84
  %101 = load ptr, ptr %23, align 8, !tbaa !45
  %102 = getelementptr inbounds i16, ptr %85, i64 3
  %103 = load i16, ptr %102, align 2, !tbaa !51
  %104 = sext i16 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %101, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !40
  %107 = load ptr, ptr %25, align 8, !tbaa !45
  %108 = getelementptr inbounds i16, ptr %86, i64 3
  %109 = load i16, ptr %108, align 2, !tbaa !51
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %107, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !40
  %113 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull dereferenceable(1) %112) #14
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %100
  %116 = load i8, ptr %106, align 1, !tbaa !34
  switch i8 %116, label %122 [
    i8 42, label %123
    i8 40, label %117
  ]

117:                                              ; preds = %115
  %118 = getelementptr inbounds i8, ptr %106, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !34
  %120 = icmp eq i8 %119, 42
  %121 = zext i1 %120 to i8
  br label %123

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %115, %117, %122
  %124 = phi i8 [ 1, %115 ], [ %121, %117 ], [ 0, %122 ]
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %24, align 8, !tbaa !66
  %128 = load i32, ptr %26, align 8, !tbaa !66
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126, %123
  %131 = add nsw i32 %87, -1
  %132 = icmp sgt i32 %87, 1
  br i1 %132, label %84, label %133, !llvm.loop !69

133:                                              ; preds = %130, %84, %100, %126, %79
  %134 = phi i32 [ %67, %79 ], [ 0, %130 ], [ %87, %84 ], [ %87, %100 ], [ %87, %126 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i8 1, ptr %60, align 1, !tbaa !34
  br label %137

137:                                              ; preds = %56, %66, %136, %133, %59
  %138 = add nuw nsw i64 %28, 1
  %139 = load i32, ptr %3, align 8, !tbaa !50
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %27, label %142, !llvm.loop !70

142:                                              ; preds = %137, %8
  store i8 1, ptr %11, align 1, !tbaa !34
  %143 = load i32, ptr %3, align 8, !tbaa !50
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142, %152
  %146 = phi i64 [ %153, %152 ], [ 0, %142 ]
  %147 = getelementptr inbounds i8, ptr %11, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !34
  %149 = icmp eq i8 %148, 2
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = trunc i64 %146 to i32
  tail call fastcc void @recurs_test_compflags(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %151)
  br label %152

152:                                              ; preds = %145, %150
  %153 = add nuw nsw i64 %146, 1
  %154 = load i32, ptr %3, align 8, !tbaa !50
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %153, %155
  br i1 %156, label %145, label %157, !llvm.loop !71

157:                                              ; preds = %152, %142, %6
  %158 = phi ptr [ null, %6 ], [ %11, %142 ], [ %11, %152 ]
  ret ptr %158
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @recurs_test_compflags(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = load i16, ptr %8, align 2, !tbaa !51
  %10 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %15 = zext i32 %2 to i64
  br label %16

16:                                               ; preds = %13, %60
  %17 = phi i64 [ 0, %13 ], [ %61, %60 ]
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %60, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %1, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds i16, ptr %26, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !51
  %29 = sext i16 %28 to i32
  %30 = icmp sgt i16 %28, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %23
  %32 = trunc i64 %17 to i32
  br label %33

33:                                               ; preds = %31, %57
  %34 = phi ptr [ %36, %57 ], [ %26, %31 ]
  %35 = phi i32 [ %58, %57 ], [ 0, %31 ]
  %36 = getelementptr inbounds i16, ptr %34, i64 2
  %37 = load i16, ptr %36, align 2, !tbaa !51
  %38 = icmp eq i16 %37, %9
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load ptr, ptr %14, align 8, !tbaa !45
  %41 = getelementptr inbounds i16, ptr %34, i64 3
  %42 = load i16, ptr %41, align 2, !tbaa !51
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = load i8, ptr %45, align 1, !tbaa !34
  switch i8 %46, label %52 [
    i8 42, label %53
    i8 40, label %47
  ]

47:                                               ; preds = %39
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = icmp eq i8 %49, 42
  %51 = zext i1 %50 to i8
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %39, %47, %52
  %54 = phi i8 [ 1, %39 ], [ %51, %47 ], [ 0, %52 ]
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8 2, ptr %20, align 1, !tbaa !34
  tail call fastcc void @recurs_test_compflags(ptr noundef %0, ptr noundef %1, i32 noundef %32)
  br label %57

57:                                               ; preds = %33, %56, %53
  %58 = add nuw nsw i32 %35, 1
  %59 = icmp eq i32 %58, %29
  br i1 %59, label %60, label %33, !llvm.loop !72

60:                                               ; preds = %57, %23, %16, %19
  %61 = add nuw nsw i64 %17, 1
  %62 = load i32, ptr %10, align 8, !tbaa !50
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %16, label %65, !llvm.loop !73

65:                                               ; preds = %60, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DNA_struct_switch_endian(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %362, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = load i16, ptr %8, align 2, !tbaa !51
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !51
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i16 %14, 0
  br i1 %16, label %17, label %362

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 11
  %21 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %23 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %17, %357
  %25 = phi i32 [ 0, %17 ], [ %360, %357 ]
  %26 = phi ptr [ %2, %17 ], [ %359, %357 ]
  %27 = phi ptr [ %12, %17 ], [ %28, %357 ]
  %28 = getelementptr inbounds i16, ptr %27, i64 2
  %29 = load ptr, ptr %18, align 8, !tbaa !46
  %30 = load i16, ptr %28, align 2, !tbaa !51
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = load ptr, ptr %19, align 8, !tbaa !45
  %35 = getelementptr inbounds i16, ptr %27, i64 3
  %36 = load i16, ptr %35, align 2, !tbaa !51
  %37 = sext i16 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = tail call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %30, i16 noundef signext %36)
  %41 = load i16, ptr %28, align 2, !tbaa !51
  %42 = icmp slt i16 %41, %9
  br i1 %42, label %169, label %43

43:                                               ; preds = %24
  %44 = load i8, ptr %39, align 1, !tbaa !34
  switch i8 %44, label %50 [
    i8 42, label %51
    i8 40, label %45
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds i8, ptr %39, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = icmp eq i8 %47, 42
  %49 = zext i1 %48 to i8
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %43, %45, %50
  %52 = phi i8 [ 1, %43 ], [ %49, %45 ], [ 0, %50 ]
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %169

54:                                               ; preds = %51
  %55 = load i16, ptr %13, align 2, !tbaa !51
  %56 = sext i16 %55 to i32
  %57 = icmp sgt i16 %55, 0
  br i1 %57, label %58, label %113

58:                                               ; preds = %54, %108
  %59 = phi ptr [ %62, %108 ], [ %12, %54 ]
  %60 = phi ptr [ %110, %108 ], [ %2, %54 ]
  %61 = phi i32 [ %111, %108 ], [ 0, %54 ]
  %62 = getelementptr inbounds i16, ptr %59, i64 2
  %63 = load ptr, ptr %18, align 8, !tbaa !46
  %64 = load i16, ptr %62, align 2, !tbaa !51
  %65 = sext i16 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !40
  %68 = load ptr, ptr %19, align 8, !tbaa !45
  %69 = getelementptr inbounds i16, ptr %59, i64 3
  %70 = load i16, ptr %69, align 2, !tbaa !51
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %68, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !40
  %74 = tail call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %64, i16 noundef signext %70)
  %75 = load i8, ptr %39, align 1, !tbaa !34
  %76 = load i8, ptr %73, align 1, !tbaa !34
  %77 = icmp eq i8 %75, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %58
  %79 = icmp eq i8 %75, 91
  %80 = icmp eq i8 %76, 91
  %81 = or i1 %80, %79
  %82 = icmp eq i8 %75, 0
  %83 = or i1 %82, %81
  %84 = icmp eq i8 %76, 0
  %85 = or i1 %84, %83
  br i1 %85, label %102, label %86

86:                                               ; preds = %78, %94
  %87 = phi i64 [ %88, %94 ], [ 0, %78 ]
  %88 = add nuw i64 %87, 1
  %89 = getelementptr inbounds i8, ptr %39, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !34
  %91 = getelementptr inbounds i8, ptr %73, i64 %88
  %92 = load i8, ptr %91, align 1, !tbaa !34
  %93 = icmp eq i8 %90, %92
  br i1 %93, label %94, label %108, !llvm.loop !74

94:                                               ; preds = %86
  %95 = icmp eq i8 %90, 91
  %96 = icmp eq i8 %92, 91
  %97 = or i1 %96, %95
  %98 = icmp eq i8 %90, 0
  %99 = or i1 %98, %97
  %100 = icmp eq i8 %92, 0
  %101 = or i1 %100, %99
  br i1 %101, label %102, label %86, !llvm.loop !74

102:                                              ; preds = %94, %78
  %103 = phi i1 [ %77, %78 ], [ %93, %94 ]
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %67) #14
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, ptr %60, ptr null
  br label %113

108:                                              ; preds = %86, %102, %58
  %109 = sext i32 %74 to i64
  %110 = getelementptr inbounds i8, ptr %60, i64 %109
  %111 = add nuw nsw i32 %61, 1
  %112 = icmp eq i32 %111, %56
  br i1 %112, label %113, label %58, !llvm.loop !75

113:                                              ; preds = %108, %104, %54
  %114 = phi ptr [ null, %54 ], [ %107, %104 ], [ null, %108 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %357, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %20, align 8, !tbaa !49
  %118 = load i32, ptr %21, align 8, !tbaa !50
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load ptr, ptr %6, align 8, !tbaa !47
  %122 = sext i32 %117 to i64
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !40
  %125 = load ptr, ptr %18, align 8, !tbaa !46
  %126 = load i16, ptr %124, align 2, !tbaa !51
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %125, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !40
  %130 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %129, ptr noundef nonnull dereferenceable(1) %33) #14
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %120, %116
  %133 = load ptr, ptr %22, align 8, !tbaa !48
  %134 = tail call ptr @BLI_ghash_lookup(ptr noundef %133, ptr noundef %33) #13
  %135 = ptrtoint ptr %134 to i64
  %136 = trunc i64 %135 to i32
  %137 = add i32 %136, -1
  br label %138

138:                                              ; preds = %120, %132
  %139 = phi i32 [ %137, %132 ], [ %117, %120 ]
  br label %140

140:                                              ; preds = %156, %138
  %141 = phi i64 [ %159, %156 ], [ 0, %138 ]
  %142 = phi i32 [ %157, %156 ], [ 1, %138 ]
  %143 = phi ptr [ %158, %156 ], [ null, %138 ]
  %144 = getelementptr inbounds i8, ptr %39, i64 %141
  %145 = load i8, ptr %144, align 1, !tbaa !34
  switch i8 %145, label %148 [
    i8 0, label %160
    i8 91, label %146
  ]

146:                                              ; preds = %140
  %147 = getelementptr i8, ptr %144, i64 1
  br label %156

148:                                              ; preds = %140
  %149 = icmp eq i8 %145, 93
  %150 = icmp ne ptr %143, null
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = tail call i64 @strtol(ptr nocapture noundef nonnull %143, ptr noundef null, i32 noundef 10) #13
  %154 = trunc i64 %153 to i32
  %155 = mul nsw i32 %142, %154
  br label %156

156:                                              ; preds = %152, %148, %146
  %157 = phi i32 [ %142, %146 ], [ %155, %152 ], [ %142, %148 ]
  %158 = phi ptr [ %147, %146 ], [ %143, %152 ], [ %143, %148 ]
  %159 = add nuw i64 %141, 1
  br label %140, !llvm.loop !37

160:                                              ; preds = %140
  %161 = sdiv i32 %40, %142
  %162 = sext i32 %161 to i64
  br label %163

163:                                              ; preds = %160, %163
  %164 = phi ptr [ %114, %160 ], [ %167, %163 ]
  %165 = phi i32 [ %142, %160 ], [ %166, %163 ]
  %166 = add nsw i32 %165, -1
  tail call void @DNA_struct_switch_endian(ptr noundef %0, i32 noundef %139, ptr noundef %164)
  %167 = getelementptr inbounds i8, ptr %164, i64 %162
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %357, label %163, !llvm.loop !76

169:                                              ; preds = %51, %24
  %170 = load i8, ptr %39, align 1, !tbaa !34
  switch i8 %170, label %176 [
    i8 42, label %177
    i8 40, label %171
  ]

171:                                              ; preds = %169
  %172 = getelementptr inbounds i8, ptr %39, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !34
  %174 = icmp eq i8 %173, 42
  %175 = zext i1 %174 to i8
  br label %177

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %169, %171, %176
  %178 = phi i8 [ 1, %169 ], [ %175, %171 ], [ 0, %176 ]
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %226, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %23, align 8, !tbaa !66
  %182 = icmp eq i32 %181, 8
  br i1 %182, label %183, label %357

183:                                              ; preds = %180, %201
  %184 = phi i64 [ %204, %201 ], [ 0, %180 ]
  %185 = phi i32 [ %202, %201 ], [ 1, %180 ]
  %186 = phi ptr [ %203, %201 ], [ null, %180 ]
  %187 = getelementptr inbounds i8, ptr %39, i64 %184
  %188 = load i8, ptr %187, align 1, !tbaa !34
  switch i8 %188, label %193 [
    i8 0, label %189
    i8 91, label %191
  ]

189:                                              ; preds = %183
  %190 = icmp eq i32 %185, 0
  br i1 %190, label %357, label %205

191:                                              ; preds = %183
  %192 = getelementptr i8, ptr %187, i64 1
  br label %201

193:                                              ; preds = %183
  %194 = icmp eq i8 %188, 93
  %195 = icmp ne ptr %186, null
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = tail call i64 @strtol(ptr nocapture noundef nonnull %186, ptr noundef null, i32 noundef 10) #13
  %199 = trunc i64 %198 to i32
  %200 = mul nsw i32 %185, %199
  br label %201

201:                                              ; preds = %197, %193, %191
  %202 = phi i32 [ %185, %191 ], [ %200, %197 ], [ %185, %193 ]
  %203 = phi ptr [ %192, %191 ], [ %186, %197 ], [ %186, %193 ]
  %204 = add nuw i64 %184, 1
  br label %183, !llvm.loop !37

205:                                              ; preds = %189, %205
  %206 = phi ptr [ %224, %205 ], [ %26, %189 ]
  %207 = phi i32 [ %208, %205 ], [ %185, %189 ]
  %208 = add nsw i32 %207, -1
  %209 = load i8, ptr %206, align 1, !tbaa !34
  %210 = getelementptr inbounds i8, ptr %206, i64 7
  %211 = load i8, ptr %210, align 1, !tbaa !34
  store i8 %211, ptr %206, align 1, !tbaa !34
  store i8 %209, ptr %210, align 1, !tbaa !34
  %212 = getelementptr inbounds i8, ptr %206, i64 1
  %213 = load i8, ptr %212, align 1, !tbaa !34
  %214 = getelementptr inbounds i8, ptr %206, i64 6
  %215 = load i8, ptr %214, align 1, !tbaa !34
  store i8 %215, ptr %212, align 1, !tbaa !34
  store i8 %213, ptr %214, align 1, !tbaa !34
  %216 = getelementptr inbounds i8, ptr %206, i64 2
  %217 = load i8, ptr %216, align 1, !tbaa !34
  %218 = getelementptr inbounds i8, ptr %206, i64 5
  %219 = load i8, ptr %218, align 1, !tbaa !34
  store i8 %219, ptr %216, align 1, !tbaa !34
  store i8 %217, ptr %218, align 1, !tbaa !34
  %220 = getelementptr inbounds i8, ptr %206, i64 3
  %221 = load i8, ptr %220, align 1, !tbaa !34
  %222 = getelementptr inbounds i8, ptr %206, i64 4
  %223 = load i8, ptr %222, align 1, !tbaa !34
  store i8 %223, ptr %220, align 1, !tbaa !34
  store i8 %221, ptr %222, align 1, !tbaa !34
  %224 = getelementptr inbounds i8, ptr %206, i64 8
  %225 = icmp eq i32 %208, 0
  br i1 %225, label %357, label %205, !llvm.loop !77

226:                                              ; preds = %177
  switch i16 %41, label %357 [
    i16 2, label %229
    i16 3, label %229
    i16 4, label %228
    i16 5, label %228
    i16 6, label %228
    i16 7, label %228
    i16 10, label %227
    i16 11, label %227
  ]

227:                                              ; preds = %226, %226
  br label %314

228:                                              ; preds = %226, %226, %226, %226
  br label %279

229:                                              ; preds = %226, %226
  switch i8 %170, label %247 [
    i8 98, label %230
    i8 105, label %238
  ]

230:                                              ; preds = %229
  %231 = getelementptr inbounds i8, ptr %39, i64 1
  %232 = load i8, ptr %231, align 1, !tbaa !34
  %233 = icmp eq i8 %232, 108
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.4) #14
  br label %244

236:                                              ; preds = %230
  %237 = icmp eq i8 %170, 105
  br i1 %237, label %238, label %247

238:                                              ; preds = %229, %236
  %239 = getelementptr inbounds i8, ptr %39, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !34
  %241 = icmp eq i8 %240, 112
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.5) #14
  br label %244

244:                                              ; preds = %242, %234
  %245 = phi i32 [ %235, %234 ], [ %243, %242 ]
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %357, label %247

247:                                              ; preds = %229, %238, %236, %244
  br label %248

248:                                              ; preds = %247, %266
  %249 = phi i64 [ %269, %266 ], [ 0, %247 ]
  %250 = phi i32 [ %267, %266 ], [ 1, %247 ]
  %251 = phi ptr [ %268, %266 ], [ null, %247 ]
  %252 = getelementptr inbounds i8, ptr %39, i64 %249
  %253 = load i8, ptr %252, align 1, !tbaa !34
  switch i8 %253, label %258 [
    i8 0, label %254
    i8 91, label %256
  ]

254:                                              ; preds = %248
  %255 = icmp eq i32 %250, 0
  br i1 %255, label %357, label %270

256:                                              ; preds = %248
  %257 = getelementptr i8, ptr %252, i64 1
  br label %266

258:                                              ; preds = %248
  %259 = icmp eq i8 %253, 93
  %260 = icmp ne ptr %251, null
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = tail call i64 @strtol(ptr nocapture noundef nonnull %251, ptr noundef null, i32 noundef 10) #13
  %264 = trunc i64 %263 to i32
  %265 = mul nsw i32 %250, %264
  br label %266

266:                                              ; preds = %262, %258, %256
  %267 = phi i32 [ %250, %256 ], [ %265, %262 ], [ %250, %258 ]
  %268 = phi ptr [ %257, %256 ], [ %251, %262 ], [ %251, %258 ]
  %269 = add nuw i64 %249, 1
  br label %248, !llvm.loop !37

270:                                              ; preds = %254, %270
  %271 = phi ptr [ %277, %270 ], [ %26, %254 ]
  %272 = phi i32 [ %273, %270 ], [ %250, %254 ]
  %273 = add nsw i32 %272, -1
  %274 = load i8, ptr %271, align 1, !tbaa !34
  %275 = getelementptr inbounds i8, ptr %271, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !34
  store i8 %276, ptr %271, align 1, !tbaa !34
  store i8 %274, ptr %275, align 1, !tbaa !34
  %277 = getelementptr inbounds i8, ptr %271, i64 2
  %278 = icmp eq i32 %273, 0
  br i1 %278, label %357, label %270, !llvm.loop !78

279:                                              ; preds = %228, %297
  %280 = phi i64 [ %300, %297 ], [ 0, %228 ]
  %281 = phi i32 [ %298, %297 ], [ 1, %228 ]
  %282 = phi ptr [ %299, %297 ], [ null, %228 ]
  %283 = getelementptr inbounds i8, ptr %39, i64 %280
  %284 = load i8, ptr %283, align 1, !tbaa !34
  switch i8 %284, label %289 [
    i8 0, label %285
    i8 91, label %287
  ]

285:                                              ; preds = %279
  %286 = icmp eq i32 %281, 0
  br i1 %286, label %357, label %301

287:                                              ; preds = %279
  %288 = getelementptr i8, ptr %283, i64 1
  br label %297

289:                                              ; preds = %279
  %290 = icmp eq i8 %284, 93
  %291 = icmp ne ptr %282, null
  %292 = select i1 %290, i1 %291, i1 false
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = tail call i64 @strtol(ptr nocapture noundef nonnull %282, ptr noundef null, i32 noundef 10) #13
  %295 = trunc i64 %294 to i32
  %296 = mul nsw i32 %281, %295
  br label %297

297:                                              ; preds = %293, %289, %287
  %298 = phi i32 [ %281, %287 ], [ %296, %293 ], [ %281, %289 ]
  %299 = phi ptr [ %288, %287 ], [ %282, %293 ], [ %282, %289 ]
  %300 = add nuw i64 %280, 1
  br label %279, !llvm.loop !37

301:                                              ; preds = %285, %301
  %302 = phi ptr [ %312, %301 ], [ %26, %285 ]
  %303 = phi i32 [ %304, %301 ], [ %281, %285 ]
  %304 = add nsw i32 %303, -1
  %305 = load i8, ptr %302, align 1, !tbaa !34
  %306 = getelementptr inbounds i8, ptr %302, i64 3
  %307 = load i8, ptr %306, align 1, !tbaa !34
  store i8 %307, ptr %302, align 1, !tbaa !34
  store i8 %305, ptr %306, align 1, !tbaa !34
  %308 = getelementptr inbounds i8, ptr %302, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa !34
  %310 = getelementptr inbounds i8, ptr %302, i64 2
  %311 = load i8, ptr %310, align 1, !tbaa !34
  store i8 %311, ptr %308, align 1, !tbaa !34
  store i8 %309, ptr %310, align 1, !tbaa !34
  %312 = getelementptr inbounds i8, ptr %302, i64 4
  %313 = icmp eq i32 %304, 0
  br i1 %313, label %357, label %301, !llvm.loop !79

314:                                              ; preds = %227, %332
  %315 = phi i64 [ %335, %332 ], [ 0, %227 ]
  %316 = phi i32 [ %333, %332 ], [ 1, %227 ]
  %317 = phi ptr [ %334, %332 ], [ null, %227 ]
  %318 = getelementptr inbounds i8, ptr %39, i64 %315
  %319 = load i8, ptr %318, align 1, !tbaa !34
  switch i8 %319, label %324 [
    i8 0, label %320
    i8 91, label %322
  ]

320:                                              ; preds = %314
  %321 = icmp eq i32 %316, 0
  br i1 %321, label %357, label %336

322:                                              ; preds = %314
  %323 = getelementptr i8, ptr %318, i64 1
  br label %332

324:                                              ; preds = %314
  %325 = icmp eq i8 %319, 93
  %326 = icmp ne ptr %317, null
  %327 = select i1 %325, i1 %326, i1 false
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = tail call i64 @strtol(ptr nocapture noundef nonnull %317, ptr noundef null, i32 noundef 10) #13
  %330 = trunc i64 %329 to i32
  %331 = mul nsw i32 %316, %330
  br label %332

332:                                              ; preds = %328, %324, %322
  %333 = phi i32 [ %316, %322 ], [ %331, %328 ], [ %316, %324 ]
  %334 = phi ptr [ %323, %322 ], [ %317, %328 ], [ %317, %324 ]
  %335 = add nuw i64 %315, 1
  br label %314, !llvm.loop !37

336:                                              ; preds = %320, %336
  %337 = phi ptr [ %355, %336 ], [ %26, %320 ]
  %338 = phi i32 [ %339, %336 ], [ %316, %320 ]
  %339 = add nsw i32 %338, -1
  %340 = load i8, ptr %337, align 1, !tbaa !34
  %341 = getelementptr inbounds i8, ptr %337, i64 7
  %342 = load i8, ptr %341, align 1, !tbaa !34
  store i8 %342, ptr %337, align 1, !tbaa !34
  store i8 %340, ptr %341, align 1, !tbaa !34
  %343 = getelementptr inbounds i8, ptr %337, i64 1
  %344 = load i8, ptr %343, align 1, !tbaa !34
  %345 = getelementptr inbounds i8, ptr %337, i64 6
  %346 = load i8, ptr %345, align 1, !tbaa !34
  store i8 %346, ptr %343, align 1, !tbaa !34
  store i8 %344, ptr %345, align 1, !tbaa !34
  %347 = getelementptr inbounds i8, ptr %337, i64 2
  %348 = load i8, ptr %347, align 1, !tbaa !34
  %349 = getelementptr inbounds i8, ptr %337, i64 5
  %350 = load i8, ptr %349, align 1, !tbaa !34
  store i8 %350, ptr %347, align 1, !tbaa !34
  store i8 %348, ptr %349, align 1, !tbaa !34
  %351 = getelementptr inbounds i8, ptr %337, i64 3
  %352 = load i8, ptr %351, align 1, !tbaa !34
  %353 = getelementptr inbounds i8, ptr %337, i64 4
  %354 = load i8, ptr %353, align 1, !tbaa !34
  store i8 %354, ptr %351, align 1, !tbaa !34
  store i8 %352, ptr %353, align 1, !tbaa !34
  %355 = getelementptr inbounds i8, ptr %337, i64 8
  %356 = icmp eq i32 %339, 0
  br i1 %356, label %357, label %336, !llvm.loop !80

357:                                              ; preds = %163, %205, %336, %301, %270, %189, %320, %285, %254, %226, %244, %180, %113
  %358 = sext i32 %40 to i64
  %359 = getelementptr inbounds i8, ptr %26, i64 %358
  %360 = add nuw nsw i32 %25, 1
  %361 = icmp eq i32 %360, %15
  br i1 %361, label %362, label %24, !llvm.loop !81

362:                                              ; preds = %357, %5, %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @elementsize(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = sext i16 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #14
  %10 = load i8, ptr %8, align 1, !tbaa !34
  switch i8 %10, label %47 [
    i8 42, label %15
    i8 40, label %11
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 42
  br i1 %14, label %15, label %47

15:                                               ; preds = %3, %11
  %16 = shl i64 %9, 32
  %17 = add i64 %16, -4294967296
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds i8, ptr %8, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = icmp eq i8 %20, 93
  br i1 %21, label %22, label %42

22:                                               ; preds = %15, %38
  %23 = phi i64 [ %41, %38 ], [ 0, %15 ]
  %24 = phi i32 [ %39, %38 ], [ 1, %15 ]
  %25 = phi ptr [ %40, %38 ], [ null, %15 ]
  %26 = getelementptr inbounds i8, ptr %8, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !34
  switch i8 %27, label %30 [
    i8 0, label %42
    i8 91, label %28
  ]

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %26, i64 1
  br label %38

30:                                               ; preds = %22
  %31 = icmp eq i8 %27, 93
  %32 = icmp ne ptr %25, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = tail call i64 @strtol(ptr nocapture noundef nonnull %25, ptr noundef null, i32 noundef 10) #13
  %36 = trunc i64 %35 to i32
  %37 = mul nsw i32 %24, %36
  br label %38

38:                                               ; preds = %34, %30, %28
  %39 = phi i32 [ %24, %28 ], [ %37, %34 ], [ %24, %30 ]
  %40 = phi ptr [ %29, %28 ], [ %25, %34 ], [ %25, %30 ]
  %41 = add nuw i64 %23, 1
  br label %22, !llvm.loop !37

42:                                               ; preds = %22, %15
  %43 = phi i32 [ 1, %15 ], [ %24, %22 ]
  %44 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !66
  %46 = mul nsw i32 %45, %43
  br label %88

47:                                               ; preds = %3, %11
  %48 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = sext i16 %1 to i64
  %51 = getelementptr inbounds i16, ptr %49, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !51
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %47
  %55 = shl i64 %9, 32
  %56 = add i64 %55, -4294967296
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds i8, ptr %8, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !34
  %60 = icmp eq i8 %59, 93
  br i1 %60, label %61, label %81

61:                                               ; preds = %54, %77
  %62 = phi i64 [ %80, %77 ], [ 0, %54 ]
  %63 = phi i32 [ %78, %77 ], [ 1, %54 ]
  %64 = phi ptr [ %79, %77 ], [ null, %54 ]
  %65 = getelementptr inbounds i8, ptr %8, i64 %62
  %66 = load i8, ptr %65, align 1, !tbaa !34
  switch i8 %66, label %69 [
    i8 0, label %81
    i8 91, label %67
  ]

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %65, i64 1
  br label %77

69:                                               ; preds = %61
  %70 = icmp eq i8 %66, 93
  %71 = icmp ne ptr %64, null
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = tail call i64 @strtol(ptr nocapture noundef nonnull %64, ptr noundef null, i32 noundef 10) #13
  %75 = trunc i64 %74 to i32
  %76 = mul nsw i32 %63, %75
  br label %77

77:                                               ; preds = %73, %69, %67
  %78 = phi i32 [ %63, %67 ], [ %76, %73 ], [ %63, %69 ]
  %79 = phi ptr [ %68, %67 ], [ %64, %73 ], [ %64, %69 ]
  %80 = add nuw i64 %62, 1
  br label %61, !llvm.loop !37

81:                                               ; preds = %61, %54
  %82 = phi i32 [ 1, %54 ], [ %63, %61 ]
  %83 = load ptr, ptr %48, align 8, !tbaa !61
  %84 = getelementptr inbounds i16, ptr %83, i64 %50
  %85 = load i16, ptr %84, align 2, !tbaa !51
  %86 = sext i16 %85 to i32
  %87 = mul nsw i32 %82, %86
  br label %88

88:                                               ; preds = %47, %81, %42
  %89 = phi i32 [ %46, %42 ], [ %87, %81 ], [ 0, %47 ]
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DNA_struct_reconstruct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load i16, ptr %11, align 2, !tbaa !51
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = getelementptr inbounds i16, ptr %19, i64 %15
  %21 = load i16, ptr %20, align 2, !tbaa !51
  %22 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !50
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = sext i32 %23 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load i16, ptr %32, align 2, !tbaa !51
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %17) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %27, %6
  %42 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = tail call ptr @BLI_ghash_lookup(ptr noundef %43, ptr noundef %17) #13
  %45 = ptrtoint ptr %44 to i64
  %46 = trunc i64 %45 to i32
  %47 = add i32 %46, -1
  br label %48

48:                                               ; preds = %27, %41
  %49 = phi i32 [ %47, %41 ], [ %23, %27 ]
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  %54 = sext i32 %49 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !40
  %57 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  %59 = load i16, ptr %56, align 2, !tbaa !51
  %60 = sext i16 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !51
  %63 = sext i16 %62 to i32
  br label %64

64:                                               ; preds = %51, %48
  %65 = phi i32 [ %63, %51 ], [ 0, %48 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %69 = mul nsw i32 %65, %4
  %70 = sext i32 %69 to i64
  %71 = tail call ptr %68(i64 noundef %70, ptr noundef nonnull @.str.6) #13
  %72 = icmp sgt i32 %4, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = sext i32 %65 to i64
  %75 = sext i16 %21 to i64
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi ptr [ %5, %73 ], [ %81, %76 ]
  %78 = phi ptr [ %71, %73 ], [ %80, %76 ]
  %79 = phi i32 [ 0, %73 ], [ %82, %76 ]
  tail call fastcc void @reconstruct_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %77, i32 noundef %49, ptr noundef %78)
  %80 = getelementptr inbounds i8, ptr %78, i64 %74
  %81 = getelementptr inbounds i8, ptr %77, i64 %75
  %82 = add nuw nsw i32 %79, 1
  %83 = icmp eq i32 %82, %4
  br i1 %83, label %84, label %76, !llvm.loop !82

84:                                               ; preds = %76, %67, %64
  %85 = phi ptr [ null, %64 ], [ %71, %67 ], [ %71, %76 ]
  ret ptr %85
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reconstruct_struct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 {
  %8 = icmp eq i32 %3, -1
  %9 = icmp eq i32 %5, -1
  %10 = or i1 %8, %9
  br i1 %10, label %524, label %11

11:                                               ; preds = %7
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 %12
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = load i16, ptr %20, align 2, !tbaa !51
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds i16, ptr %22, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !51
  %27 = sext i16 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 %27, i1 false)
  br label %524

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = load i16, ptr %31, align 2, !tbaa !51
  %33 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds ptr, ptr %34, i64 %12
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = sext i32 %5 to i64
  %38 = getelementptr inbounds ptr, ptr %30, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = getelementptr inbounds i16, ptr %39, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !51
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i16 %41, 0
  br i1 %43, label %44, label %524

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %46 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %47 = getelementptr inbounds i16, ptr %36, i64 1
  %48 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %49 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 3
  %50 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 11
  %51 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 8
  %52 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %53 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 10
  %54 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 11
  %55 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %56 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %57 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 3
  %58 = getelementptr inbounds i16, ptr %36, i64 1
  %59 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 6
  %60 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 3
  %61 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %62 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 4
  %63 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 4
  %64 = getelementptr inbounds %struct.SDNA, ptr %1, i64 0, i32 4
  br label %65

65:                                               ; preds = %44, %519
  %66 = phi ptr [ %6, %44 ], [ %521, %519 ]
  %67 = phi i32 [ 0, %44 ], [ %522, %519 ]
  %68 = phi ptr [ %39, %44 ], [ %70, %519 ]
  %69 = phi ptr [ undef, %44 ], [ %520, %519 ]
  %70 = getelementptr inbounds i16, ptr %68, i64 2
  %71 = load ptr, ptr %45, align 8, !tbaa !46
  %72 = load i16, ptr %70, align 2, !tbaa !51
  %73 = sext i16 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !40
  %76 = load ptr, ptr %46, align 8, !tbaa !45
  %77 = getelementptr inbounds i16, ptr %68, i64 3
  %78 = load i16, ptr %77, align 2, !tbaa !51
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %76, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !40
  %82 = tail call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %72, i16 noundef signext %78)
  %83 = load i16, ptr %70, align 2, !tbaa !51
  %84 = icmp slt i16 %83, %32
  br i1 %84, label %85, label %86

85:                                               ; preds = %94, %65
  br label %278

86:                                               ; preds = %65
  %87 = load i8, ptr %81, align 1, !tbaa !34
  switch i8 %87, label %93 [
    i8 42, label %94
    i8 40, label %88
  ]

88:                                               ; preds = %86
  %89 = getelementptr inbounds i8, ptr %81, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !34
  %91 = icmp eq i8 %90, 42
  %92 = zext i1 %91 to i8
  br label %94

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %86, %88, %93
  %95 = phi i8 [ 1, %86 ], [ %92, %88 ], [ 0, %93 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %85

97:                                               ; preds = %94
  %98 = load i16, ptr %47, align 2, !tbaa !51
  %99 = sext i16 %98 to i32
  %100 = icmp sgt i16 %98, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %97, %152
  %102 = phi ptr [ %105, %152 ], [ %36, %97 ]
  %103 = phi ptr [ %154, %152 ], [ %4, %97 ]
  %104 = phi i32 [ %155, %152 ], [ 0, %97 ]
  %105 = getelementptr inbounds i16, ptr %102, i64 2
  %106 = load ptr, ptr %48, align 8, !tbaa !46
  %107 = load i16, ptr %105, align 2, !tbaa !51
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !40
  %111 = load ptr, ptr %49, align 8, !tbaa !45
  %112 = getelementptr inbounds i16, ptr %102, i64 3
  %113 = load i16, ptr %112, align 2, !tbaa !51
  %114 = sext i16 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %111, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !40
  %117 = tail call fastcc i32 @elementsize(ptr noundef %1, i16 noundef signext %107, i16 noundef signext %113)
  %118 = load i8, ptr %81, align 1, !tbaa !34
  %119 = load i8, ptr %116, align 1, !tbaa !34
  %120 = icmp eq i8 %118, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %101
  %122 = icmp eq i8 %118, 91
  %123 = icmp eq i8 %119, 91
  %124 = or i1 %123, %122
  %125 = icmp eq i8 %118, 0
  %126 = or i1 %125, %124
  %127 = icmp eq i8 %119, 0
  %128 = or i1 %127, %126
  br i1 %128, label %145, label %129

129:                                              ; preds = %121, %137
  %130 = phi i64 [ %131, %137 ], [ 0, %121 ]
  %131 = add nuw i64 %130, 1
  %132 = getelementptr inbounds i8, ptr %81, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !34
  %134 = getelementptr inbounds i8, ptr %116, i64 %131
  %135 = load i8, ptr %134, align 1, !tbaa !34
  %136 = icmp eq i8 %133, %135
  br i1 %136, label %137, label %152, !llvm.loop !74

137:                                              ; preds = %129
  %138 = icmp eq i8 %133, 91
  %139 = icmp eq i8 %135, 91
  %140 = or i1 %139, %138
  %141 = icmp eq i8 %133, 0
  %142 = or i1 %141, %140
  %143 = icmp eq i8 %135, 0
  %144 = or i1 %143, %142
  br i1 %144, label %145, label %129, !llvm.loop !74

145:                                              ; preds = %137, %121
  %146 = phi i1 [ %120, %121 ], [ %136, %137 ]
  br i1 %146, label %147, label %152

147:                                              ; preds = %145
  %148 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %110) #14
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, ptr %105, ptr %69
  %151 = select i1 %149, ptr %103, ptr null
  br label %157

152:                                              ; preds = %129, %145, %101
  %153 = sext i32 %117 to i64
  %154 = getelementptr inbounds i8, ptr %103, i64 %153
  %155 = add nuw nsw i32 %104, 1
  %156 = icmp eq i32 %155, %99
  br i1 %156, label %157, label %101, !llvm.loop !75

157:                                              ; preds = %152, %147, %97
  %158 = phi ptr [ %69, %97 ], [ %150, %147 ], [ %69, %152 ]
  %159 = phi ptr [ null, %97 ], [ %151, %147 ], [ null, %152 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %275, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %50, align 8, !tbaa !49
  %163 = load i32, ptr %51, align 8, !tbaa !50
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load ptr, ptr %33, align 8, !tbaa !47
  %167 = sext i32 %162 to i64
  %168 = getelementptr inbounds ptr, ptr %166, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  %170 = load ptr, ptr %52, align 8, !tbaa !46
  %171 = load i16, ptr %169, align 2, !tbaa !51
  %172 = sext i16 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !40
  %175 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %174, ptr noundef nonnull dereferenceable(1) %75) #14
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %165, %161
  %178 = load ptr, ptr %53, align 8, !tbaa !48
  %179 = tail call ptr @BLI_ghash_lookup(ptr noundef %178, ptr noundef %75) #13
  %180 = ptrtoint ptr %179 to i64
  %181 = trunc i64 %180 to i32
  %182 = add i32 %181, -1
  br label %183

183:                                              ; preds = %165, %177
  %184 = phi i32 [ %182, %177 ], [ %162, %165 ]
  %185 = load i32, ptr %54, align 8, !tbaa !49
  %186 = load i32, ptr %55, align 8, !tbaa !50
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %183
  %189 = load ptr, ptr %29, align 8, !tbaa !47
  %190 = sext i32 %185 to i64
  %191 = getelementptr inbounds ptr, ptr %189, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !40
  %193 = load ptr, ptr %45, align 8, !tbaa !46
  %194 = load i16, ptr %192, align 2, !tbaa !51
  %195 = sext i16 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %193, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !40
  %198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(1) %75) #14
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %188, %183
  %201 = load ptr, ptr %56, align 8, !tbaa !48
  %202 = tail call ptr @BLI_ghash_lookup(ptr noundef %201, ptr noundef %75) #13
  %203 = ptrtoint ptr %202 to i64
  %204 = trunc i64 %203 to i32
  %205 = add i32 %204, -1
  br label %206

206:                                              ; preds = %188, %200
  %207 = phi i32 [ %205, %200 ], [ %185, %188 ]
  br label %208

208:                                              ; preds = %224, %206
  %209 = phi i64 [ %227, %224 ], [ 0, %206 ]
  %210 = phi i32 [ %225, %224 ], [ 1, %206 ]
  %211 = phi ptr [ %226, %224 ], [ null, %206 ]
  %212 = getelementptr inbounds i8, ptr %81, i64 %209
  %213 = load i8, ptr %212, align 1, !tbaa !34
  switch i8 %213, label %216 [
    i8 0, label %228
    i8 91, label %214
  ]

214:                                              ; preds = %208
  %215 = getelementptr i8, ptr %212, i64 1
  br label %224

216:                                              ; preds = %208
  %217 = icmp eq i8 %213, 93
  %218 = icmp ne ptr %211, null
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = tail call i64 @strtol(ptr nocapture noundef nonnull %211, ptr noundef null, i32 noundef 10) #13
  %222 = trunc i64 %221 to i32
  %223 = mul nsw i32 %210, %222
  br label %224

224:                                              ; preds = %220, %216, %214
  %225 = phi i32 [ %210, %214 ], [ %223, %220 ], [ %210, %216 ]
  %226 = phi ptr [ %215, %214 ], [ %211, %220 ], [ %211, %216 ]
  %227 = add nuw i64 %209, 1
  br label %208, !llvm.loop !37

228:                                              ; preds = %208
  %229 = load ptr, ptr %57, align 8, !tbaa !45
  %230 = getelementptr inbounds i16, ptr %158, i64 1
  %231 = load i16, ptr %230, align 2, !tbaa !51
  %232 = sext i16 %231 to i64
  %233 = getelementptr inbounds ptr, ptr %229, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !40
  br label %235

235:                                              ; preds = %251, %228
  %236 = phi i64 [ %254, %251 ], [ 0, %228 ]
  %237 = phi i32 [ %252, %251 ], [ 1, %228 ]
  %238 = phi ptr [ %253, %251 ], [ null, %228 ]
  %239 = getelementptr inbounds i8, ptr %234, i64 %236
  %240 = load i8, ptr %239, align 1, !tbaa !34
  switch i8 %240, label %243 [
    i8 0, label %255
    i8 91, label %241
  ]

241:                                              ; preds = %235
  %242 = getelementptr i8, ptr %239, i64 1
  br label %251

243:                                              ; preds = %235
  %244 = icmp eq i8 %240, 93
  %245 = icmp ne ptr %238, null
  %246 = select i1 %244, i1 %245, i1 false
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = tail call i64 @strtol(ptr nocapture noundef nonnull %238, ptr noundef null, i32 noundef 10) #13
  %249 = trunc i64 %248 to i32
  %250 = mul nsw i32 %237, %249
  br label %251

251:                                              ; preds = %247, %243, %241
  %252 = phi i32 [ %237, %241 ], [ %250, %247 ], [ %237, %243 ]
  %253 = phi ptr [ %242, %241 ], [ %238, %247 ], [ %238, %243 ]
  %254 = add nuw i64 %236, 1
  br label %235, !llvm.loop !37

255:                                              ; preds = %235
  %256 = load i16, ptr %158, align 2, !tbaa !51
  %257 = load i16, ptr %230, align 2, !tbaa !51
  %258 = tail call fastcc i32 @elementsize(ptr noundef %1, i16 noundef signext %256, i16 noundef signext %257)
  %259 = sdiv i32 %82, %210
  %260 = sdiv i32 %258, %237
  %261 = sext i32 %260 to i64
  %262 = sext i32 %259 to i64
  br label %263

263:                                              ; preds = %269, %255
  %264 = phi i32 [ %210, %255 ], [ %270, %269 ]
  %265 = phi i32 [ %237, %255 ], [ %273, %269 ]
  %266 = phi ptr [ %159, %255 ], [ %271, %269 ]
  %267 = phi ptr [ %66, %255 ], [ %272, %269 ]
  %268 = icmp eq i32 %264, 0
  br i1 %268, label %519, label %269

269:                                              ; preds = %263
  %270 = add nsw i32 %264, -1
  tail call fastcc void @reconstruct_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %184, ptr noundef %266, i32 noundef %207, ptr noundef %267)
  %271 = getelementptr inbounds i8, ptr %266, i64 %261
  %272 = getelementptr inbounds i8, ptr %267, i64 %262
  %273 = add nsw i32 %265, -1
  %274 = icmp slt i32 %265, 2
  br i1 %274, label %519, label %263, !llvm.loop !83

275:                                              ; preds = %157
  %276 = sext i32 %82 to i64
  %277 = getelementptr inbounds i8, ptr %66, i64 %276
  br label %519

278:                                              ; preds = %85, %282
  %279 = phi i32 [ %284, %282 ], [ 0, %85 ]
  %280 = phi ptr [ %283, %282 ], [ %81, %85 ]
  %281 = load i8, ptr %280, align 1, !tbaa !34
  switch i8 %281, label %282 [
    i8 0, label %285
    i8 91, label %285
  ]

282:                                              ; preds = %278
  %283 = getelementptr inbounds i8, ptr %280, i64 1
  %284 = add nuw nsw i32 %279, 1
  br label %278, !llvm.loop !84

285:                                              ; preds = %278, %278
  %286 = load i16, ptr %58, align 2, !tbaa !51
  %287 = sext i16 %286 to i32
  %288 = icmp sgt i16 %286, 0
  br i1 %288, label %289, label %516

289:                                              ; preds = %285
  %290 = icmp eq i8 %281, 91
  %291 = select i1 %290, i32 %279, i32 0
  %292 = icmp eq i32 %291, 0
  %293 = zext nneg i32 %291 to i64
  br label %294

294:                                              ; preds = %289, %511
  %295 = phi ptr [ %36, %289 ], [ %298, %511 ]
  %296 = phi ptr [ %4, %289 ], [ %513, %511 ]
  %297 = phi i32 [ 0, %289 ], [ %514, %511 ]
  %298 = getelementptr inbounds i16, ptr %295, i64 2
  %299 = load ptr, ptr %59, align 8, !tbaa !46
  %300 = load i16, ptr %298, align 2, !tbaa !51
  %301 = sext i16 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %299, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !40
  %304 = load ptr, ptr %60, align 8, !tbaa !45
  %305 = getelementptr inbounds i16, ptr %295, i64 3
  %306 = load i16, ptr %305, align 2, !tbaa !51
  %307 = sext i16 %306 to i64
  %308 = getelementptr inbounds ptr, ptr %304, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !40
  %310 = tail call fastcc i32 @elementsize(ptr noundef %1, i16 noundef signext %300, i16 noundef signext %306)
  %311 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %309) #14
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %381

313:                                              ; preds = %294
  %314 = load i8, ptr %81, align 1, !tbaa !34
  switch i8 %314, label %375 [
    i8 42, label %319
    i8 40, label %315
  ]

315:                                              ; preds = %313
  %316 = getelementptr inbounds i8, ptr %81, i64 1
  %317 = load i8, ptr %316, align 1, !tbaa !34
  %318 = icmp eq i8 %317, 42
  br i1 %318, label %319, label %375

319:                                              ; preds = %313, %315
  %320 = load i32, ptr %63, align 8, !tbaa !66
  %321 = load i32, ptr %64, align 8, !tbaa !66
  br label %322

322:                                              ; preds = %350, %319
  %323 = phi i64 [ %353, %350 ], [ 0, %319 ]
  %324 = phi i32 [ %351, %350 ], [ 1, %319 ]
  %325 = phi ptr [ %352, %350 ], [ null, %319 ]
  %326 = getelementptr inbounds i8, ptr %81, i64 %323
  %327 = load i8, ptr %326, align 1, !tbaa !34
  switch i8 %327, label %342 [
    i8 0, label %328
    i8 91, label %340
  ]

328:                                              ; preds = %322
  %329 = icmp sgt i32 %324, 0
  br i1 %329, label %330, label %516

330:                                              ; preds = %328
  %331 = icmp eq i32 %320, %321
  %332 = icmp eq i32 %320, 4
  %333 = icmp eq i32 %321, 8
  %334 = and i1 %332, %333
  %335 = icmp eq i32 %320, 8
  %336 = icmp eq i32 %321, 4
  %337 = and i1 %335, %336
  %338 = sext i32 %320 to i64
  %339 = sext i32 %321 to i64
  br label %354

340:                                              ; preds = %322
  %341 = getelementptr i8, ptr %326, i64 1
  br label %350

342:                                              ; preds = %322
  %343 = icmp eq i8 %327, 93
  %344 = icmp ne ptr %325, null
  %345 = select i1 %343, i1 %344, i1 false
  br i1 %345, label %346, label %350

346:                                              ; preds = %342
  %347 = tail call i64 @strtol(ptr nocapture noundef nonnull %325, ptr noundef null, i32 noundef 10) #13
  %348 = trunc i64 %347 to i32
  %349 = mul nsw i32 %324, %348
  br label %350

350:                                              ; preds = %346, %342, %340
  %351 = phi i32 [ %324, %340 ], [ %349, %346 ], [ %324, %342 ]
  %352 = phi ptr [ %341, %340 ], [ %325, %346 ], [ %325, %342 ]
  %353 = add nuw i64 %323, 1
  br label %322, !llvm.loop !37

354:                                              ; preds = %370, %330
  %355 = phi i32 [ %324, %330 ], [ %373, %370 ]
  %356 = phi ptr [ %66, %330 ], [ %372, %370 ]
  %357 = phi ptr [ %296, %330 ], [ %371, %370 ]
  br i1 %331, label %358, label %359

358:                                              ; preds = %354
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %356, ptr align 1 %357, i64 %338, i1 false)
  br label %370

359:                                              ; preds = %354
  br i1 %334, label %360, label %364

360:                                              ; preds = %359
  %361 = load i64, ptr %357, align 1
  %362 = lshr i64 %361, 3
  %363 = trunc i64 %362 to i32
  store i32 %363, ptr %356, align 4, !tbaa !54
  br label %370

364:                                              ; preds = %359
  br i1 %337, label %365, label %368

365:                                              ; preds = %364
  %366 = load i32, ptr %357, align 4, !tbaa !54
  %367 = sext i32 %366 to i64
  store i64 %367, ptr %356, align 8, !tbaa !85
  br label %370

368:                                              ; preds = %364
  %369 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  br label %370

370:                                              ; preds = %368, %365, %360, %358
  %371 = getelementptr inbounds i8, ptr %357, i64 %339
  %372 = getelementptr inbounds i8, ptr %356, i64 %338
  %373 = add nsw i32 %355, -1
  %374 = icmp sgt i32 %355, 1
  br i1 %374, label %354, label %516, !llvm.loop !87

375:                                              ; preds = %313, %315
  %376 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %303) #14
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = sext i32 %310 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %296, i64 %379, i1 false)
  br label %516

380:                                              ; preds = %375
  tail call fastcc void @cast_elem(ptr noundef %75, ptr noundef %303, ptr noundef nonnull %81, ptr noundef %66, ptr noundef %296)
  br label %516

381:                                              ; preds = %294
  br i1 %292, label %511, label %382

382:                                              ; preds = %381
  %383 = getelementptr inbounds i8, ptr %309, i64 %293
  %384 = load i8, ptr %383, align 1, !tbaa !34
  %385 = icmp eq i8 %384, 91
  br i1 %385, label %386, label %511

386:                                              ; preds = %382
  %387 = tail call i32 @strncmp(ptr noundef %81, ptr noundef %309, i64 noundef %293) #14
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %511

389:                                              ; preds = %386, %405
  %390 = phi i64 [ %408, %405 ], [ 0, %386 ]
  %391 = phi i32 [ %406, %405 ], [ 1, %386 ]
  %392 = phi ptr [ %407, %405 ], [ null, %386 ]
  %393 = getelementptr inbounds i8, ptr %81, i64 %390
  %394 = load i8, ptr %393, align 1, !tbaa !34
  switch i8 %394, label %397 [
    i8 0, label %409
    i8 91, label %395
  ]

395:                                              ; preds = %389
  %396 = getelementptr i8, ptr %393, i64 1
  br label %405

397:                                              ; preds = %389
  %398 = icmp eq i8 %394, 93
  %399 = icmp ne ptr %392, null
  %400 = select i1 %398, i1 %399, i1 false
  br i1 %400, label %401, label %405

401:                                              ; preds = %397
  %402 = tail call i64 @strtol(ptr nocapture noundef nonnull %392, ptr noundef null, i32 noundef 10) #13
  %403 = trunc i64 %402 to i32
  %404 = mul nsw i32 %391, %403
  br label %405

405:                                              ; preds = %401, %397, %395
  %406 = phi i32 [ %391, %395 ], [ %404, %401 ], [ %391, %397 ]
  %407 = phi ptr [ %396, %395 ], [ %392, %401 ], [ %392, %397 ]
  %408 = add nuw i64 %390, 1
  br label %389, !llvm.loop !37

409:                                              ; preds = %389, %425
  %410 = phi i64 [ %428, %425 ], [ 0, %389 ]
  %411 = phi i32 [ %426, %425 ], [ 1, %389 ]
  %412 = phi ptr [ %427, %425 ], [ null, %389 ]
  %413 = getelementptr inbounds i8, ptr %309, i64 %410
  %414 = load i8, ptr %413, align 1, !tbaa !34
  switch i8 %414, label %417 [
    i8 0, label %429
    i8 91, label %415
  ]

415:                                              ; preds = %409
  %416 = getelementptr i8, ptr %413, i64 1
  br label %425

417:                                              ; preds = %409
  %418 = icmp eq i8 %414, 93
  %419 = icmp ne ptr %412, null
  %420 = select i1 %418, i1 %419, i1 false
  br i1 %420, label %421, label %425

421:                                              ; preds = %417
  %422 = tail call i64 @strtol(ptr nocapture noundef nonnull %412, ptr noundef null, i32 noundef 10) #13
  %423 = trunc i64 %422 to i32
  %424 = mul nsw i32 %411, %423
  br label %425

425:                                              ; preds = %421, %417, %415
  %426 = phi i32 [ %411, %415 ], [ %424, %421 ], [ %411, %417 ]
  %427 = phi ptr [ %416, %415 ], [ %412, %421 ], [ %412, %417 ]
  %428 = add nuw i64 %410, 1
  br label %409, !llvm.loop !37

429:                                              ; preds = %409
  %430 = load i8, ptr %81, align 1, !tbaa !34
  switch i8 %430, label %493 [
    i8 42, label %435
    i8 40, label %431
  ]

431:                                              ; preds = %429
  %432 = getelementptr inbounds i8, ptr %81, i64 1
  %433 = load i8, ptr %432, align 1, !tbaa !34
  %434 = icmp eq i8 %433, 42
  br i1 %434, label %435, label %493

435:                                              ; preds = %429, %431
  %436 = load i32, ptr %61, align 8, !tbaa !66
  %437 = load i32, ptr %62, align 8, !tbaa !66
  %438 = icmp sgt i32 %391, %411
  %439 = select i1 %438, ptr %309, ptr %81
  br label %440

440:                                              ; preds = %468, %435
  %441 = phi i64 [ %471, %468 ], [ 0, %435 ]
  %442 = phi i32 [ %469, %468 ], [ 1, %435 ]
  %443 = phi ptr [ %470, %468 ], [ null, %435 ]
  %444 = getelementptr inbounds i8, ptr %439, i64 %441
  %445 = load i8, ptr %444, align 1, !tbaa !34
  switch i8 %445, label %460 [
    i8 0, label %446
    i8 91, label %458
  ]

446:                                              ; preds = %440
  %447 = icmp sgt i32 %442, 0
  br i1 %447, label %448, label %516

448:                                              ; preds = %446
  %449 = icmp eq i32 %436, %437
  %450 = icmp eq i32 %436, 4
  %451 = icmp eq i32 %437, 8
  %452 = and i1 %450, %451
  %453 = icmp eq i32 %436, 8
  %454 = icmp eq i32 %437, 4
  %455 = and i1 %453, %454
  %456 = sext i32 %436 to i64
  %457 = sext i32 %437 to i64
  br label %472

458:                                              ; preds = %440
  %459 = getelementptr i8, ptr %444, i64 1
  br label %468

460:                                              ; preds = %440
  %461 = icmp eq i8 %445, 93
  %462 = icmp ne ptr %443, null
  %463 = select i1 %461, i1 %462, i1 false
  br i1 %463, label %464, label %468

464:                                              ; preds = %460
  %465 = tail call i64 @strtol(ptr nocapture noundef nonnull %443, ptr noundef null, i32 noundef 10) #13
  %466 = trunc i64 %465 to i32
  %467 = mul nsw i32 %442, %466
  br label %468

468:                                              ; preds = %464, %460, %458
  %469 = phi i32 [ %442, %458 ], [ %467, %464 ], [ %442, %460 ]
  %470 = phi ptr [ %459, %458 ], [ %443, %464 ], [ %443, %460 ]
  %471 = add nuw i64 %441, 1
  br label %440, !llvm.loop !37

472:                                              ; preds = %488, %448
  %473 = phi i32 [ %442, %448 ], [ %491, %488 ]
  %474 = phi ptr [ %66, %448 ], [ %490, %488 ]
  %475 = phi ptr [ %296, %448 ], [ %489, %488 ]
  br i1 %449, label %476, label %477

476:                                              ; preds = %472
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %474, ptr align 1 %475, i64 %456, i1 false)
  br label %488

477:                                              ; preds = %472
  br i1 %452, label %478, label %482

478:                                              ; preds = %477
  %479 = load i64, ptr %475, align 1
  %480 = lshr i64 %479, 3
  %481 = trunc i64 %480 to i32
  store i32 %481, ptr %474, align 4, !tbaa !54
  br label %488

482:                                              ; preds = %477
  br i1 %455, label %483, label %486

483:                                              ; preds = %482
  %484 = load i32, ptr %475, align 4, !tbaa !54
  %485 = sext i32 %484 to i64
  store i64 %485, ptr %474, align 8, !tbaa !85
  br label %488

486:                                              ; preds = %482
  %487 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  br label %488

488:                                              ; preds = %486, %483, %478, %476
  %489 = getelementptr inbounds i8, ptr %475, i64 %457
  %490 = getelementptr inbounds i8, ptr %474, i64 %456
  %491 = add nsw i32 %473, -1
  %492 = icmp sgt i32 %473, 1
  br i1 %492, label %472, label %516, !llvm.loop !87

493:                                              ; preds = %429, %431
  %494 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %303) #14
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %508

496:                                              ; preds = %493
  %497 = sdiv i32 %310, %411
  %498 = icmp slt i32 %391, %411
  %499 = tail call i32 @llvm.smin.i32(i32 %391, i32 %411)
  %500 = mul nsw i32 %497, %499
  %501 = sext i32 %500 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %296, i64 %501, i1 false)
  br i1 %498, label %502, label %516

502:                                              ; preds = %496
  %503 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(5) @.str.27) #14
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %516

505:                                              ; preds = %502
  %506 = getelementptr i8, ptr %66, i64 %501
  %507 = getelementptr i8, ptr %506, i64 -1
  store i8 0, ptr %507, align 1, !tbaa !34
  br label %516

508:                                              ; preds = %493
  %509 = icmp sgt i32 %391, %411
  %510 = select i1 %509, ptr %309, ptr %81
  tail call fastcc void @cast_elem(ptr noundef %75, ptr noundef %303, ptr noundef %510, ptr noundef %66, ptr noundef %296)
  br label %516

511:                                              ; preds = %386, %382, %381
  %512 = sext i32 %310 to i64
  %513 = getelementptr inbounds i8, ptr %296, i64 %512
  %514 = add nuw nsw i32 %297, 1
  %515 = icmp eq i32 %514, %287
  br i1 %515, label %516, label %294, !llvm.loop !88

516:                                              ; preds = %511, %488, %370, %285, %446, %328, %378, %380, %496, %502, %505, %508
  %517 = sext i32 %82 to i64
  %518 = getelementptr inbounds i8, ptr %66, i64 %517
  br label %519

519:                                              ; preds = %263, %269, %516, %275
  %520 = phi ptr [ %69, %516 ], [ %158, %275 ], [ %158, %269 ], [ %158, %263 ]
  %521 = phi ptr [ %518, %516 ], [ %277, %275 ], [ %267, %263 ], [ %272, %269 ]
  %522 = add nuw nsw i32 %67, 1
  %523 = icmp eq i32 %522, %42
  br i1 %523, label %524, label %65, !llvm.loop !89

524:                                              ; preds = %519, %28, %7, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DNA_elem_offset(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = load i16, ptr %15, align 2, !tbaa !51
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %1) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %10, %4
  %25 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = tail call ptr @BLI_ghash_lookup(ptr noundef %26, ptr noundef %1) #13
  %28 = ptrtoint ptr %27 to i64
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, -1
  br label %31

31:                                               ; preds = %10, %24
  %32 = phi i32 [ %30, %24 ], [ %6, %10 ]
  %33 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = getelementptr inbounds i16, ptr %37, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !51
  %40 = sext i16 %39 to i32
  %41 = icmp sgt i16 %39, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %44 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  br label %45

45:                                               ; preds = %97, %42
  %46 = phi ptr [ %37, %42 ], [ %49, %97 ]
  %47 = phi ptr [ null, %42 ], [ %99, %97 ]
  %48 = phi i32 [ 0, %42 ], [ %100, %97 ]
  %49 = getelementptr inbounds i16, ptr %46, i64 2
  %50 = load ptr, ptr %43, align 8, !tbaa !46
  %51 = load i16, ptr %49, align 2, !tbaa !51
  %52 = sext i16 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  %55 = load ptr, ptr %44, align 8, !tbaa !45
  %56 = getelementptr inbounds i16, ptr %46, i64 3
  %57 = load i16, ptr %56, align 2, !tbaa !51
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %55, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !40
  %61 = tail call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %51, i16 noundef signext %57)
  %62 = load i8, ptr %3, align 1, !tbaa !34
  %63 = load i8, ptr %60, align 1, !tbaa !34
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %45
  %66 = icmp eq i8 %62, 91
  %67 = icmp eq i8 %63, 91
  %68 = or i1 %67, %66
  %69 = icmp eq i8 %62, 0
  %70 = or i1 %69, %68
  %71 = icmp eq i8 %63, 0
  %72 = or i1 %71, %70
  br i1 %72, label %89, label %73

73:                                               ; preds = %65, %81
  %74 = phi i64 [ %75, %81 ], [ 0, %65 ]
  %75 = add nuw i64 %74, 1
  %76 = getelementptr inbounds i8, ptr %3, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %60, i64 %75
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = icmp eq i8 %77, %79
  br i1 %80, label %81, label %97, !llvm.loop !74

81:                                               ; preds = %73
  %82 = icmp eq i8 %77, 91
  %83 = icmp eq i8 %79, 91
  %84 = or i1 %83, %82
  %85 = icmp eq i8 %77, 0
  %86 = or i1 %85, %84
  %87 = icmp eq i8 %79, 0
  %88 = or i1 %87, %86
  br i1 %88, label %89, label %73, !llvm.loop !74

89:                                               ; preds = %81, %65
  %90 = phi i1 [ %64, %65 ], [ %80, %81 ]
  br i1 %90, label %91, label %97

91:                                               ; preds = %89
  %92 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %54) #14
  %93 = icmp eq i32 %92, 0
  %94 = ptrtoint ptr %47 to i64
  %95 = trunc i64 %94 to i32
  %96 = select i1 %93, i32 %95, i32 0
  br label %102

97:                                               ; preds = %73, %89, %45
  %98 = sext i32 %61 to i64
  %99 = getelementptr inbounds i8, ptr %47, i64 %98
  %100 = add nuw nsw i32 %48, 1
  %101 = icmp eq i32 %100, %40
  br i1 %101, label %102, label %45, !llvm.loop !75

102:                                              ; preds = %97, %91, %31
  %103 = phi i32 [ 0, %31 ], [ %96, %91 ], [ 0, %97 ]
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @DNA_struct_elem_find(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = load i16, ptr %15, align 2, !tbaa !51
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %1) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %10, %4
  %25 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = tail call ptr @BLI_ghash_lookup(ptr noundef %26, ptr noundef %1) #13
  %28 = ptrtoint ptr %27 to i64
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, -1
  br label %31

31:                                               ; preds = %10, %24
  %32 = phi i32 [ %30, %24 ], [ %6, %10 ]
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %103, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = sext i32 %32 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = getelementptr inbounds i16, ptr %39, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !51
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i16 %41, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %46 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  br label %47

47:                                               ; preds = %98, %44
  %48 = phi ptr [ %39, %44 ], [ %51, %98 ]
  %49 = phi ptr [ null, %44 ], [ %100, %98 ]
  %50 = phi i32 [ 0, %44 ], [ %101, %98 ]
  %51 = getelementptr inbounds i16, ptr %48, i64 2
  %52 = load ptr, ptr %45, align 8, !tbaa !46
  %53 = load i16, ptr %51, align 2, !tbaa !51
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !40
  %57 = load ptr, ptr %46, align 8, !tbaa !45
  %58 = getelementptr inbounds i16, ptr %48, i64 3
  %59 = load i16, ptr %58, align 2, !tbaa !51
  %60 = sext i16 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %57, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !40
  %63 = tail call fastcc i32 @elementsize(ptr noundef %0, i16 noundef signext %53, i16 noundef signext %59)
  %64 = load i8, ptr %3, align 1, !tbaa !34
  %65 = load i8, ptr %62, align 1, !tbaa !34
  %66 = icmp eq i8 %64, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %47
  %68 = icmp eq i8 %64, 91
  %69 = icmp eq i8 %65, 91
  %70 = or i1 %69, %68
  %71 = icmp eq i8 %64, 0
  %72 = or i1 %71, %70
  %73 = icmp eq i8 %65, 0
  %74 = or i1 %73, %72
  br i1 %74, label %91, label %75

75:                                               ; preds = %67, %83
  %76 = phi i64 [ %77, %83 ], [ 0, %67 ]
  %77 = add nuw i64 %76, 1
  %78 = getelementptr inbounds i8, ptr %3, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %62, i64 %77
  %81 = load i8, ptr %80, align 1, !tbaa !34
  %82 = icmp eq i8 %79, %81
  br i1 %82, label %83, label %98, !llvm.loop !74

83:                                               ; preds = %75
  %84 = icmp eq i8 %79, 91
  %85 = icmp eq i8 %81, 91
  %86 = or i1 %85, %84
  %87 = icmp eq i8 %79, 0
  %88 = or i1 %87, %86
  %89 = icmp eq i8 %81, 0
  %90 = or i1 %89, %88
  br i1 %90, label %91, label %75, !llvm.loop !74

91:                                               ; preds = %83, %67
  %92 = phi i1 [ %66, %67 ], [ %82, %83 ]
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %56) #14
  %95 = icmp ne i32 %94, 0
  %96 = icmp eq ptr %49, null
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %103, label %104

98:                                               ; preds = %75, %91, %47
  %99 = sext i32 %63 to i64
  %100 = getelementptr inbounds i8, ptr %49, i64 %99
  %101 = add nuw nsw i32 %50, 1
  %102 = icmp eq i32 %101, %42
  br i1 %102, label %103, label %47, !llvm.loop !75

103:                                              ; preds = %98, %34, %93, %31
  br label %104

104:                                              ; preds = %93, %103
  %105 = phi i8 [ 0, %103 ], [ 1, %93 ]
  ret i8 %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @DNA_elem_type_size(i32 noundef %0) local_unnamed_addr #6 {
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

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare ptr @BLI_ghash_str_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @cast_elem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %22, %5
  %7 = phi i64 [ %25, %22 ], [ 0, %5 ]
  %8 = phi i32 [ %23, %22 ], [ 1, %5 ]
  %9 = phi ptr [ %24, %22 ], [ null, %5 ]
  %10 = getelementptr inbounds i8, ptr %2, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !34
  switch i8 %11, label %14 [
    i8 0, label %26
    i8 91, label %12
  ]

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %10, i64 1
  br label %22

14:                                               ; preds = %6
  %15 = icmp eq i8 %11, 93
  %16 = icmp ne ptr %9, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = tail call i64 @strtol(ptr nocapture noundef nonnull %9, ptr noundef null, i32 noundef 10) #13
  %20 = trunc i64 %19 to i32
  %21 = mul nsw i32 %8, %20
  br label %22

22:                                               ; preds = %18, %14, %12
  %23 = phi i32 [ %8, %12 ], [ %21, %18 ], [ %8, %14 ]
  %24 = phi ptr [ %13, %12 ], [ %9, %18 ], [ %9, %14 ]
  %25 = add nuw i64 %7, 1
  br label %6, !llvm.loop !37

26:                                               ; preds = %6
  %27 = tail call fastcc i32 @sdna_type_nr(ptr noundef %1), !range !90
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %121, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @sdna_type_nr(ptr noundef %0), !range !90
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %121, label %32

32:                                               ; preds = %29
  %33 = icmp ult i32 %27, 12
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = zext nneg i32 %27 to i64
  %36 = getelementptr inbounds [12 x i64], ptr @switch.table.cast_elem.49, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8
  br label %38

38:                                               ; preds = %32, %34
  %39 = phi i64 [ %37, %34 ], [ 8, %32 ]
  %40 = icmp ult i32 %30, 12
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = zext nneg i32 %30 to i64
  %43 = getelementptr inbounds [12 x i64], ptr @switch.table.cast_elem.49, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8
  br label %45

45:                                               ; preds = %38, %41
  %46 = phi i64 [ %44, %41 ], [ 8, %38 ]
  %47 = icmp sgt i32 %8, 0
  br i1 %47, label %48, label %121

48:                                               ; preds = %45
  %49 = icmp ult i32 %27, 2
  %50 = icmp ult i32 %27, 2
  br label %51

51:                                               ; preds = %48, %115
  %52 = phi ptr [ %3, %48 ], [ %118, %115 ]
  %53 = phi ptr [ %4, %48 ], [ %117, %115 ]
  %54 = phi i32 [ %8, %48 ], [ %119, %115 ]
  %55 = phi double [ 0.000000e+00, %48 ], [ %116, %115 ]
  switch i32 %27, label %88 [
    i32 0, label %56
    i32 1, label %59
    i32 2, label %62
    i32 3, label %65
    i32 4, label %68
    i32 5, label %71
    i32 6, label %74
    i32 7, label %77
    i32 8, label %80
    i32 10, label %82
    i32 11, label %85
  ]

56:                                               ; preds = %51
  %57 = load i8, ptr %53, align 1, !tbaa !34
  %58 = uitofp i8 %57 to double
  br label %88

59:                                               ; preds = %51
  %60 = load i8, ptr %53, align 1, !tbaa !34
  %61 = uitofp i8 %60 to double
  br label %88

62:                                               ; preds = %51
  %63 = load i16, ptr %53, align 2, !tbaa !51
  %64 = sitofp i16 %63 to double
  br label %88

65:                                               ; preds = %51
  %66 = load i16, ptr %53, align 2, !tbaa !51
  %67 = uitofp i16 %66 to double
  br label %88

68:                                               ; preds = %51
  %69 = load i32, ptr %53, align 4, !tbaa !54
  %70 = sitofp i32 %69 to double
  br label %88

71:                                               ; preds = %51
  %72 = load i32, ptr %53, align 4, !tbaa !54
  %73 = sitofp i32 %72 to double
  br label %88

74:                                               ; preds = %51
  %75 = load i32, ptr %53, align 4, !tbaa !54
  %76 = uitofp i32 %75 to double
  br label %88

77:                                               ; preds = %51
  %78 = load float, ptr %53, align 4, !tbaa !91
  %79 = fpext float %78 to double
  br label %88

80:                                               ; preds = %51
  %81 = load double, ptr %53, align 8, !tbaa !93
  br label %88

82:                                               ; preds = %51
  %83 = load i64, ptr %53, align 8, !tbaa !85
  %84 = sitofp i64 %83 to double
  br label %88

85:                                               ; preds = %51
  %86 = load i64, ptr %53, align 8, !tbaa !85
  %87 = uitofp i64 %86 to double
  br label %88

88:                                               ; preds = %51, %85, %82, %80, %77, %74, %71, %68, %65, %62, %59, %56
  %89 = phi double [ %55, %51 ], [ %87, %85 ], [ %84, %82 ], [ %81, %80 ], [ %79, %77 ], [ %76, %74 ], [ %73, %71 ], [ %70, %68 ], [ %67, %65 ], [ %64, %62 ], [ %61, %59 ], [ %58, %56 ]
  switch i32 %30, label %115 [
    i32 0, label %90
    i32 1, label %92
    i32 2, label %94
    i32 3, label %96
    i32 4, label %98
    i32 5, label %100
    i32 6, label %102
    i32 7, label %104
    i32 8, label %108
    i32 10, label %111
    i32 11, label %113
  ]

90:                                               ; preds = %88
  %91 = fptoui double %89 to i8
  store i8 %91, ptr %52, align 1, !tbaa !34
  br label %115

92:                                               ; preds = %88
  %93 = fptoui double %89 to i8
  store i8 %93, ptr %52, align 1, !tbaa !34
  br label %115

94:                                               ; preds = %88
  %95 = fptosi double %89 to i16
  store i16 %95, ptr %52, align 2, !tbaa !51
  br label %115

96:                                               ; preds = %88
  %97 = fptoui double %89 to i16
  store i16 %97, ptr %52, align 2, !tbaa !51
  br label %115

98:                                               ; preds = %88
  %99 = fptosi double %89 to i32
  store i32 %99, ptr %52, align 4, !tbaa !54
  br label %115

100:                                              ; preds = %88
  %101 = fptosi double %89 to i32
  store i32 %101, ptr %52, align 4, !tbaa !54
  br label %115

102:                                              ; preds = %88
  %103 = fptoui double %89 to i32
  store i32 %103, ptr %52, align 4, !tbaa !54
  br label %115

104:                                              ; preds = %88
  %105 = fdiv double %89, 2.550000e+02
  %106 = select i1 %50, double %105, double %89
  %107 = fptrunc double %106 to float
  store float %107, ptr %52, align 4, !tbaa !91
  br label %115

108:                                              ; preds = %88
  %109 = fdiv double %89, 2.550000e+02
  %110 = select i1 %49, double %109, double %89
  store double %110, ptr %52, align 8, !tbaa !93
  br label %115

111:                                              ; preds = %88
  %112 = fptosi double %89 to i64
  store i64 %112, ptr %52, align 8, !tbaa !85
  br label %115

113:                                              ; preds = %88
  %114 = fptoui double %89 to i64
  store i64 %114, ptr %52, align 8, !tbaa !85
  br label %115

115:                                              ; preds = %88, %113, %111, %108, %104, %102, %100, %98, %96, %94, %92, %90
  %116 = phi double [ %89, %88 ], [ %89, %113 ], [ %89, %111 ], [ %110, %108 ], [ %106, %104 ], [ %89, %102 ], [ %89, %100 ], [ %89, %98 ], [ %89, %96 ], [ %89, %94 ], [ %89, %92 ], [ %89, %90 ]
  %117 = getelementptr inbounds i8, ptr %53, i64 %39
  %118 = getelementptr inbounds i8, ptr %52, i64 %46
  %119 = add nsw i32 %54, -1
  %120 = icmp sgt i32 %54, 1
  br i1 %120, label %51, label %121, !llvm.loop !95

121:                                              ; preds = %115, %45, %26, %29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @sdna_type_nr(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.27) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.29) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.31) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.32) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.33) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.34) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.35) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.36) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.38) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.39) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.40) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.41) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.42) #14
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 11, i32 -1
  br label %47

47:                                               ; preds = %43, %40, %37, %34, %28, %31, %25, %22, %16, %19, %13, %7, %10, %1, %4
  %48 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 1, %10 ], [ 1, %7 ], [ 2, %13 ], [ 3, %19 ], [ 3, %16 ], [ 4, %22 ], [ 5, %25 ], [ 6, %31 ], [ 6, %28 ], [ 7, %34 ], [ 8, %37 ], [ 10, %40 ], [ %46, %43 ]
  ret i32 %48
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !35, i64 0}
!42 = !{!43, !41, i64 0}
!43 = !{!"SDNA", !41, i64 0, !44, i64 8, !44, i64 12, !41, i64 16, !44, i64 24, !44, i64 28, !41, i64 32, !41, i64 40, !44, i64 48, !41, i64 56, !41, i64 64, !44, i64 72}
!44 = !{!"int", !35, i64 0}
!45 = !{!43, !41, i64 16}
!46 = !{!43, !41, i64 32}
!47 = !{!43, !41, i64 56}
!48 = !{!43, !41, i64 64}
!49 = !{!43, !44, i64 72}
!50 = !{!43, !44, i64 48}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !35, i64 0}
!53 = !{!43, !44, i64 8}
!54 = !{!44, !44, i64 0}
!55 = !{!43, !44, i64 12}
!56 = distinct !{!56, !38, !39}
!57 = distinct !{!57, !38, !39}
!58 = !{!43, !44, i64 28}
!59 = distinct !{!59, !38, !39}
!60 = distinct !{!60, !38, !39}
!61 = !{!43, !41, i64 40}
!62 = distinct !{!62, !38, !39}
!63 = distinct !{!63, !38, !39}
!64 = distinct !{!64, !38, !39}
!65 = distinct !{!65, !38, !39}
!66 = !{!43, !44, i64 24}
!67 = distinct !{!67, !38, !39}
!68 = distinct !{!68, !38, !39}
!69 = distinct !{!69, !38, !39}
!70 = distinct !{!70, !38, !39}
!71 = distinct !{!71, !38, !39}
!72 = distinct !{!72, !38, !39}
!73 = distinct !{!73, !38, !39}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !38, !39}
!76 = distinct !{!76, !38, !39}
!77 = distinct !{!77, !38, !39}
!78 = distinct !{!78, !38, !39}
!79 = distinct !{!79, !38, !39}
!80 = distinct !{!80, !38, !39}
!81 = distinct !{!81, !38, !39}
!82 = distinct !{!82, !38, !39}
!83 = distinct !{!83, !38, !39}
!84 = distinct !{!84, !38, !39}
!85 = !{!86, !86, i64 0}
!86 = !{!"long", !35, i64 0}
!87 = distinct !{!87, !38, !39}
!88 = distinct !{!88, !38, !39}
!89 = distinct !{!89, !38, !39}
!90 = !{i32 -1, i32 12}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !35, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"double", !35, i64 0}
!95 = distinct !{!95, !38, !39}
