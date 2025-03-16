; ModuleID = 'takehiro.c'
source_filename = "takehiro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon.0] }
%struct.anon.0 = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@subdv_table = dso_local local_unnamed_addr global [23 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i32 0, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 7 }, %struct.anon { i32 6, i32 7 }, %struct.anon { i32 6, i32 7 }], align 16
@ipow20 = external local_unnamed_addr global [256 x double], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@huf_tbl_noESC = internal unnamed_addr constant [15 x i32] [i32 1, i32 2, i32 5, i32 7, i32 7, i32 10, i32 10, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 16
@ht = external local_unnamed_addr global [34 x %struct.huffcodetab], align 16
@cb_esc_buf = internal global [288 x i32] zeroinitializer, align 16
@cb_esc_end = internal unnamed_addr global ptr null, align 8
@scfsi_calc.scfsi_band = internal unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 11, i32 16, i32 21], align 16
@scfsi_calc.slen1_n = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 16
@scfsi_calc.slen2_n = internal unnamed_addr constant [16 x i32] [i32 0, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@scfsi_calc.slen1_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 16
@scfsi_calc.slen2_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @count_bits(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !12
  %12 = fdiv double 8.206000e+03, %11
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, 576
  br i1 %15, label %21, label %16, !llvm.loop !14

16:                                               ; preds = %4, %13
  %17 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !12
  %20 = fcmp ogt double %19, %12
  br i1 %20, label %190, label %13

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 60
  %23 = load i32, ptr %22, align 4, !tbaa !16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @quantize_xrpow(ptr noundef %2, ptr noundef %1, ptr noundef %3) #7
  br label %27

26:                                               ; preds = %21
  tail call void @quantize_xrpow_ISO(ptr noundef %2, ptr noundef %1, ptr noundef %3) #7
  br label %27

27:                                               ; preds = %26, %25
  %28 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds i32, ptr %1, i64 36
  %33 = call fastcc i32 @choose_table_short(ptr noundef %1, ptr noundef nonnull %32, ptr noundef nonnull %6)
  %34 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 8
  store i32 %33, ptr %34, align 8, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %1, i64 576
  %36 = call fastcc i32 @choose_table_short(ptr noundef nonnull %32, ptr noundef nonnull %35, ptr noundef nonnull %6)
  %37 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 8, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !5
  %38 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 1
  store i32 288, ptr %38, align 4, !tbaa !21
  br label %188

39:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !tbaa !5
  %40 = getelementptr i32, ptr %1, i64 -1
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %47, %44 ], [ 576, %39 ]
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr i32, ptr %40, i64 %42
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = add nsw i64 %42, -2
  %48 = getelementptr inbounds i32, ptr %1, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %50 = or i32 %49, %46
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %41, label %52, !llvm.loop !22

52:                                               ; preds = %44
  %53 = trunc i64 %42 to i32
  br label %54

54:                                               ; preds = %41, %52
  %55 = phi i32 [ %53, %52 ], [ 0, %41 ]
  %56 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 2
  store i32 %55, ptr %56, align 8, !tbaa !23
  %57 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 32, i32 3), align 16
  %58 = and i32 %55, 3
  br label %59

59:                                               ; preds = %103, %54
  %60 = phi i32 [ 0, %54 ], [ %104, %103 ]
  %61 = phi i32 [ %55, %54 ], [ %73, %103 ]
  %62 = phi i32 [ 0, %54 ], [ %105, %103 ]
  %63 = icmp sgt i32 %61, 3
  br i1 %63, label %64, label %106

64:                                               ; preds = %59
  %65 = zext nneg i32 %61 to i64
  %66 = getelementptr i32, ptr %1, i64 %65
  %67 = getelementptr i32, ptr %66, i64 -1
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = getelementptr i32, ptr %66, i64 -2
  %70 = load i32, ptr %69, align 4, !tbaa !5
  %71 = getelementptr i32, ptr %66, i64 -3
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = add nsw i32 %61, -4
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %1, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !5
  %77 = or i32 %70, %68
  %78 = or i32 %77, %72
  %79 = or i32 %78, %76
  %80 = icmp ult i32 %79, 2
  br i1 %80, label %81, label %103

81:                                               ; preds = %64
  %82 = add nsw i32 %68, %60
  %83 = icmp ne i32 %70, 0
  %84 = add nsw i32 %68, 2
  %85 = zext i1 %83 to i32
  %86 = add nsw i32 %82, %85
  %87 = select i1 %83, i32 %84, i32 %68
  %88 = icmp ne i32 %72, 0
  %89 = add nsw i32 %87, 4
  %90 = zext i1 %88 to i32
  %91 = add nsw i32 %86, %90
  %92 = select i1 %88, i32 %89, i32 %87
  %93 = icmp ne i32 %76, 0
  %94 = add nsw i32 %92, 8
  %95 = zext i1 %93 to i32
  %96 = add nsw i32 %91, %95
  %97 = select i1 %93, i32 %94, i32 %92
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %57, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !24
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %62, %101
  br label %103

103:                                              ; preds = %81, %64
  %104 = phi i32 [ %96, %81 ], [ %60, %64 ]
  %105 = phi i32 [ %102, %81 ], [ %62, %64 ]
  br i1 %80, label %59, label %106, !llvm.loop !25

106:                                              ; preds = %103, %59
  %107 = phi i32 [ %61, %103 ], [ %58, %59 ]
  %108 = phi i32 [ %104, %103 ], [ %60, %59 ]
  %109 = phi i32 [ %105, %103 ], [ %62, %59 ]
  store i32 %108, ptr %5, align 4, !tbaa !5
  %110 = sub i32 %55, %107
  %111 = icmp slt i32 %109, %110
  %112 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 14
  %113 = add nsw i32 %108, %110
  %114 = add nsw i32 %109, %108
  %115 = select i1 %111, i32 %114, i32 %113
  %116 = select i1 %111, i32 0, i32 1
  store i32 %115, ptr %5, align 4, !tbaa !5
  store i32 %116, ptr %112, align 8, !tbaa !26
  %117 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 18
  store i32 %115, ptr %117, align 8, !tbaa !27
  %118 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 1
  store i32 %107, ptr %118, align 4, !tbaa !21
  %119 = icmp eq i32 %107, 0
  br i1 %119, label %181, label %120

120:                                              ; preds = %106
  %121 = icmp eq i32 %29, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %120, %122
  %123 = phi i64 [ %124, %122 ], [ 0, %120 ]
  %124 = add nuw nsw i64 %123, 1
  %125 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = icmp slt i32 %126, %107
  br i1 %127, label %122, label %128, !llvm.loop !28

128:                                              ; preds = %122
  %129 = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %124
  %130 = load i32, ptr %129, align 8, !tbaa !29
  %131 = sext i32 %130 to i64
  br label %132

132:                                              ; preds = %132, %128
  %133 = phi i64 [ %138, %132 ], [ %131, %128 ]
  %134 = add nsw i64 %133, 1
  %135 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !5
  %137 = icmp sgt i32 %136, %107
  %138 = add i64 %133, -1
  br i1 %137, label %132, label %139, !llvm.loop !31

