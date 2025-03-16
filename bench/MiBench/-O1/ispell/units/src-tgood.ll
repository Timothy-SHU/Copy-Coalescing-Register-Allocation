; ModuleID = 'src/tgood.c'
source_filename = "src/tgood.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { ptr }
%struct.success = type { ptr, ptr, ptr }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }
%struct.dent = type { ptr, ptr, [1 x i64] }

@pflagindex = external global [228 x %struct.flagptr], align 16
@numhits = external local_unnamed_addr global i32, align 4
@cflag = external local_unnamed_addr global i32, align 4
@pflaglist = external local_unnamed_addr global ptr, align 8
@numpflags = external local_unnamed_addr global i32, align 4
@sflaglist = external local_unnamed_addr global ptr, align 8
@numsflags = external local_unnamed_addr global i32, align 4
@compoundflag = external local_unnamed_addr global i32, align 4
@hits = external global [10 x %struct.success], align 16
@sflagindex = external global [228 x %struct.flagptr], align 16
@hashheader = external local_unnamed_addr global %struct.hashheader, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @chk_aff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @pflagindex, i32 noundef %3, i32 noundef %4)
  %8 = load i8, ptr %1, align 1, !tbaa !5
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %9
  %11 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %9, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %7
  %15 = icmp ne i32 %4, 0
  br label %16

16:                                               ; preds = %14, %37
  %17 = phi ptr [ %1, %14 ], [ %19, %37 ]
  %18 = phi ptr [ %10, %14 ], [ %41, %37 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load ptr, ptr %18, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %16
  %23 = load i8, ptr %19, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.flagptr, ptr %20, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %20, i32 noundef %3, i32 noundef %4)
  %30 = load i32, ptr @numhits, align 4, !tbaa !11
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %15, %31
  %33 = load i32, ptr @cflag, align 4
  %34 = or i32 %33, %3
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %32, i1 true, i1 %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29, %25
  %38 = load ptr, ptr %18, align 8, !tbaa !5
  %39 = load i8, ptr %19, align 1, !tbaa !5
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.flagptr, ptr %38, i64 %40
  %42 = getelementptr inbounds %struct.flagptr, ptr %38, i64 %40, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %16, label %45, !llvm.loop !12

45:                                               ; preds = %16, %37, %7
  %46 = phi ptr [ %10, %7 ], [ %18, %16 ], [ %41, %37 ]
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef %46, i32 noundef %3, i32 noundef %4)
  %47 = load i32, ptr @numhits, align 4, !tbaa !11
  %48 = icmp eq i32 %47, 0
  %49 = icmp ne i32 %4, 0
  %50 = or i1 %49, %48
  %51 = load i32, ptr @cflag, align 4
  %52 = or i32 %51, %3
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %50, i1 true, i1 %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  tail call fastcc void @chk_suf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %6, ptr noundef null, i32 noundef %3, i32 noundef %4)
  br label %56

56:                                               ; preds = %29, %22, %45, %55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pfx_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #6
  %11 = getelementptr inbounds %struct.flagptr, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %188

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !tbaa !5
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %6, 0
  %19 = ptrtoint ptr %10 to i64
  %20 = icmp eq i32 %7, 0
  %21 = or i32 %4, 1
  br label %22

22:                                               ; preds = %14, %184
  %23 = phi ptr [ %15, %14 ], [ %185, %184 ]
  %24 = phi i32 [ %12, %14 ], [ %186, %184 ]
  %25 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 6
  %26 = load i16, ptr %25, align 8, !tbaa !14
  %27 = and i16 %26, 2
  %28 = icmp ne i16 %27, 0
  %29 = and i1 %17, %28
  br i1 %29, label %184, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = zext i16 %26 to i32
  %35 = xor i32 %34, %3
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %184

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !18
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %2, %41
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %184

44:                                               ; preds = %38
  %45 = icmp eq i16 %40, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = sext i16 %40 to i64
  %50 = call i32 @strncmp(ptr noundef %48, ptr noundef %1, i64 noundef %49) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %184

52:                                               ; preds = %46, %44
  %53 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !20
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %42, %55
  %57 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !21
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %184, label %61