139:                                              ; preds = %132
  %140 = trunc i64 %133 to i32
  %141 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 10
  store i32 %140, ptr %141, align 8, !tbaa !32
  %142 = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %124, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !33
  %144 = add i32 %140, 2
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i32 [ %143, %139 ], [ %152, %145 ]
  %147 = add i32 %144, %146
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !5
  %151 = icmp sgt i32 %150, %107
  %152 = add nsw i32 %146, -1
  br i1 %151, label %145, label %153, !llvm.loop !34

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 11
  store i32 %146, ptr %154, align 4, !tbaa !35
  %155 = and i64 %134, 4294967295
  %156 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !5
  %158 = load i32, ptr %149, align 4, !tbaa !5
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %1, i64 %159
  %161 = zext nneg i32 %107 to i64
  %162 = getelementptr inbounds i32, ptr %1, i64 %161
  %163 = call fastcc i32 @choose_table(ptr noundef %160, ptr noundef nonnull %162, ptr noundef nonnull %5)
  %164 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 8, i64 2
  store i32 %163, ptr %164, align 8, !tbaa !5
  br label %170

165:                                              ; preds = %120
  %166 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 10
  store i32 7, ptr %166, align 8, !tbaa !32
  %167 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 11
  store i32 13, ptr %167, align 4, !tbaa !35
  %168 = load i32, ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 0, i64 8), align 4, !tbaa !5
  %169 = tail call i32 @llvm.smin.i32(i32 %168, i32 %107)
  br label %170

170:                                              ; preds = %165, %153
  %171 = phi i32 [ %157, %153 ], [ %169, %165 ]
  %172 = phi i32 [ %158, %153 ], [ %107, %165 ]
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, ptr %1, i64 %173
  %175 = call fastcc i32 @choose_table(ptr noundef %1, ptr noundef %174, ptr noundef nonnull %5)
  %176 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 8
  store i32 %175, ptr %176, align 8, !tbaa !5
  %177 = sext i32 %172 to i64
  %178 = getelementptr inbounds i32, ptr %1, i64 %177
  %179 = call fastcc i32 @choose_table(ptr noundef %174, ptr noundef %178, ptr noundef nonnull %5)
  %180 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 8, i64 1
  store i32 %179, ptr %180, align 4, !tbaa !5
  br label %181

181:                                              ; preds = %106, %170
  %182 = load i32, ptr %5, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  store i32 %182, ptr %6, align 4, !tbaa !5
  %183 = load i32, ptr %56, align 8, !tbaa !23
  %184 = load i32, ptr %118, align 4, !tbaa !21
  %185 = sub i32 %183, %184
  %186 = lshr i32 %185, 2
  store i32 %186, ptr %56, align 8, !tbaa !23
  %187 = lshr i32 %184, 1
  store i32 %187, ptr %118, align 4, !tbaa !21
  br label %188

188:                                              ; preds = %181, %31
  %189 = load i32, ptr %6, align 4, !tbaa !5
  br label %190

190:                                              ; preds = %16, %188
  %191 = phi i32 [ %189, %188 ], [ 100000, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %191
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @quantize_xrpow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quantize_xrpow_ISO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @choose_table_short(ptr noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = icmp ult ptr %0, %1
  br i1 %4, label %5, label %15

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %13, %5 ], [ 0, %3 ]
  %7 = phi ptr [ %11, %5 ], [ %0, %3 ]
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = load i32, ptr %7, align 4, !tbaa !5
  %10 = tail call i32 @llvm.smax.i32(i32 %6, i32 %9)
  %11 = getelementptr inbounds i32, ptr %7, i64 2
  %12 = load i32, ptr %8, align 4, !tbaa !5
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 %12)
  %14 = icmp ult ptr %11, %1
  br i1 %14, label %5, label %15, !llvm.loop !36

15:                                               ; preds = %5, %3
  %16 = phi i32 [ 0, %3 ], [ %13, %5 ]
  %17 = icmp ugt i32 %16, 8206
  br i1 %17, label %237, label %18

18:                                               ; preds = %15
  %19 = icmp ult i32 %16, 16
  br i1 %19, label %20, label %128

20:                                               ; preds = %18
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %240, label %22

22:                                               ; preds = %20
  %23 = add nsw i32 %16, -1
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %27, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  br label %30

30:                                               ; preds = %56, %22
  %31 = phi ptr [ %0, %22 ], [ %57, %56 ]
  %32 = phi i32 [ 0, %22 ], [ %58, %56 ]
  %33 = phi ptr [ @cb_esc_buf, %22 ], [ %48, %56 ]
  %34 = phi i32 [ 0, %22 ], [ %53, %56 ]
  %35 = phi i32 [ 0, %22 ], [ %47, %56 ]
  %36 = getelementptr inbounds i32, ptr %31, i64 3
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, ptr %31, i64 1
  %39 = load i32, ptr %31, align 4, !tbaa !5
  %40 = icmp ne i32 %39, 0
  %41 = shl i32 %39, 4
  %42 = zext i1 %40 to i32
  %43 = icmp ne i32 %37, 0
  %44 = add nsw i32 %41, %37
  %45 = zext i1 %43 to i32
  %46 = add i32 %35, %45
  %47 = add i32 %46, %42
  %48 = getelementptr inbounds i32, ptr %33, i64 1
  store i32 %44, ptr %33, align 4, !tbaa !5
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds i8, ptr %29, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !24
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %34, %52
  %54 = add nuw nsw i32 %32, 1
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %59, label %56

56:                                               ; preds = %30, %59
  %57 = phi ptr [ %38, %30 ], [ %60, %59 ]
  %58 = phi i32 [ %54, %30 ], [ 0, %59 ]
  br label %30, !llvm.loop !39

59:                                               ; preds = %30
  %60 = getelementptr inbounds i32, ptr %31, i64 4
  %61 = icmp ult ptr %60, %1
  br i1 %61, label %56, label %62

62:                                               ; preds = %59
  store ptr %48, ptr @cb_esc_end, align 8, !tbaa !40
  %63 = add nsw i32 %53, %47
  switch i32 %26, label %124 [
    i32 7, label %64
    i32 10, label %64
    i32 2, label %84
    i32 5, label %84
    i32 13, label %107
  ]

64:                                               ; preds = %62, %62
  %65 = add nsw i32 %26, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %66, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  br label %69

69:                                               ; preds = %69, %64
  %70 = phi i32 [ %47, %64 ], [ %78, %69 ]
  %71 = phi ptr [ @cb_esc_buf, %64 ], [ %72, %69 ]
  %72 = getelementptr inbounds i32, ptr %71, i64 1
  %73 = load i32, ptr %71, align 4, !tbaa !5
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %68, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !24
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %70, %77
  %79 = icmp ult ptr %71, %33
  br i1 %79, label %69, label %80, !llvm.loop !41

80:                                               ; preds = %69
  %81 = icmp sgt i32 %63, %78
  %82 = select i1 %81, i32 %65, i32 %26
  %83 = tail call i32 @llvm.smin.i32(i32 %63, i32 %78)
  br label %84

84:                                               ; preds = %80, %62, %62
  %85 = phi i32 [ %26, %62 ], [ %26, %62 ], [ %82, %80 ]
  %86 = phi i32 [ %63, %62 ], [ %63, %62 ], [ %83, %80 ]
  %87 = phi i32 [ %26, %62 ], [ %26, %62 ], [ %65, %80 ]
  %88 = add nsw i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %89, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !37
  br label %92

92:                                               ; preds = %92, %84
  %93 = phi i32 [ %47, %84 ], [ %101, %92 ]
  %94 = phi ptr [ @cb_esc_buf, %84 ], [ %95, %92 ]
  %95 = getelementptr inbounds i32, ptr %94, i64 1
  %96 = load i32, ptr %94, align 4, !tbaa !5
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %91, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !24
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %93, %100
  %102 = icmp ult ptr %94, %33
  br i1 %102, label %92, label %103, !llvm.loop !41

103:                                              ; preds = %92
  %104 = icmp sgt i32 %86, %101
  %105 = select i1 %104, i32 %88, i32 %85
  %106 = tail call i32 @llvm.smin.i32(i32 %86, i32 %101)
  br label %124

107:                                              ; preds = %62
  %108 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 15, i32 3), align 8, !tbaa !37
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi i32 [ %47, %107 ], [ %118, %109 ]
  %111 = phi ptr [ @cb_esc_buf, %107 ], [ %112, %109 ]
  %112 = getelementptr inbounds i32, ptr %111, i64 1
  %113 = load i32, ptr %111, align 4, !tbaa !5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %108, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !24
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %110, %117
  %119 = icmp ult ptr %111, %33
  br i1 %119, label %109, label %120, !llvm.loop !41

120:                                              ; preds = %109
  %121 = icmp sgt i32 %63, %118
  %122 = select i1 %121, i32 15, i32 13
  %123 = tail call i32 @llvm.smin.i32(i32 %63, i32 %118)
  br label %124

124:                                              ; preds = %120, %103, %62
  %125 = phi i32 [ %26, %62 ], [ %105, %103 ], [ %122, %120 ]
  %126 = phi i32 [ %63, %62 ], [ %106, %103 ], [ %123, %120 ]
  %127 = load i32, ptr %2, align 4, !tbaa !5
  br label %232

128:                                              ; preds = %18
  %129 = add nsw i32 %16, -15
  br label %130

130:                                              ; preds = %128, %135
  %131 = phi i64 [ 24, %128 ], [ %136, %135 ]
  %132 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %131, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !42
  %134 = icmp slt i32 %133, %129
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = add nuw nsw i64 %131, 1
  %137 = icmp eq i64 %136, 32
  br i1 %137, label %140, label %130, !llvm.loop !43

138:                                              ; preds = %130
  %139 = trunc i64 %131 to i32
  br label %140

140:                                              ; preds = %135, %138
  %141 = phi i32 [ %139, %138 ], [ 32, %135 ]
  %142 = add nsw i32 %141, -8
  %143 = icmp slt i32 %141, 32
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = zext nneg i32 %141 to i64
  %146 = add nsw i64 %145, -8
  br label %147

147:                                              ; preds = %144, %152
  %148 = phi i64 [ %146, %144 ], [ %153, %152 ]
  %149 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %148, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !42
  %151 = icmp slt i32 %150, %129
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = add nuw nsw i64 %148, 1
  %154 = icmp eq i64 %153, 24
  br i1 %154, label %157, label %147, !llvm.loop !44

155:                                              ; preds = %147
  %156 = trunc i64 %148 to i32
  br label %157

157:                                              ; preds = %155, %152, %140
  %158 = phi i32 [ %142, %140 ], [ %156, %155 ], [ 24, %152 ]
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %159
  %161 = load i32, ptr %160, align 8, !tbaa !45
  %162 = zext nneg i32 %141 to i64
  %163 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %162
  %164 = load i32, ptr %163, align 8, !tbaa !45
  %165 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 16, !tbaa !37
  %166 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 16, !tbaa !37
  br label %167

167:                                              ; preds = %223, %157
  %168 = phi ptr [ %0, %157 ], [ %224, %223 ]
  %169 = phi i32 [ 0, %157 ], [ %208, %223 ]
  %170 = phi i32 [ 0, %157 ], [ %216, %223 ]
  %171 = phi i32 [ 0, %157 ], [ %220, %223 ]
  br label %172

172:                                              ; preds = %207, %167
  %173 = phi i32 [ 0, %167 ], [ %221, %207 ]
  %174 = phi i32 [ %171, %167 ], [ %220, %207 ]
  %175 = phi i32 [ %170, %167 ], [ %216, %207 ]
  %176 = phi i32 [ %169, %167 ], [ %208, %207 ]
  %177 = phi ptr [ %168, %167 ], [ %180, %207 ]
  %178 = getelementptr inbounds i32, ptr %177, i64 3
  %179 = load i32, ptr %178, align 4, !tbaa !5
  %180 = getelementptr inbounds i32, ptr %177, i64 1
  %181 = load i32, ptr %177, align 4, !tbaa !5
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %172
  %184 = add nsw i32 %176, 1
  %185 = icmp sgt i32 %181, 14
  %186 = select i1 %185, i32 %161, i32 0
  %187 = add nsw i32 %186, %175
  %188 = select i1 %185, i32 %164, i32 0
  %189 = add nsw i32 %188, %174
  %190 = shl nsw i32 %181, 4
  %191 = select i1 %185, i32 240, i32 %190
  br label %192

192:                                              ; preds = %183, %172
  %193 = phi i32 [ %184, %183 ], [ %176, %172 ]
  %194 = phi i32 [ %187, %183 ], [ %175, %172 ]
  %195 = phi i32 [ %189, %183 ], [ %174, %172 ]
  %196 = phi i32 [ %191, %183 ], [ 0, %172 ]
  %197 = icmp eq i32 %179, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %192
  %199 = add nsw i32 %193, 1
  %200 = icmp sgt i32 %179, 14
  %201 = select i1 %200, i32 %161, i32 0
  %202 = add nsw i32 %194, %201
  %203 = select i1 %200, i32 %164, i32 0
  %204 = add nsw i32 %195, %203
  %205 = select i1 %200, i32 15, i32 %179
  %206 = add nsw i32 %196, %205
  br label %207

207:                                              ; preds = %198, %192
  %208 = phi i32 [ %199, %198 ], [ %193, %192 ]
  %209 = phi i32 [ %202, %198 ], [ %194, %192 ]
  %210 = phi i32 [ %204, %198 ], [ %195, %192 ]
  %211 = phi i32 [ %206, %198 ], [ %196, %192 ]
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %165, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !24
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 %209, %215
  %217 = getelementptr inbounds i8, ptr %166, i64 %212
  %218 = load i8, ptr %217, align 1, !tbaa !24
  %219 = zext i8 %218 to i32
  %220 = add nsw i32 %210, %219
  %221 = add nuw nsw i32 %173, 1
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %223, label %172, !llvm.loop !46

223:                                              ; preds = %207
  %224 = getelementptr i8, ptr %168, i64 24
  %225 = icmp ult ptr %224, %1
  br i1 %225, label %167, label %226, !llvm.loop !47