61:                                               ; preds = %52
  %62 = icmp eq i16 %54, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %23, align 8, !tbaa !22
  %65 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %64) #6
  br label %66

66:                                               ; preds = %63, %61
  %67 = load i16, ptr %53, align 2, !tbaa !20
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds i8, ptr %9, i64 %68
  %70 = load i16, ptr %39, align 4, !tbaa !18
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i8, ptr %1, i64 %71
  %73 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) %72) #6
  %74 = load i16, ptr %57, align 2, !tbaa !21
  %75 = sext i16 %74 to i32
  %76 = icmp sgt i16 %74, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %66
  %78 = load i8, ptr %9, align 16, !tbaa !5
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 7, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %101, label %94

84:                                               ; preds = %94
  %85 = getelementptr inbounds i8, ptr %95, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !5
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 7, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = sext i8 %89 to i32
  %91 = shl i32 2, %96
  %92 = and i32 %91, %90
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94, !llvm.loop !23

94:                                               ; preds = %77, %84
  %95 = phi ptr [ %85, %84 ], [ %9, %77 ]
  %96 = phi i32 [ %97, %84 ], [ 0, %77 ]
  %97 = add nuw nsw i32 %96, 1
  %98 = icmp eq i32 %97, %75
  br i1 %98, label %103, label %84, !llvm.loop !23

99:                                               ; preds = %84
  %100 = icmp slt i32 %97, %75
  br label %101

101:                                              ; preds = %99, %77
  %102 = phi i1 [ %100, %99 ], [ %76, %77 ]
  br i1 %102, label %184, label %103

103:                                              ; preds = %94, %66, %101
  %104 = load i16, ptr %53, align 2, !tbaa !20
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %42, %105
  %107 = load i32, ptr @cflag, align 4, !tbaa !11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %111 = load i16, ptr %110, align 8, !tbaa !24
  %112 = sext i16 %111 to i32
  %113 = add nsw i32 %112, 65
  %114 = load i16, ptr %39, align 4, !tbaa !18
  %115 = sext i16 %114 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef %113, i32 noundef %105, i32 noundef %115, i32 noundef -1, i32 noundef 0) #6
  br label %179

116:                                              ; preds = %103
  %117 = call ptr @lookup(ptr noundef nonnull %9, i32 noundef 1) #6
  %118 = icmp eq ptr %117, null
  br i1 %18, label %154, label %119

119:                                              ; preds = %116
  br i1 %118, label %179, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %39, align 4, !tbaa !18
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !19
  %126 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %125) #6
  %127 = load i16, ptr %39, align 4, !tbaa !18
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds i8, ptr %10, i64 %128
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store i8 43, ptr %129, align 1, !tbaa !5
  br label %131

131:                                              ; preds = %123, %120
  %132 = phi ptr [ %130, %123 ], [ %10, %120 ]
  %133 = ptrtoint ptr %132 to i64
  %134 = sub i64 %133, %19
  %135 = trunc i64 %134 to i32
  %136 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) %9) #6
  %137 = sext i32 %106 to i64
  %138 = getelementptr inbounds i8, ptr %132, i64 %137
  %139 = load i16, ptr %53, align 2, !tbaa !20
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %131
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  store i8 45, ptr %138, align 1, !tbaa !5
  %143 = load ptr, ptr %23, align 8, !tbaa !22
  %144 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) %143) #6
  br label %145

145:                                              ; preds = %141, %131
  %146 = phi ptr [ %142, %141 ], [ %138, %131 ]
  %147 = load i16, ptr %53, align 2, !tbaa !20
  %148 = sext i16 %147 to i32
  %149 = ptrtoint ptr %146 to i64
  %150 = add i64 %133, %137
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %148, i32 noundef %135, i32 noundef 0, i32 noundef %152, ptr noundef nonnull %117, ptr noundef %23, ptr noundef null) #6
  br label %179