226:                                              ; preds = %223
  %227 = icmp sgt i32 %216, %220
  %228 = select i1 %227, i32 %141, i32 %158
  %229 = tail call i32 @llvm.smin.i32(i32 %216, i32 %220)
  %230 = add nsw i32 %229, %208
  %231 = load i32, ptr %2, align 4, !tbaa !5
  br label %232

232:                                              ; preds = %124, %226
  %233 = phi i32 [ %231, %226 ], [ %126, %124 ]
  %234 = phi i32 [ %230, %226 ], [ %127, %124 ]
  %235 = phi i32 [ %228, %226 ], [ %125, %124 ]
  %236 = add nsw i32 %234, %233
  br label %237

237:                                              ; preds = %232, %15
  %238 = phi i32 [ 100000, %15 ], [ %236, %232 ]
  %239 = phi i32 [ -1, %15 ], [ %235, %232 ]
  store i32 %238, ptr %2, align 4, !tbaa !5
  br label %240

240:                                              ; preds = %237, %20
  %241 = phi i32 [ 0, %20 ], [ %239, %237 ]
  ret i32 %241
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @best_huffman_divide(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca i32, align 4
  %6 = alloca [25 x i32], align 16
  %7 = alloca [25 x i32], align 16
  %8 = alloca %struct.gr_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  %9 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = shl i32 %10, 1
  %12 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 18
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds i32, ptr %3, i64 %17
  br label %19

19:                                               ; preds = %4, %24
  %20 = phi i64 [ 2, %4 ], [ %30, %24 ]
  %21 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = icmp sgt i32 %22, %11
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [25 x i32], ptr %6, i64 0, i64 %20
  store i32 %16, ptr %25, align 4, !tbaa !5
  %26 = sext i32 %22 to i64
  %27 = getelementptr inbounds i32, ptr %3, i64 %26
  %28 = call fastcc i32 @choose_table(ptr noundef %27, ptr noundef %18, ptr noundef nonnull %25)
  %29 = getelementptr inbounds [25 x i32], ptr %7, i64 0, i64 %20
  store i32 %28, ptr %29, align 4, !tbaa !5
  %30 = add nuw nsw i64 %20, 1
  %31 = icmp eq i64 %30, 23
  br i1 %31, label %34, label %19, !llvm.loop !48

32:                                               ; preds = %19
  %33 = trunc i64 %20 to i32
  br label %34

34:                                               ; preds = %24, %32
  %35 = phi i32 [ %33, %32 ], [ 23, %24 ]
  %36 = icmp ult i32 %35, 25
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = zext nneg i32 %35 to i64
  br label %45

39:                                               ; preds = %45, %34
  %40 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 10
  %41 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 8
  %42 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 8, i64 1
  %43 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 11
  %44 = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 8, i64 2
  br label %52

45:                                               ; preds = %37, %45
  %46 = phi i64 [ %38, %37 ], [ %48, %45 ]
  %47 = getelementptr inbounds [25 x i32], ptr %6, i64 0, i64 %46
  store i32 100000, ptr %47, align 4, !tbaa !5
  %48 = add nuw nsw i64 %46, 1
  %49 = icmp eq i64 %48, 25
  br i1 %49, label %39, label %45, !llvm.loop !49

50:                                               ; preds = %89
  %51 = icmp eq i64 %54, 16
  br i1 %51, label %92, label %52, !llvm.loop !50

52:                                               ; preds = %39, %50
  %53 = phi i64 [ 0, %39 ], [ %54, %50 ]
  %54 = add nuw nsw i64 %53, 1
  %55 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %57 = icmp sgt i32 %56, %11
  br i1 %57, label %92, label %58

58:                                               ; preds = %52
  %59 = trunc i64 %53 to i32
  store i32 %59, ptr %40, align 8, !tbaa !32
  store i32 0, ptr %5, align 4, !tbaa !5
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds i32, ptr %3, i64 %60
  %62 = call fastcc i32 @choose_table(ptr noundef %3, ptr noundef %61, ptr noundef nonnull %5)
  store i32 %62, ptr %41, align 8, !tbaa !5
  %63 = load i32, ptr %2, align 8, !tbaa !51
  %64 = load i32, ptr %5, align 4, !tbaa !5
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %92, label %66

66:                                               ; preds = %58
  %67 = add nuw nsw i64 %53, 2
  br label %68

68:                                               ; preds = %66, %89
  %69 = phi i64 [ 0, %66 ], [ %90, %89 ]
  %70 = add nuw nsw i64 %67, %69
  %71 = getelementptr inbounds [25 x i32], ptr %6, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = add nsw i32 %72, %64
  store i32 %73, ptr %8, align 8, !tbaa !5
  %74 = load i32, ptr %2, align 8, !tbaa !51
  %75 = icmp slt i32 %74, %73
  br i1 %75, label %89, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %70
  %78 = load i32, ptr %77, align 4, !tbaa !5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %3, i64 %79
  %81 = call fastcc i32 @choose_table(ptr noundef %61, ptr noundef %80, ptr noundef nonnull %8)
  store i32 %81, ptr %42, align 4, !tbaa !5
  %82 = load i32, ptr %2, align 8, !tbaa !51
  %83 = load i32, ptr %8, align 8, !tbaa !5
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %76
  %86 = trunc i64 %69 to i32
  store i32 %86, ptr %43, align 4, !tbaa !35
  %87 = getelementptr inbounds [25 x i32], ptr %7, i64 0, i64 %70
  %88 = load i32, ptr %87, align 4, !tbaa !5
  store i32 %88, ptr %44, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false)
  br label %89

89:                                               ; preds = %76, %68, %85
  %90 = add nuw nsw i64 %69, 1
  %91 = icmp eq i64 %90, 8
  br i1 %91, label %50, label %68, !llvm.loop !52

92:                                               ; preds = %58, %52, %50
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @choose_table(ptr noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = icmp ult ptr %0, %1
  br i1 %4, label %5, label %15

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %13, %5 ], [ 0, %3 ]
  %7 = phi ptr [ %11, %5 ], [ %0, %3 ]
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = load i32, ptr %7, align 4, !tbaa !5
  %10 = tail call i32 @llvm.smax.i32(i32 %6, i32 %9)
  %11 = getelementptr inbounds i32, ptr %7, i64 2
  %12 = load i32, ptr %8, align 4, !tbaa !5
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 %12)
  %14 = icmp ult ptr %11, %1
  br i1 %14, label %5, label %15, !llvm.loop !36

15:                                               ; preds = %5, %3
  %16 = phi i32 [ 0, %3 ], [ %13, %5 ]
  %17 = icmp ugt i32 %16, 8206
  br i1 %17, label %223, label %18

18:                                               ; preds = %15
  %19 = icmp ult i32 %16, 16
  br i1 %19, label %20, label %120

20:                                               ; preds = %18
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %226, label %22

22:                                               ; preds = %20
  %23 = add nsw i32 %16, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %27, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  br label %30

30:                                               ; preds = %30, %22
  %31 = phi i32 [ 0, %22 ], [ %46, %30 ]
  %32 = phi i32 [ 0, %22 ], [ %52, %30 ]
  %33 = phi ptr [ @cb_esc_buf, %22 ], [ %47, %30 ]
  %34 = phi ptr [ %0, %22 ], [ %37, %30 ]
  %35 = getelementptr inbounds i32, ptr %34, i64 1
  %36 = load i32, ptr %34, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, ptr %34, i64 2
  %38 = load i32, ptr %35, align 4, !tbaa !5
  %39 = icmp ne i32 %36, 0
  %40 = shl i32 %36, 4
  %41 = zext i1 %39 to i32
  %42 = add nsw i32 %31, %41
  %43 = icmp ne i32 %38, 0
  %44 = add nsw i32 %40, %38
  %45 = zext i1 %43 to i32
  %46 = add nsw i32 %42, %45
  %47 = getelementptr inbounds i32, ptr %33, i64 1
  store i32 %44, ptr %33, align 4, !tbaa !5
  %48 = sext i32 %44 to i64
  %49 = getelementptr inbounds i8, ptr %29, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !24
  %51 = zext i8 %50 to i32
  %52 = add nuw nsw i32 %32, %51
  %53 = icmp ult ptr %37, %1
  br i1 %53, label %30, label %54, !llvm.loop !53

54:                                               ; preds = %30
  store ptr %47, ptr @cb_esc_end, align 8, !tbaa !40
  %55 = add nsw i32 %52, %46
  switch i32 %26, label %116 [
    i32 7, label %56
    i32 10, label %56
    i32 2, label %76
    i32 5, label %76
    i32 13, label %99
  ]

56:                                               ; preds = %54, %54
  %57 = add nsw i32 %26, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %58, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  br label %61

61:                                               ; preds = %61, %56
  %62 = phi i32 [ %46, %56 ], [ %70, %61 ]
  %63 = phi ptr [ @cb_esc_buf, %56 ], [ %64, %61 ]
  %64 = getelementptr inbounds i32, ptr %63, i64 1
  %65 = load i32, ptr %63, align 4, !tbaa !5
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %60, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !24
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %62, %69
  %71 = icmp ult ptr %63, %33
  br i1 %71, label %61, label %72, !llvm.loop !41

72:                                               ; preds = %61
  %73 = icmp sgt i32 %55, %70
  %74 = select i1 %73, i32 %57, i32 %26
  %75 = tail call i32 @llvm.smin.i32(i32 %55, i32 %70)
  br label %76

76:                                               ; preds = %72, %54, %54
  %77 = phi i32 [ %26, %54 ], [ %26, %54 ], [ %74, %72 ]
  %78 = phi i32 [ %55, %54 ], [ %55, %54 ], [ %75, %72 ]
  %79 = phi i32 [ %26, %54 ], [ %26, %54 ], [ %57, %72 ]
  %80 = add nsw i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %81, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !37
  br label %84

84:                                               ; preds = %84, %76
  %85 = phi i32 [ %46, %76 ], [ %93, %84 ]
  %86 = phi ptr [ @cb_esc_buf, %76 ], [ %87, %84 ]
  %87 = getelementptr inbounds i32, ptr %86, i64 1
  %88 = load i32, ptr %86, align 4, !tbaa !5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %83, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !24
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %85, %92
  %94 = icmp ult ptr %86, %33
  br i1 %94, label %84, label %95, !llvm.loop !41

95:                                               ; preds = %84
  %96 = icmp sgt i32 %78, %93
  %97 = select i1 %96, i32 %80, i32 %77
  %98 = tail call i32 @llvm.smin.i32(i32 %78, i32 %93)
  br label %116

99:                                               ; preds = %54
  %100 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 15, i32 3), align 8, !tbaa !37
  br label %101

101:                                              ; preds = %101, %99
  %102 = phi i32 [ %46, %99 ], [ %110, %101 ]
  %103 = phi ptr [ @cb_esc_buf, %99 ], [ %104, %101 ]
  %104 = getelementptr inbounds i32, ptr %103, i64 1
  %105 = load i32, ptr %103, align 4, !tbaa !5
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %100, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !24
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %102, %109
  %111 = icmp ult ptr %103, %33
  br i1 %111, label %101, label %112, !llvm.loop !41

112:                                              ; preds = %101
  %113 = icmp sgt i32 %55, %110
  %114 = select i1 %113, i32 15, i32 13
  %115 = tail call i32 @llvm.smin.i32(i32 %55, i32 %110)
  br label %116

116:                                              ; preds = %112, %95, %54
  %117 = phi i32 [ %26, %54 ], [ %97, %95 ], [ %114, %112 ]
  %118 = phi i32 [ %55, %54 ], [ %98, %95 ], [ %115, %112 ]
  %119 = load i32, ptr %2, align 4, !tbaa !5
  br label %218

120:                                              ; preds = %18
  %121 = add nsw i32 %16, -15
  br label %122

122:                                              ; preds = %120, %127
  %123 = phi i64 [ 24, %120 ], [ %128, %127 ]
  %124 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %123, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !42
  %126 = icmp slt i32 %125, %121
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = add nuw nsw i64 %123, 1
  %129 = icmp eq i64 %128, 32
  br i1 %129, label %132, label %122, !llvm.loop !54

130:                                              ; preds = %122
  %131 = trunc i64 %123 to i32
  br label %132

132:                                              ; preds = %127, %130
  %133 = phi i32 [ %131, %130 ], [ 32, %127 ]
  %134 = add nsw i32 %133, -8
  %135 = icmp slt i32 %133, 32
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = zext nneg i32 %133 to i64
  %138 = add nsw i64 %137, -8
  br label %139

139:                                              ; preds = %136, %144
  %140 = phi i64 [ %138, %136 ], [ %145, %144 ]
  %141 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %140, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !42
  %143 = icmp slt i32 %142, %121
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = add nuw nsw i64 %140, 1
  %146 = icmp eq i64 %145, 24
  br i1 %146, label %149, label %139, !llvm.loop !55

147:                                              ; preds = %139
  %148 = trunc i64 %140 to i32
  br label %149

149:                                              ; preds = %147, %144, %132
  %150 = phi i32 [ %134, %132 ], [ %148, %147 ], [ 24, %144 ]
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %151
  %153 = load i32, ptr %152, align 8, !tbaa !45
  %154 = zext nneg i32 %133 to i64
  %155 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %154
  %156 = load i32, ptr %155, align 8, !tbaa !45
  br i1 %4, label %157, label %209

157:                                              ; preds = %149
  %158 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 16, !tbaa !37
  %159 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 16, !tbaa !37
  br label %160

160:                                              ; preds = %194, %157
  %161 = phi i32 [ 0, %157 ], [ %207, %194 ]
  %162 = phi i32 [ 0, %157 ], [ %203, %194 ]
  %163 = phi i32 [ 0, %157 ], [ %195, %194 ]
  %164 = phi ptr [ %0, %157 ], [ %167, %194 ]
  %165 = getelementptr inbounds i32, ptr %164, i64 1
  %166 = load i32, ptr %164, align 4, !tbaa !5
  %167 = getelementptr inbounds i32, ptr %164, i64 2
  %168 = load i32, ptr %165, align 4, !tbaa !5
  %169 = icmp eq i32 %166, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %160
  %171 = add nsw i32 %163, 1
  %172 = icmp sgt i32 %166, 14
  %173 = select i1 %172, i32 %153, i32 0
  %174 = add nsw i32 %173, %162
  %175 = select i1 %172, i32 %156, i32 0
  %176 = add nsw i32 %175, %161
  %177 = shl nsw i32 %166, 4
  %178 = select i1 %172, i32 240, i32 %177
  br label %179