154:                                              ; preds = %116
  br i1 %118, label %179, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.dent, ptr %117, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !25
  %158 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %159 = load i16, ptr %158, align 8, !tbaa !24
  %160 = sext i16 %159 to i64
  %161 = and i64 %160, 4294967295
  %162 = shl nuw i64 1, %161
  %163 = and i64 %162, %157
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %155
  %166 = load i32, ptr @numhits, align 4, !tbaa !11
  %167 = icmp slt i32 %166, 10
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = sext i32 %166 to i64
  %170 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %169
  store ptr %117, ptr %170, align 8, !tbaa !27
  %171 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %169, i32 1
  store ptr %23, ptr %171, align 8, !tbaa !29
  %172 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %169, i32 2
  store ptr null, ptr %172, align 8, !tbaa !30
  %173 = add nsw i32 %166, 1
  store i32 %173, ptr @numhits, align 4, !tbaa !11
  br label %174

174:                                              ; preds = %168, %165
  br i1 %20, label %175, label %179

175:                                              ; preds = %174
  %176 = call i32 @cap_ok(ptr noundef %0, ptr noundef nonnull @hits, i32 noundef %2) #6
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  store i32 0, ptr @numhits, align 4, !tbaa !11
  br label %179

179:                                              ; preds = %145, %119, %174, %178, %155, %154, %109
  %180 = load i16, ptr %25, align 8, !tbaa !14
  %181 = and i16 %180, 1
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call fastcc void @chk_suf(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %106, i32 noundef %21, ptr noundef %23, i32 noundef %6, i32 noundef %7)
  br label %184

184:                                              ; preds = %22, %38, %46, %52, %179, %183, %101, %33
  %185 = getelementptr inbounds %struct.flagent, ptr %23, i64 1
  %186 = add nsw i32 %24, -1
  %187 = icmp sgt i32 %24, 1
  br i1 %187, label %22, label %188, !llvm.loop !31