179:                                              ; preds = %170, %160
  %180 = phi i32 [ %171, %170 ], [ %163, %160 ]
  %181 = phi i32 [ %174, %170 ], [ %162, %160 ]
  %182 = phi i32 [ %176, %170 ], [ %161, %160 ]
  %183 = phi i32 [ %178, %170 ], [ 0, %160 ]
  %184 = icmp eq i32 %168, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %179
  %186 = add nsw i32 %180, 1
  %187 = icmp sgt i32 %168, 14
  %188 = select i1 %187, i32 %153, i32 0
  %189 = add nsw i32 %181, %188
  %190 = select i1 %187, i32 %156, i32 0
  %191 = add nsw i32 %182, %190
  %192 = select i1 %187, i32 15, i32 %168
  %193 = add nsw i32 %183, %192
  br label %194

194:                                              ; preds = %185, %179
  %195 = phi i32 [ %186, %185 ], [ %180, %179 ]
  %196 = phi i32 [ %189, %185 ], [ %181, %179 ]
  %197 = phi i32 [ %191, %185 ], [ %182, %179 ]
  %198 = phi i32 [ %193, %185 ], [ %183, %179 ]
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, ptr %158, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !24
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %196, %202
  %204 = getelementptr inbounds i8, ptr %159, i64 %199
  %205 = load i8, ptr %204, align 1, !tbaa !24
  %206 = zext i8 %205 to i32
  %207 = add nsw i32 %197, %206
  %208 = icmp ult ptr %167, %1
  br i1 %208, label %160, label %209, !llvm.loop !56

209:                                              ; preds = %194, %149
  %210 = phi i32 [ 0, %149 ], [ %195, %194 ]
  %211 = phi i32 [ 0, %149 ], [ %203, %194 ]
  %212 = phi i32 [ 0, %149 ], [ %207, %194 ]
  %213 = icmp sgt i32 %211, %212
  %214 = select i1 %213, i32 %133, i32 %150
  %215 = tail call i32 @llvm.smin.i32(i32 %211, i32 %212)
  %216 = add nsw i32 %215, %210
  %217 = load i32, ptr %2, align 4, !tbaa !5
  br label %218

218:                                              ; preds = %116, %209
  %219 = phi i32 [ %217, %209 ], [ %118, %116 ]
  %220 = phi i32 [ %216, %209 ], [ %119, %116 ]
  %221 = phi i32 [ %214, %209 ], [ %117, %116 ]
  %222 = add nsw i32 %220, %219
  br label %223

223:                                              ; preds = %218, %15
  %224 = phi i32 [ 100000, %15 ], [ %222, %218 ]
  %225 = phi i32 [ -1, %15 ], [ %221, %218 ]
  store i32 %224, ptr %2, align 4, !tbaa !5
  br label %226

226:                                              ; preds = %223, %20
  %227 = phi i32 [ 0, %20 ], [ %225, %223 ]
  ret i32 %227
}