188:                                              ; preds = %175, %184, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @chk_suf(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @sflagindex, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12
  %14 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %7
  %18 = icmp ne i32 %6, 0
  br label %19

19:                                               ; preds = %17, %38
  %20 = phi ptr [ %13, %17 ], [ %43, %38 ]
  %21 = phi ptr [ %10, %17 ], [ %40, %38 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, %1
  br i1 %25, label %49, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.flagptr, ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %22, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  %31 = load i32, ptr @numhits, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %18, %32
  %34 = load i32, ptr @cflag, align 4
  %35 = or i32 %34, %5
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %33, i1 true, i1 %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30, %26
  %39 = load ptr, ptr %20, align 8, !tbaa !5
  %40 = getelementptr inbounds i8, ptr %21, i64 -1
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.flagptr, ptr %39, i64 %42
  %44 = getelementptr inbounds %struct.flagptr, ptr %39, i64 %42, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %19, label %47, !llvm.loop !32

47:                                               ; preds = %19, %38, %7
  %48 = phi ptr [ %13, %7 ], [ %20, %19 ], [ %43, %38 ]
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %48, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  br label %49

49:                                               ; preds = %30, %24, %47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @expand_pre(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [120 x i8], align 16
  %7 = load i32, ptr @numpflags, align 4, !tbaa !11
  %8 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %193

10:                                               ; preds = %5
  %11 = load ptr, ptr @pflaglist, align 8, !tbaa !33
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  br label %13

13:                                               ; preds = %10, %188
  %14 = phi ptr [ %11, %10 ], [ %190, %188 ]
  %15 = phi i32 [ 0, %10 ], [ %189, %188 ]
  %16 = phi i32 [ %7, %10 ], [ %191, %188 ]
  %17 = load i64, ptr %2, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !24
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  %22 = shl nuw i64 1, %21
  %23 = and i64 %22, %17
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %188, label %25

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #6
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !21
  %30 = sext i16 %29 to i32
  %31 = icmp sgt i32 %30, %27
  br i1 %31, label %185, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !20
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 %27, %35
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %185, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !18
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %36, %41
  %43 = icmp sgt i16 %29, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = zext nneg i32 %30 to i64
  %46 = getelementptr i8, ptr %1, i64 %45
  br label %47

47:                                               ; preds = %61, %44
  %48 = phi ptr [ %62, %61 ], [ %1, %44 ]
  %49 = phi i32 [ %63, %61 ], [ 0, %44 ]
  %50 = load i8, ptr %48, align 1, !tbaa !5
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !5
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 7, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = sext i8 %56 to i32
  %58 = shl nuw i32 1, %49
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %185, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds i8, ptr %48, i64 1
  %63 = add nuw nsw i32 %49, 1
  %64 = icmp eq i32 %63, %30
  br i1 %64, label %65, label %47, !llvm.loop !34

65:                                               ; preds = %61, %38
  %66 = phi ptr [ %1, %38 ], [ %46, %61 ]
  %67 = icmp eq i16 %40, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !19
  %71 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %70) #6
  %72 = sext i16 %40 to i64
  %73 = getelementptr inbounds i8, ptr %6, i64 %72
  br label %74

74:                                               ; preds = %68, %65
  %75 = phi ptr [ %73, %68 ], [ %66, %65 ]
  %76 = sext i16 %34 to i64
  %77 = getelementptr inbounds i8, ptr %1, i64 %76
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %77) #6
  %79 = load i8, ptr %1, align 1, !tbaa !5
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !5
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %149, label %84

84:                                               ; preds = %74, %89
  %85 = phi ptr [ %86, %89 ], [ %1, %74 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %171, label %89

89:                                               ; preds = %84
  %90 = zext i8 %87 to i64
  %91 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %84, !llvm.loop !35

94:                                               ; preds = %89
  %95 = zext i8 %87 to i64
  %96 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94, %104
  %100 = phi ptr [ %101, %104 ], [ %86, %94 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !5
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %133, label %104, !llvm.loop !36

104:                                              ; preds = %99
  %105 = zext i8 %102 to i64
  %106 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !5
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %99, label %109, !llvm.loop !36

109:                                              ; preds = %104
  br i1 %103, label %133, label %110

110:                                              ; preds = %94, %109
  %111 = load i16, ptr %39, align 4, !tbaa !18
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds [120 x i8], ptr %6, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !5
  %118 = icmp eq i8 %117, 0
  %119 = icmp sgt i16 %111, 0
  %120 = and i1 %119, %118
  br i1 %120, label %121, label %171

121:                                              ; preds = %110
  %122 = add nsw i64 %112, 4294967295
  %123 = and i64 %122, 4294967295
  %124 = getelementptr i8, ptr %6, i64 %123
  br label %125

125:                                              ; preds = %125, %121
  %126 = phi ptr [ %131, %125 ], [ %6, %121 ]
  %127 = load i8, ptr %126, align 1, !tbaa !5
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !5
  store i8 %130, ptr %126, align 1, !tbaa !5
  %131 = getelementptr inbounds i8, ptr %126, i64 1
  %132 = icmp eq ptr %126, %124
  br i1 %132, label %171, label %125, !llvm.loop !37

133:                                              ; preds = %99, %109
  %134 = icmp sgt i32 %42, 1
  br i1 %134, label %135, label %171

135:                                              ; preds = %133
  %136 = add i32 %27, -2
  %137 = sub i32 %136, %35
  %138 = add i32 %137, %41
  %139 = zext i32 %138 to i64
  %140 = getelementptr i8, ptr %8, i64 %139
  br label %141

141:                                              ; preds = %141, %135
  %142 = phi ptr [ %147, %141 ], [ %12, %135 ]
  %143 = load i8, ptr %142, align 1, !tbaa !5
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !5
  store i8 %146, ptr %142, align 1, !tbaa !5
  %147 = getelementptr inbounds i8, ptr %142, i64 1
  %148 = icmp eq ptr %142, %140
  br i1 %148, label %171, label %141, !llvm.loop !37

149:                                              ; preds = %74
  %150 = load i8, ptr %75, align 1, !tbaa !5
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !5
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load i16, ptr %39, align 4, !tbaa !18
  %157 = icmp sgt i16 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = add nsw i16 %156, -1
  %160 = sext i16 %159 to i64
  %161 = and i64 %160, 4294967295
  %162 = getelementptr i8, ptr %6, i64 %161
  br label %163

163:                                              ; preds = %163, %158
  %164 = phi ptr [ %169, %163 ], [ %6, %158 ]
  %165 = load i8, ptr %164, align 1, !tbaa !5
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !5
  store i8 %168, ptr %164, align 1, !tbaa !5
  %169 = getelementptr inbounds i8, ptr %164, i64 1
  %170 = icmp eq ptr %164, %162
  br i1 %170, label %171, label %163, !llvm.loop !37

171:                                              ; preds = %84, %125, %141, %163, %155, %149, %133, %110
  switch i32 %3, label %174 [
    i32 3, label %172
    i32 4, label %177
  ]

172:                                              ; preds = %171
  %173 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0)
  br label %174

174:                                              ; preds = %172, %171
  %175 = call ptr @ichartosstr(ptr noundef nonnull %6, i32 noundef 1) #6
  %176 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %175, ptr noundef %4)
  br label %177

177:                                              ; preds = %174, %171
  %178 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 6
  %179 = load i16, ptr %178, align 8, !tbaa !14
  %180 = and i16 %179, 1
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = call i32 @expand_suf(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %3, ptr noundef %4)
  %184 = add nsw i32 %183, %42
  br label %185

185:                                              ; preds = %47, %25, %32, %177, %182
  %186 = phi i32 [ %184, %182 ], [ 0, %25 ], [ 0, %32 ], [ %42, %177 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #6
  %187 = add nsw i32 %186, %15
  br label %188

188:                                              ; preds = %13, %185
  %189 = phi i32 [ %187, %185 ], [ %15, %13 ]
  %190 = getelementptr inbounds %struct.flagent, ptr %14, i64 1
  %191 = add nsw i32 %16, -1
  %192 = icmp sgt i32 %16, 1
  br i1 %192, label %13, label %193, !llvm.loop !38

193:                                              ; preds = %188, %5
  %194 = phi i32 [ 0, %5 ], [ %189, %188 ]
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expand_suf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [120 x i8], align 16
  %8 = load i32, ptr @numsflags, align 4, !tbaa !11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %121

10:                                               ; preds = %6
  %11 = load ptr, ptr @sflaglist, align 8, !tbaa !33
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %10, %116
  %15 = phi ptr [ %11, %10 ], [ %118, %116 ]
  %16 = phi i32 [ 0, %10 ], [ %117, %116 ]
  %17 = phi i32 [ %8, %10 ], [ %119, %116 ]
  %18 = load i64, ptr %2, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !24
  %21 = sext i16 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %116, label %26

26:                                               ; preds = %14
  br i1 %13, label %32, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !14
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %116, label %32

32:                                               ; preds = %27, %26
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #6
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !21
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i32 %37, %34
  br i1 %38, label %113, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !20
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %34, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %39
  %45 = shl i64 %33, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %1, i64 %46
  br label %48

48:                                               ; preds = %52, %44
  %49 = phi i32 [ %37, %44 ], [ %53, %52 ]
  %50 = phi ptr [ %47, %44 ], [ %54, %52 ]
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = add nsw i32 %49, -1
  %54 = getelementptr inbounds i8, ptr %50, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !5
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 7, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5
  %62 = sext i8 %61 to i32
  %63 = shl nuw i32 1, %53
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %113, label %48, !llvm.loop !39

66:                                               ; preds = %48
  %67 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #6
  %68 = getelementptr inbounds i8, ptr %7, i64 %46
  %69 = sext i16 %41 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 4
  %73 = load i16, ptr %72, align 4, !tbaa !18
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !19
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %77) #6
  %79 = getelementptr inbounds i8, ptr %71, i64 -1
  %80 = load i8, ptr %79, align 1, !tbaa !5
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = icmp eq i8 %83, 0
  %85 = icmp sgt i16 %73, 0
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  %88 = sext i16 %73 to i32
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ %92, %89 ], [ %88, %87 ]
  %91 = phi ptr [ %97, %89 ], [ %71, %87 ]
  %92 = add nsw i32 %90, -1
  %93 = load i8, ptr %91, align 1, !tbaa !5
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !5
  store i8 %96, ptr %91, align 1, !tbaa !5
  %97 = getelementptr inbounds i8, ptr %91, i64 1
  %98 = icmp sgt i32 %90, 1
  br i1 %98, label %89, label %100, !llvm.loop !37