; Function Attrs: nounwind uwtable
define dso_local void @best_scalefac_store(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.III_side_info_t, ptr %4, i64 0, i32 4
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.III_side_info_t, ptr %4, i64 0, i32 4, i64 %8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %9, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 %8, i64 %10
  br label %19

17:                                               ; preds = %48, %6
  %18 = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 17
  br label %53

19:                                               ; preds = %15, %48
  %20 = phi i64 [ 0, %15 ], [ %49, %48 ]
  %21 = getelementptr inbounds [22 x i32], ptr %16, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %20
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = add nuw nsw i64 %20, 1
  %28 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = sext i32 %26 to i64
  br label %33

33:                                               ; preds = %31, %38
  %34 = phi i64 [ %32, %31 ], [ %39, %38 ]
  %35 = getelementptr inbounds [2 x [576 x i32]], ptr %3, i64 %8, i64 %10, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = add nsw i64 %34, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %29, %40
  br i1 %41, label %44, label %33, !llvm.loop !58

42:                                               ; preds = %33
  %43 = trunc i64 %34 to i32
  br label %44

44:                                               ; preds = %42, %38, %24
  %45 = phi i32 [ %26, %24 ], [ %43, %42 ], [ %29, %38 ]
  %46 = icmp eq i32 %45, %29
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, ptr %21, align 4, !tbaa !5
  br label %48

48:                                               ; preds = %19, %47, %44
  %49 = add nuw nsw i64 %20, 1
  %50 = load i32, ptr %12, align 8, !tbaa !57
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %19, label %17, !llvm.loop !59

53:                                               ; preds = %17, %93
  %54 = phi i64 [ 0, %17 ], [ %94, %93 ]
  %55 = load i32, ptr %18, align 4, !tbaa !60
  %56 = icmp slt i32 %55, 12
  br i1 %56, label %57, label %93

57:                                               ; preds = %53
  %58 = sext i32 %55 to i64
  br label %59

59:                                               ; preds = %57, %90
  %60 = phi i64 [ %58, %57 ], [ %91, %90 ]
  %61 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 %8, i64 %10, i32 1, i64 %60, i64 %54
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %60
  %66 = load i32, ptr %65, align 4, !tbaa !5
  %67 = add nsw i64 %60, 1
  %68 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = sext i32 %66 to i64
  br label %73

73:                                               ; preds = %71, %80
  %74 = phi i64 [ %72, %71 ], [ %81, %80 ]
  %75 = mul nsw i64 %74, 3
  %76 = add nsw i64 %75, %54
  %77 = getelementptr inbounds [2 x [576 x i32]], ptr %3, i64 %8, i64 %10, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = add nsw i64 %74, 1
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %69, %82
  br i1 %83, label %86, label %73, !llvm.loop !61

84:                                               ; preds = %73
  %85 = trunc i64 %74 to i32
  br label %86

86:                                               ; preds = %84, %80, %64
  %87 = phi i32 [ %66, %64 ], [ %85, %84 ], [ %69, %80 ]
  %88 = icmp eq i32 %87, %69
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, ptr %61, align 4, !tbaa !5
  br label %90

90:                                               ; preds = %59, %89, %86
  %91 = add nsw i64 %60, 1
  %92 = icmp eq i64 %91, 12
  br i1 %92, label %93, label %59, !llvm.loop !62

93:                                               ; preds = %90, %53
  %94 = add nuw nsw i64 %54, 1
  %95 = icmp eq i64 %94, 3
  br i1 %95, label %96, label %53, !llvm.loop !63

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 16
  %98 = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 15
  %99 = load i32, ptr %98, align 4, !tbaa !64
  %100 = load i32, ptr %11, align 8, !tbaa !51
  %101 = sub i32 %100, %99
  store i32 %101, ptr %11, align 8, !tbaa !51
  %102 = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 13
  %103 = load i32, ptr %102, align 4, !tbaa !65
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %190

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 12
  %107 = load i32, ptr %106, align 8, !tbaa !66
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %190

109:                                              ; preds = %105
  %110 = load i32, ptr %97, align 8, !tbaa !57
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 %8, i64 %10
  %114 = zext i32 %110 to i64
  br label %115

115:                                              ; preds = %112, %115
  %116 = phi i64 [ 0, %112 ], [ %121, %115 ]
  %117 = phi i32 [ 0, %112 ], [ %120, %115 ]
  %118 = getelementptr inbounds [22 x i32], ptr %113, i64 0, i64 %116
  %119 = load i32, ptr %118, align 4, !tbaa !5
  %120 = or i32 %119, %117
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, %114
  br i1 %122, label %123, label %115, !llvm.loop !67

123:                                              ; preds = %115, %109
  %124 = phi i32 [ 0, %109 ], [ %120, %115 ]
  %125 = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 17
  %126 = load i32, ptr %125, align 4, !tbaa !60
  %127 = icmp ult i32 %126, 12
  br i1 %127, label %128, label %144

128:                                              ; preds = %123
  %129 = zext nneg i32 %126 to i64
  br label %130

130:                                              ; preds = %128, %141
  %131 = phi i64 [ %129, %128 ], [ %142, %141 ]
  %132 = phi i32 [ %124, %128 ], [ %138, %141 ]
  br label %133

133:                                              ; preds = %130, %133
  %134 = phi i64 [ 0, %130 ], [ %139, %133 ]
  %135 = phi i32 [ %132, %130 ], [ %138, %133 ]
  %136 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 %8, i64 %10, i32 1, i64 %131, i64 %134
  %137 = load i32, ptr %136, align 4, !tbaa !5
  %138 = or i32 %137, %135
  %139 = add nuw nsw i64 %134, 1
  %140 = icmp eq i64 %139, 3
  br i1 %140, label %141, label %133, !llvm.loop !68

141:                                              ; preds = %133
  %142 = add nuw nsw i64 %131, 1
  %143 = icmp eq i64 %142, 12
  br i1 %143, label %144, label %130, !llvm.loop !69

144:                                              ; preds = %141, %123
  %145 = phi i32 [ %124, %123 ], [ %138, %141 ]
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  %148 = icmp ne i32 %145, 0
  %149 = and i1 %148, %147
  br i1 %149, label %150, label %190

150:                                              ; preds = %144
  %151 = load i32, ptr %97, align 8, !tbaa !57
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 %8, i64 %10
  br label %155

155:                                              ; preds = %153, %155
  %156 = phi i64 [ 0, %153 ], [ %160, %155 ]
  %157 = getelementptr inbounds [22 x i32], ptr %154, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !5
  %159 = sdiv i32 %158, 2
  store i32 %159, ptr %157, align 4, !tbaa !5
  %160 = add nuw nsw i64 %156, 1
  %161 = load i32, ptr %97, align 8, !tbaa !57
  %162 = zext i32 %161 to i64
  %163 = icmp ult i64 %160, %162
  br i1 %163, label %155, label %164, !llvm.loop !70

164:                                              ; preds = %155, %150
  %165 = load i32, ptr %125, align 4, !tbaa !60
  %166 = icmp ult i32 %165, 12
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = zext nneg i32 %165 to i64
  br label %169

169:                                              ; preds = %167, %178
  %170 = phi i64 [ %168, %167 ], [ %179, %178 ]
  br label %171

171:                                              ; preds = %169, %171
  %172 = phi i64 [ 0, %169 ], [ %176, %171 ]
  %173 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 %8, i64 %10, i32 1, i64 %170, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = sdiv i32 %174, 2
  store i32 %175, ptr %173, align 4, !tbaa !5
  %176 = add nuw nsw i64 %172, 1
  %177 = icmp eq i64 %176, 3
  br i1 %177, label %178, label %171, !llvm.loop !71

178:                                              ; preds = %171
  %179 = add nuw nsw i64 %170, 1
  %180 = icmp eq i64 %179, 12
  br i1 %180, label %181, label %169, !llvm.loop !72

181:                                              ; preds = %178, %164
  store i32 1, ptr %102, align 4, !tbaa !65
  store i32 99999999, ptr %98, align 4, !tbaa !64
  %182 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %183 = load i32, ptr %182, align 8, !tbaa !73
  %184 = icmp eq i32 %183, 2
  %185 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 %8, i64 %10
  br i1 %184, label %186, label %188

186:                                              ; preds = %181
  %187 = tail call i32 @scale_bitcount(ptr noundef %185, ptr noundef nonnull %11) #7
  br label %190

188:                                              ; preds = %181
  %189 = tail call i32 @scale_bitcount_lsf(ptr noundef %185, ptr noundef nonnull %11) #7
  br label %190

190:                                              ; preds = %144, %188, %186, %105, %96
  %191 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %192 = load i32, ptr %191, align 8, !tbaa !73
  %193 = icmp eq i32 %192, 2
  %194 = icmp eq i32 %1, 1
  %195 = and i1 %194, %193
  br i1 %195, label %196, label %321

196:                                              ; preds = %190
  %197 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %7, i64 0, i64 %10
  %198 = getelementptr inbounds %struct.gr_info, ptr %197, i64 0, i32 6
  %199 = load i32, ptr %198, align 8, !tbaa !74
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %321, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.III_side_info_t, ptr %4, i64 0, i32 4, i64 1
  %203 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %202, i64 0, i64 %10
  %204 = getelementptr inbounds %struct.gr_info, ptr %203, i64 0, i32 6
  %205 = load i32, ptr %204, align 8, !tbaa !74
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %321, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.gr_info, ptr %197, i64 0, i32 13
  %209 = load i32, ptr %208, align 4, !tbaa !76
  %210 = getelementptr inbounds %struct.gr_info, ptr %203, i64 0, i32 13
  %211 = load i32, ptr %210, align 4, !tbaa !76
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %321

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.gr_info, ptr %197, i64 0, i32 12
  %215 = load i32, ptr %214, align 8, !tbaa !77
  %216 = getelementptr inbounds %struct.gr_info, ptr %203, i64 0, i32 12
  %217 = load i32, ptr %216, align 8, !tbaa !77
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %321

219:                                              ; preds = %213
  %220 = shl nsw i64 %10, 4
  %221 = or disjoint i64 %220, 12
  %222 = getelementptr i8, ptr %4, i64 %221
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %222, i8 0, i64 16, i1 false), !tbaa !5
  %223 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 0, i64 %10
  %224 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %5, i64 1, i64 %10
  %225 = mul nsw i64 %10, 244
  %226 = getelementptr i8, ptr %5, i64 %225
  %227 = getelementptr i8, ptr %226, i64 488
  br label %228

228:                                              ; preds = %266, %219
  %229 = phi i64 [ 0, %219 ], [ %232, %266 ]
  %230 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !5
  %232 = add nuw nsw i64 %229, 1
  %233 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !5
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %228
  %237 = sext i32 %231 to i64
  br label %238

238:                                              ; preds = %245, %236
  %239 = phi i64 [ %237, %236 ], [ %246, %245 ]
  %240 = getelementptr inbounds [22 x i32], ptr %223, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !5
  %242 = getelementptr inbounds [22 x i32], ptr %224, i64 0, i64 %239
  %243 = load i32, ptr %242, align 4, !tbaa !5
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = add nsw i64 %239, 1
  %247 = trunc i64 %246 to i32
  %248 = icmp eq i32 %234, %247
  br i1 %248, label %251, label %238, !llvm.loop !78