99:                                               ; preds = %66
  store i8 0, ptr %71, align 1, !tbaa !5
  br label %100

100:                                              ; preds = %89, %99, %75
  switch i32 %4, label %103 [
    i32 3, label %101
    i32 4, label %106
  ]

101:                                              ; preds = %100
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0)
  br label %103

103:                                              ; preds = %101, %100
  %104 = call ptr @ichartosstr(ptr noundef nonnull %7, i32 noundef 1) #6
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %104, ptr noundef %5)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i16, ptr %72, align 4, !tbaa !18
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %108, %34
  %110 = load i16, ptr %40, align 2, !tbaa !20
  %111 = sext i16 %110 to i32
  %112 = sub i32 %109, %111
  br label %113

113:                                              ; preds = %52, %32, %39, %106
  %114 = phi i32 [ %112, %106 ], [ 0, %32 ], [ 0, %39 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #6
  %115 = add nsw i32 %114, %16
  br label %116

116:                                              ; preds = %14, %113, %27
  %117 = phi i32 [ %115, %113 ], [ %16, %27 ], [ %16, %14 ]
  %118 = getelementptr inbounds %struct.flagent, ptr %15, i64 1
  %119 = add nsw i32 %17, -1
  %120 = icmp sgt i32 %17, 1
  br i1 %120, label %14, label %121, !llvm.loop !40

121:                                              ; preds = %116, %6
  %122 = phi i32 [ 0, %6 ], [ %117, %116 ]
  ret i32 %122
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

declare void @flagpr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @lookup(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ins_root_cap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @cap_ok(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @suf_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #6
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #6
  %12 = getelementptr inbounds %struct.flagptr, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %244

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8, !tbaa !5
  %17 = and i32 %4, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %4, 2
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 2
  %22 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 4
  %24 = icmp eq i32 %6, 0
  %25 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 4
  %26 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 1
  %27 = ptrtoint ptr %10 to i64
  %28 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 3
  %29 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 3
  %30 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 2
  %31 = icmp eq i32 %7, 0
  br label %32

32:                                               ; preds = %15, %240
  %33 = phi ptr [ %16, %15 ], [ %241, %240 ]
  %34 = phi i32 [ %13, %15 ], [ %242, %240 ]
  br i1 %18, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 6
  %37 = load i16, ptr %36, align 8, !tbaa !14
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %240, label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 6
  %42 = load i16, ptr %41, align 8, !tbaa !14
  %43 = and i16 %42, 2
  %44 = icmp ne i16 %43, 0
  %45 = and i1 %20, %44
  br i1 %45, label %240, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = zext i16 %42 to i32
  %51 = xor i32 %50, %4
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %240

54:                                               ; preds = %49, %46
  %55 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 4
  %56 = load i16, ptr %55, align 4, !tbaa !18
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %2, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %240

60:                                               ; preds = %54
  %61 = icmp eq i16 %56, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = zext nneg i32 %58 to i64
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  %67 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %66) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %240

69:                                               ; preds = %62, %60
  %70 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !20
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %58, %72
  %74 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !21
  %76 = sext i16 %75 to i32
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %240, label %78

78:                                               ; preds = %69
  %79 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #6
  %80 = zext nneg i32 %58 to i64
  %81 = getelementptr inbounds i8, ptr %9, i64 %80
  %82 = load i16, ptr %70, align 2, !tbaa !20
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %33, align 8, !tbaa !22
  %86 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %85) #6
  %87 = load i16, ptr %70, align 2, !tbaa !20
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %58, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %9, i64 %90
  br label %93

92:                                               ; preds = %78
  store i8 0, ptr %81, align 1, !tbaa !5
  br label %93

93:                                               ; preds = %92, %84
  %94 = phi ptr [ %91, %84 ], [ %81, %92 ]
  %95 = phi i32 [ %89, %84 ], [ %58, %92 ]
  %96 = load i16, ptr %74, align 2, !tbaa !21
  %97 = sext i16 %96 to i32
  br label %98

98:                                               ; preds = %102, %93
  %99 = phi i32 [ %97, %93 ], [ %103, %102 ]
  %100 = phi ptr [ %94, %93 ], [ %104, %102 ]
  %101 = icmp slt i32 %99, 1
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = add nsw i32 %99, -1
  %104 = getelementptr inbounds i8, ptr %100, i64 -1
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 7, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !5
  %109 = sext i8 %108 to i32
  %110 = shl nuw i32 1, %103
  %111 = and i32 %110, %109
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %98, !llvm.loop !41

113:                                              ; preds = %102
  br i1 %101, label %114, label %240

114:                                              ; preds = %98, %113
  %115 = load i32, ptr @cflag, align 4, !tbaa !11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %114
  br i1 %18, label %132, label %118

118:                                              ; preds = %117
  %119 = load i16, ptr %21, align 8, !tbaa !24
  %120 = sext i16 %119 to i32
  %121 = add nsw i32 %120, 65
  %122 = load i16, ptr %22, align 2, !tbaa !20
  %123 = sext i16 %122 to i32
  %124 = load i16, ptr %23, align 4, !tbaa !18
  %125 = sext i16 %124 to i32
  %126 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 2
  %127 = load i16, ptr %126, align 8, !tbaa !24
  %128 = sext i16 %127 to i32
  %129 = add nsw i32 %128, 65
  %130 = load i16, ptr %55, align 4, !tbaa !18
  %131 = sext i16 %130 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %129, i32 noundef %131) #6
  br label %240

132:                                              ; preds = %117
  %133 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 2
  %134 = load i16, ptr %133, align 8, !tbaa !24
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %135, 65
  %137 = load i16, ptr %55, align 4, !tbaa !18
  %138 = sext i16 %137 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef %136, i32 noundef %138) #6
  br label %240

139:                                              ; preds = %114
  %140 = call ptr @lookup(ptr noundef nonnull %9, i32 noundef 1) #6
  %141 = icmp eq ptr %140, null
  br i1 %24, label %207, label %142

142:                                              ; preds = %139
  br i1 %141, label %240, label %143

143:                                              ; preds = %142
  br i1 %18, label %153, label %144

144:                                              ; preds = %143
  %145 = load i16, ptr %25, align 4, !tbaa !18
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %26, align 8, !tbaa !19
  %149 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %148) #6
  %150 = sext i16 %145 to i64
  %151 = getelementptr inbounds i8, ptr %10, i64 %150
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 43, ptr %151, align 1, !tbaa !5
  br label %153

153:                                              ; preds = %147, %144, %143
  %154 = phi ptr [ %152, %147 ], [ %10, %144 ], [ %10, %143 ]
  %155 = ptrtoint ptr %154 to i64
  %156 = sub i64 %155, %27
  %157 = trunc i64 %156 to i32
  %158 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %154, ptr noundef nonnull dereferenceable(1) %9) #6
  %159 = sext i32 %95 to i64
  %160 = getelementptr inbounds i8, ptr %154, i64 %159
  br i1 %18, label %170, label %161