249:                                              ; preds = %238
  %250 = trunc i64 %239 to i32
  br label %251

251:                                              ; preds = %245, %249, %228
  %252 = phi i32 [ %231, %228 ], [ %250, %249 ], [ %234, %245 ]
  %253 = icmp eq i32 %252, %234
  br i1 %253, label %254, label %266

254:                                              ; preds = %251
  br i1 %235, label %255, label %264

255:                                              ; preds = %254
  %256 = sext i32 %231 to i64
  %257 = shl nsw i64 %256, 2
  %258 = getelementptr i8, ptr %227, i64 %257
  %259 = xor i32 %231, -1
  %260 = add i32 %234, %259
  %261 = zext i32 %260 to i64
  %262 = shl nuw nsw i64 %261, 2
  %263 = add nuw nsw i64 %262, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %258, i8 -1, i64 %263, i1 false), !tbaa !5
  br label %264

264:                                              ; preds = %255, %254
  %265 = getelementptr inbounds %struct.III_side_info_t, ptr %4, i64 0, i32 3, i64 %10, i64 %229
  store i32 1, ptr %265, align 4, !tbaa !5
  br label %266

266:                                              ; preds = %264, %251
  %267 = icmp eq i64 %232, 4
  br i1 %267, label %268, label %228, !llvm.loop !79

268:                                              ; preds = %266, %268
  %269 = phi i64 [ %279, %268 ], [ 0, %266 ]
  %270 = phi i32 [ %278, %268 ], [ 0, %266 ]
  %271 = phi i32 [ %277, %268 ], [ 0, %266 ]
  %272 = getelementptr inbounds [22 x i32], ptr %224, i64 0, i64 %269
  %273 = load i32, ptr %272, align 4, !tbaa !5
  %274 = icmp sgt i32 %273, -1
  %275 = tail call i32 @llvm.smax.i32(i32 %270, i32 %273)
  %276 = zext i1 %274 to i32
  %277 = add nuw nsw i32 %271, %276
  %278 = select i1 %274, i32 %275, i32 %270
  %279 = add nuw nsw i64 %269, 1
  %280 = icmp eq i64 %279, 11
  br i1 %280, label %284, label %268, !llvm.loop !80

281:                                              ; preds = %284
  %282 = getelementptr inbounds %struct.gr_info, ptr %203, i64 0, i32 15
  %283 = getelementptr inbounds %struct.gr_info, ptr %203, i64 0, i32 4
  br label %297

284:                                              ; preds = %268, %284
  %285 = phi i64 [ %295, %284 ], [ 11, %268 ]
  %286 = phi i32 [ %294, %284 ], [ 0, %268 ]
  %287 = phi i32 [ %292, %284 ], [ 0, %268 ]
  %288 = getelementptr inbounds [22 x i32], ptr %224, i64 0, i64 %285
  %289 = load i32, ptr %288, align 4, !tbaa !5
  %290 = icmp sgt i32 %289, -1
  %291 = tail call i32 @llvm.smax.i32(i32 %287, i32 %289)
  %292 = select i1 %290, i32 %291, i32 %287
  %293 = zext i1 %290 to i32
  %294 = add nuw nsw i32 %286, %293
  %295 = add nuw nsw i64 %285, 1
  %296 = icmp eq i64 %295, 21
  br i1 %296, label %281, label %284, !llvm.loop !81

297:                                              ; preds = %318, %281
  %298 = phi i64 [ 0, %281 ], [ %319, %318 ]
  %299 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_n, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !5
  %301 = icmp slt i32 %278, %300
  br i1 %301, label %302, label %318

302:                                              ; preds = %297
  %303 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_n, i64 0, i64 %298
  %304 = load i32, ptr %303, align 4, !tbaa !5
  %305 = icmp slt i32 %292, %304
  br i1 %305, label %306, label %318

306:                                              ; preds = %302
  %307 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_tab, i64 0, i64 %298
  %308 = load i32, ptr %307, align 4, !tbaa !5
  %309 = mul nsw i32 %308, %277
  %310 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_tab, i64 0, i64 %298
  %311 = load i32, ptr %310, align 4, !tbaa !5
  %312 = mul nsw i32 %311, %294
  %313 = add nsw i32 %312, %309
  %314 = load i32, ptr %282, align 4, !tbaa !64
  %315 = icmp sgt i32 %314, %313
  br i1 %315, label %316, label %318

316:                                              ; preds = %306
  store i32 %313, ptr %282, align 4, !tbaa !64
  %317 = trunc i64 %298 to i32
  store i32 %317, ptr %283, align 8, !tbaa !82
  br label %318

318:                                              ; preds = %316, %306, %302, %297
  %319 = add nuw nsw i64 %298, 1
  %320 = icmp eq i64 %319, 16
  br i1 %320, label %321, label %297, !llvm.loop !83

321:                                              ; preds = %318, %213, %207, %201, %196, %190
  %322 = load i32, ptr %98, align 4, !tbaa !64
  %323 = load i32, ptr %11, align 8, !tbaa !51
  %324 = add i32 %323, %322
  store i32 %324, ptr %11, align 8, !tbaa !51
  ret void
}

declare i32 @scale_bitcount(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 12}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !7, i64 104}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!17, !6, i64 260}
!17 = !{!"", !18, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !11, i64 128, !11, i64 136, !6, i64 144, !6, i64 148, !19, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !18, i64 168, !18, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !19, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !19, i64 232, !19, i64 236, !19, i64 240, !19, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!18 = !{!"long", !7, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = !{!10, !6, i64 24}
!21 = !{!10, !6, i64 4}
!22 = distinct !{!22, !15}
!23 = !{!10, !6, i64 8}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !15}
!26 = !{!10, !6, i64 72}
!27 = !{!10, !6, i64 88}
!28 = distinct !{!28, !15}
!29 = !{!30, !6, i64 0}
!30 = !{!"", !6, i64 0, !6, i64 4}
!31 = distinct !{!31, !15}
!32 = !{!10, !6, i64 56}
!33 = !{!30, !6, i64 4}
!34 = distinct !{!34, !15}
!35 = !{!10, !6, i64 60}
!36 = distinct !{!36, !15}
!37 = !{!38, !11, i64 16}
!38 = !{!"huffcodetab", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16}
!39 = distinct !{!39, !15}
!40 = !{!11, !11, i64 0}
!41 = distinct !{!41, !15}
!42 = !{!38, !6, i64 4}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = !{!38, !6, i64 0}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = !{!10, !6, i64 0}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = !{!10, !6, i64 80}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = !{!10, !6, i64 84}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = !{!10, !6, i64 76}
!65 = !{!10, !6, i64 68}
!66 = !{!10, !6, i64 64}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = !{!17, !6, i64 200}
!74 = !{!75, !6, i64 24}
!75 = !{!"gr_info_ss", !10, i64 0}
!76 = !{!75, !6, i64 68}
!77 = !{!75, !6, i64 64}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = !{!10, !6, i64 16}
!83 = distinct !{!83, !15}