161:                                              ; preds = %153
  %162 = load i16, ptr %28, align 2, !tbaa !20
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, ptr %160, i64 1
  store i8 45, ptr %160, align 1, !tbaa !5
  %166 = load ptr, ptr %5, align 8, !tbaa !22
  %167 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(1) %166) #6
  %168 = sext i16 %162 to i64
  %169 = getelementptr inbounds i8, ptr %165, i64 %168
  br label %170

170:                                              ; preds = %164, %161, %153
  %171 = phi ptr [ %169, %164 ], [ %160, %161 ], [ %160, %153 ]
  %172 = load i16, ptr %70, align 2, !tbaa !20
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds i8, ptr %171, i64 1
  store i8 45, ptr %171, align 1, !tbaa !5
  %176 = load ptr, ptr %33, align 8, !tbaa !22
  %177 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %175, ptr noundef nonnull dereferenceable(1) %176) #6
  %178 = load i16, ptr %70, align 2, !tbaa !20
  %179 = sext i16 %178 to i64
  %180 = getelementptr inbounds i8, ptr %175, i64 %179
  br label %181

181:                                              ; preds = %174, %170
  %182 = phi ptr [ %180, %174 ], [ %171, %170 ]
  %183 = load i16, ptr %55, align 4, !tbaa !18
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 43, ptr %182, align 1, !tbaa !5
  %187 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !19
  %189 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(1) %188) #6
  %190 = load i16, ptr %55, align 4, !tbaa !18
  %191 = sext i16 %190 to i64
  %192 = getelementptr inbounds i8, ptr %186, i64 %191
  br label %193

193:                                              ; preds = %185, %181
  %194 = phi ptr [ %192, %185 ], [ %182, %181 ]
  br i1 %18, label %198, label %195

195:                                              ; preds = %193
  %196 = load i16, ptr %29, align 2, !tbaa !20
  %197 = sext i16 %196 to i32
  br label %198

198:                                              ; preds = %193, %195
  %199 = phi i32 [ %197, %195 ], [ 0, %193 ]
  %200 = load i16, ptr %70, align 2, !tbaa !20
  %201 = sext i16 %200 to i32
  %202 = ptrtoint ptr %194 to i64
  %203 = add i64 %155, %159
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i32 @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %199, i32 noundef %157, i32 noundef %201, i32 noundef %205, ptr noundef nonnull %140, ptr noundef %5, ptr noundef %33) #6
  br label %240

207:                                              ; preds = %139
  br i1 %141, label %240, label %208

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.dent, ptr %140, i64 0, i32 2
  %210 = load i64, ptr %209, align 8, !tbaa !25
  %211 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 2
  %212 = load i16, ptr %211, align 8, !tbaa !24
  %213 = sext i16 %212 to i64
  %214 = and i64 %213, 4294967295
  %215 = shl nuw i64 1, %214
  %216 = and i64 %215, %210
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %240, label %218

218:                                              ; preds = %208
  br i1 %18, label %226, label %219

219:                                              ; preds = %218
  %220 = load i16, ptr %30, align 8, !tbaa !24
  %221 = sext i16 %220 to i64
  %222 = and i64 %221, 4294967295
  %223 = shl nuw i64 1, %222
  %224 = and i64 %223, %210
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %240, label %226

226:                                              ; preds = %219, %218
  %227 = load i32, ptr @numhits, align 4, !tbaa !11
  %228 = icmp slt i32 %227, 10
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = sext i32 %227 to i64
  %231 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230
  store ptr %140, ptr %231, align 8, !tbaa !27
  %232 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230, i32 1
  store ptr %5, ptr %232, align 8, !tbaa !29
  %233 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230, i32 2
  store ptr %33, ptr %233, align 8, !tbaa !30
  %234 = add nsw i32 %227, 1
  store i32 %234, ptr @numhits, align 4, !tbaa !11
  br label %235

235:                                              ; preds = %229, %226
  br i1 %31, label %236, label %240

236:                                              ; preds = %235
  %237 = call i32 @cap_ok(ptr noundef %0, ptr noundef nonnull @hits, i32 noundef %2) #6
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  store i32 0, ptr @numhits, align 4, !tbaa !11
  br label %240

240:                                              ; preds = %40, %54, %62, %69, %132, %118, %207, %208, %219, %239, %235, %142, %198, %113, %49, %35
  %241 = getelementptr inbounds %struct.flagent, ptr %33, i64 1
  %242 = add nsw i32 %34, -1
  %243 = icmp sgt i32 %34, 1
  br i1 %243, label %32, label %244, !llvm.loop !42

244:                                              ; preds = %236, %240, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @ichartosstr(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"flagptr", !6, i64 0, !10, i64 8}
!10 = !{!"int", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !17, i64 24}
!15 = !{!"flagent", !16, i64 0, !16, i64 8, !17, i64 16, !17, i64 18, !17, i64 20, !17, i64 22, !17, i64 24, !6, i64 26}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{!15, !17, i64 20}
!19 = !{!15, !16, i64 8}
!20 = !{!15, !17, i64 18}
!21 = !{!15, !17, i64 22}
!22 = !{!15, !16, i64 0}
!23 = distinct !{!23, !13}
!24 = !{!15, !17, i64 16}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!28, !16, i64 0}
!28 = !{!"success", !16, i64 0, !16, i64 8, !16, i64 16}
!29 = !{!28, !16, i64 8}
!30 = !{!28, !16, i64 16}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = !{!16, !16, i64 0}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
