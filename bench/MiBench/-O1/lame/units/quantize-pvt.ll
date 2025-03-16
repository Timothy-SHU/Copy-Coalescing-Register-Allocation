; ModuleID = 'quantize-pvt.c'
source_filename = "quantize-pvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@masking_lower = dso_local local_unnamed_addr global float 1.000000e+00, align 4
@nr_of_sfb_block = dso_local global [6 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 5, i32 5], [4 x i32] [i32 9, i32 9, i32 9, i32 9], [4 x i32] [i32 6, i32 9, i32 9, i32 9]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 7, i32 3], [4 x i32] [i32 9, i32 9, i32 12, i32 6], [4 x i32] [i32 6, i32 9, i32 12, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 11, i32 10, i32 0, i32 0], [4 x i32] [i32 18, i32 18, i32 0, i32 0], [4 x i32] [i32 15, i32 18, i32 0, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 12, i32 12, i32 12, i32 0], [4 x i32] [i32 6, i32 15, i32 12, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 6, i32 6, i32 3], [4 x i32] [i32 12, i32 9, i32 9, i32 6], [4 x i32] [i32 6, i32 12, i32 9, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 8, i32 8, i32 5, i32 0], [4 x i32] [i32 15, i32 12, i32 9, i32 0], [4 x i32] [i32 6, i32 18, i32 9, i32 0]]], align 16
@pretab = dso_local local_unnamed_addr global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 2], align 16
@sfBandIndex = dso_local local_unnamed_addr global [6 x %struct.scalefac_struct] [%struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 24, i32 32, i32 42, i32 56, i32 74, i32 100, i32 132, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 114, i32 136, i32 162, i32 194, i32 232, i32 278, i32 332, i32 394, i32 464, i32 540, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 136, i32 180, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 134, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 52, i32 62, i32 74, i32 90, i32 110, i32 134, i32 162, i32 196, i32 238, i32 288, i32 342, i32 418, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 40, i32 52, i32 66, i32 84, i32 106, i32 136, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 42, i32 50, i32 60, i32 72, i32 88, i32 106, i32 128, i32 156, i32 190, i32 230, i32 276, i32 330, i32 384, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 28, i32 38, i32 50, i32 64, i32 80, i32 100, i32 126, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 82, i32 102, i32 126, i32 156, i32 194, i32 240, i32 296, i32 364, i32 448, i32 550, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 42, i32 58, i32 78, i32 104, i32 138, i32 180, i32 192] }], align 16
@scalefac_band = dso_local local_unnamed_addr global %struct.scalefac_struct zeroinitializer, align 4
@ATH_l = internal global [21 x double] zeroinitializer, align 16
@ATH_s = internal global [21 x double] zeroinitializer, align 16
@pow43 = dso_local local_unnamed_addr global [8208 x double] zeroinitializer, align 16
@adj43 = internal unnamed_addr global [8208 x double] zeroinitializer, align 16
@ipow20 = dso_local local_unnamed_addr global [256 x double] zeroinitializer, align 16
@pow20 = dso_local local_unnamed_addr global [256 x double] zeroinitializer, align 16
@convert_mdct = dso_local local_unnamed_addr global i32 0, align 4
@reduce_sidechannel = dso_local local_unnamed_addr global i32 0, align 4
@scale_bitcount.slen1 = internal unnamed_addr constant [16 x i32] [i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 16
@scale_bitcount.slen2 = internal unnamed_addr constant [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@scale_bitcount.slen1_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 18, i32 36, i32 54, i32 54, i32 36, i32 54, i32 72, i32 54, i32 72, i32 90, i32 72, i32 90, i32 108, i32 108, i32 126], align 16
@scale_bitcount.slen2_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 20, i32 30, i32 33, i32 21, i32 31, i32 41, i32 32, i32 42, i32 52, i32 43, i32 53, i32 63, i32 64, i32 74], align 16
@max_range_sfac_tab = internal unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 15, i32 15, i32 7, i32 7], [4 x i32] [i32 15, i32 15, i32 7, i32 0], [4 x i32] [i32 7, i32 3, i32 0, i32 0], [4 x i32] [i32 15, i32 31, i32 31, i32 0], [4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 3, i32 3, i32 0, i32 0]], align 16
@scale_bitcount_lsf.log2tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@bin_search_StepSize2.CurrentStep = internal unnamed_addr global i32 4, align 4
@ATH_mdct_long = dso_local local_unnamed_addr global [576 x double] zeroinitializer, align 16
@ATH_mdct_short = dso_local local_unnamed_addr global [192 x double] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @iteration_init(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.III_side_info_t, ptr %1, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %89

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 51
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  br label %14

11:                                               ; preds = %14
  %12 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 51
  %13 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  br label %27

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %25, %14 ]
  %16 = load i32, ptr %9, align 8, !tbaa !15
  %17 = load i32, ptr %10, align 8, !tbaa !16
  %18 = mul nsw i32 %17, 3
  %19 = add nsw i32 %18, %16
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %20
  %22 = getelementptr inbounds [23 x i32], ptr %21, i64 0, i64 %15
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %24 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %15
  store i32 %23, ptr %24, align 4, !tbaa !17
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %11, label %14, !llvm.loop !18

27:                                               ; preds = %11, %27
  %28 = phi i64 [ 0, %11 ], [ %37, %27 ]
  %29 = load i32, ptr %12, align 8, !tbaa !15
  %30 = load i32, ptr %13, align 8, !tbaa !16
  %31 = mul nsw i32 %30, 3
  %32 = add nsw i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %33, i32 1, i64 %28
  %35 = load i32, ptr %34, align 4, !tbaa !17
  %36 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %28
  store i32 %35, ptr %36, align 4, !tbaa !17
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, 14
  br i1 %38, label %39, label %27, !llvm.loop !20

39:                                               ; preds = %27
  store i32 0, ptr %1, align 8, !tbaa !21
  tail call void @compute_ath(ptr noundef %0, ptr noundef nonnull @ATH_l, ptr noundef nonnull @ATH_s)
  br label %40

40:                                               ; preds = %39, %40
  %41 = phi i64 [ 0, %39 ], [ %46, %40 ]
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = tail call double @pow(double noundef %43, double noundef 0x3FF5555555555555) #13
  %45 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %41
  store double %44, ptr %45, align 8, !tbaa !22
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, 8208
  br i1 %47, label %48, label %40, !llvm.loop !24

48:                                               ; preds = %40, %48
  %49 = phi i64 [ %50, %48 ], [ 0, %40 ]
  %50 = add nuw nsw i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %49
  %54 = load double, ptr %53, align 8, !tbaa !22
  %55 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %50
  %56 = load double, ptr %55, align 8, !tbaa !22
  %57 = fadd double %54, %56
  %58 = fmul double %57, 5.000000e-01
  %59 = tail call double @pow(double noundef %58, double noundef 7.500000e-01) #13
  %60 = fsub double %52, %59
  %61 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %49
  store double %60, ptr %61, align 8, !tbaa !22
  %62 = icmp eq i64 %50, 8207
  br i1 %62, label %63, label %48, !llvm.loop !25

63:                                               ; preds = %48
  store double 5.000000e-01, ptr getelementptr inbounds ([8208 x double], ptr @adj43, i64 0, i64 8207), align 8, !tbaa !22
  br label %64

64:                                               ; preds = %63, %64
  %65 = phi i64 [ 1, %63 ], [ %74, %64 ]
  %66 = add nsw i64 %65, -1
  %67 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !22
  %69 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %65
  %70 = load double, ptr %69, align 8, !tbaa !22
  %71 = fadd double %68, %70
  %72 = fmul double %71, 5.000000e-01
  %73 = tail call double @pow(double noundef %72, double noundef 7.500000e-01) #13
  %74 = add nuw nsw i64 %65, 1
  %75 = icmp eq i64 %74, 8208
  br i1 %75, label %76, label %64, !llvm.loop !26

76:                                               ; preds = %64, %76
  %77 = phi i64 [ %87, %76 ], [ 0, %64 ]
  %78 = trunc i64 %77 to i32
  %79 = add i32 %78, -210
  %80 = sitofp i32 %79 to double
  %81 = fmul double %80, -1.875000e-01
  %82 = tail call double @exp2(double %81) #13
  %83 = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %77
  store double %82, ptr %83, align 8, !tbaa !22
  %84 = fmul double %80, 2.500000e-01
  %85 = tail call double @exp2(double %84) #13
  %86 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %77
  store double %85, ptr %86, align 8, !tbaa !22
  %87 = add nuw nsw i64 %77, 1
  %88 = icmp eq i64 %87, 256
  br i1 %88, label %89, label %76, !llvm.loop !27

89:                                               ; preds = %76, %3
  store i32 0, ptr @convert_mdct, align 4, !tbaa !17
  store i32 0, ptr @reduce_sidechannel, align 4, !tbaa !17
  %90 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 52
  %91 = load i32, ptr %90, align 4, !tbaa !28
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, ptr @convert_mdct, align 4, !tbaa !17
  store i32 1, ptr @reduce_sidechannel, align 4, !tbaa !17
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %96 = load i32, ptr %95, align 8, !tbaa !29
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %100 = load i32, ptr %99, align 4, !tbaa !30
  %101 = icmp sgt i32 %100, 0
  %102 = zext nneg i32 %96 to i64
  %103 = zext nneg i32 %100 to i64
  br label %104

104:                                              ; preds = %98, %124
  %105 = phi i64 [ 0, %98 ], [ %125, %124 ]
  br i1 %101, label %106, label %124

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.III_side_info_t, ptr %1, i64 0, i32 4, i64 %105
  br label %112

108:                                              ; preds = %124, %94
  %109 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %110 = load i32, ptr %109, align 4, !tbaa !30
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %127, label %136

112:                                              ; preds = %106, %112
  %113 = phi i64 [ 0, %106 ], [ %122, %112 ]
  %114 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %107, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.gr_info, ptr %114, i64 0, i32 6
  %116 = load i32, ptr %115, align 8, !tbaa !31
  %117 = icmp eq i32 %116, 2
  %118 = getelementptr inbounds %struct.gr_info, ptr %114, i64 0, i32 16
  %119 = getelementptr inbounds %struct.gr_info, ptr %114, i64 0, i32 17
  %120 = select i1 %117, i32 0, i32 21
  %121 = select i1 %117, i32 0, i32 12
  store i32 %120, ptr %118, align 8, !tbaa !33
  store i32 %121, ptr %119, align 4, !tbaa !34
  %122 = add nuw nsw i64 %113, 1
  %123 = icmp eq i64 %122, %103
  br i1 %123, label %124, label %112, !llvm.loop !35

124:                                              ; preds = %112, %104
  %125 = add nuw nsw i64 %105, 1
  %126 = icmp eq i64 %125, %102
  br i1 %126, label %108, label %104, !llvm.loop !36

127:                                              ; preds = %108, %127
  %128 = phi i64 [ %132, %127 ], [ 0, %108 ]
  %129 = shl nuw nsw i64 %128, 4
  %130 = or disjoint i64 %129, 12
  %131 = getelementptr i8, ptr %1, i64 %130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %131, i8 0, i64 16, i1 false), !tbaa !17
  %132 = add nuw nsw i64 %128, 1
  %133 = trunc i64 %132 to i32
  %134 = load i32, ptr %109, align 4, !tbaa !30
  %135 = icmp sgt i32 %134, %133
  br i1 %135, label %127, label %136, !llvm.loop !37

136:                                              ; preds = %127, %108
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @compute_ath(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = sitofp i32 %5 to double
  %7 = fdiv double %6, 1.000000e+03
  %8 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 34
  br label %13

9:                                                ; preds = %22, %13
  %10 = icmp eq i64 %17, 21
  br i1 %10, label %11, label %13, !llvm.loop !39

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 34
  br label %51

13:                                               ; preds = %3, %9
  %14 = phi i64 [ 0, %3 ], [ %17, %9 ]
  %15 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = add nuw nsw i64 %14, 1
  %18 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !17
  %20 = getelementptr inbounds double, ptr %1, i64 %14
  store double 0x547D42AEA2879F2E, ptr %20, align 8, !tbaa !22
  %21 = icmp slt i32 %16, %19
  br i1 %21, label %22, label %9

22:                                               ; preds = %13, %22
  %23 = phi i32 [ %47, %22 ], [ %16, %13 ]
  %24 = sitofp i32 %23 to double
  %25 = fmul double %7, %24
  %26 = fdiv double %25, 1.152000e+03
  %27 = fcmp olt double %26, 2.000000e-02
  %28 = select i1 %27, double 2.000000e-02, double %26
  %29 = tail call double @pow(double noundef %28, double noundef -8.000000e-01) #13
  %30 = fadd double %28, -3.300000e+00
  %31 = fmul double %30, %30
  %32 = fmul double %31, -6.000000e-01
  %33 = tail call double @exp(double noundef %32) #13
  %34 = fmul double %33, -6.500000e+00
  %35 = tail call double @llvm.fmuladd.f64(double %29, double 3.640000e+00, double %34)
  %36 = tail call double @pow(double noundef %28, double noundef 4.000000e+00) #13
  %37 = tail call double @llvm.fmuladd.f64(double %36, double 1.000000e-03, double %35)
  %38 = load i32, ptr %8, align 4, !tbaa !40
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, double -1.140000e+02, double -2.000000e+02
  %41 = fadd double %37, %40
  %42 = fdiv double %41, 1.000000e+01
  %43 = tail call double @pow(double noundef 1.000000e+01, double noundef %42) #13
  %44 = load double, ptr %20, align 8, !tbaa !22
  %45 = fcmp olt double %44, %43
  %46 = select i1 %45, double %44, double %43
  store double %46, ptr %20, align 8, !tbaa !22
  %47 = add nsw i32 %23, 1
  %48 = icmp eq i32 %47, %19
  br i1 %48, label %9, label %22, !llvm.loop !41

49:                                               ; preds = %60, %51
  %50 = icmp eq i64 %55, 12
  br i1 %50, label %87, label %51, !llvm.loop !42

51:                                               ; preds = %11, %49
  %52 = phi i64 [ 0, %11 ], [ %55, %49 ]
  %53 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !17
  %55 = add nuw nsw i64 %52, 1
  %56 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !17
  %58 = getelementptr inbounds double, ptr %2, i64 %52
  store double 0x547D42AEA2879F2E, ptr %58, align 8, !tbaa !22
  %59 = icmp slt i32 %54, %57
  br i1 %59, label %60, label %49

60:                                               ; preds = %51, %60
  %61 = phi i32 [ %85, %60 ], [ %54, %51 ]
  %62 = sitofp i32 %61 to double
  %63 = fmul double %7, %62
  %64 = fdiv double %63, 3.840000e+02
  %65 = fcmp olt double %64, 2.000000e-02
  %66 = select i1 %65, double 2.000000e-02, double %64
  %67 = tail call double @pow(double noundef %66, double noundef -8.000000e-01) #13
  %68 = fadd double %66, -3.300000e+00
  %69 = fmul double %68, %68
  %70 = fmul double %69, -6.000000e-01
  %71 = tail call double @exp(double noundef %70) #13
  %72 = fmul double %71, -6.500000e+00
  %73 = tail call double @llvm.fmuladd.f64(double %67, double 3.640000e+00, double %72)
  %74 = tail call double @pow(double noundef %66, double noundef 4.000000e+00) #13
  %75 = tail call double @llvm.fmuladd.f64(double %74, double 1.000000e-03, double %73)
  %76 = load i32, ptr %12, align 4, !tbaa !40
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, double -1.140000e+02, double -2.000000e+02
  %79 = fadd double %75, %78
  %80 = fdiv double %79, 1.000000e+01
  %81 = tail call double @pow(double noundef 1.000000e+01, double noundef %80) #13
  %82 = load double, ptr %58, align 8, !tbaa !22
  %83 = fcmp olt double %82, %81
  %84 = select i1 %83, double %82, double %81
  store double %84, ptr %58, align 8, !tbaa !22
  %85 = add nsw i32 %61, 1
  %86 = icmp eq i32 %85, %57
  br i1 %86, label %49, label %60, !llvm.loop !43

87:                                               ; preds = %49
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local double @ATHformula(ptr nocapture noundef readonly %0, double noundef %1) local_unnamed_addr #4 {
  %3 = fcmp olt double %1, 2.000000e-02
  %4 = select i1 %3, double 2.000000e-02, double %1
  %5 = tail call double @pow(double noundef %4, double noundef -8.000000e-01) #13
  %6 = fadd double %4, -3.300000e+00
  %7 = fmul double %6, %6
  %8 = fmul double %7, -6.000000e-01
  %9 = tail call double @exp(double noundef %8) #13
  %10 = fmul double %9, -6.500000e+00
  %11 = tail call double @llvm.fmuladd.f64(double %5, double 3.640000e+00, double %10)
  %12 = tail call double @pow(double noundef %4, double noundef 4.000000e+00) #13
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 1.000000e-03, double %11)
  %14 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 34
  %15 = load i32, ptr %14, align 4, !tbaa !40
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, double -1.140000e+02, double -2.000000e+02
  %18 = fadd double %13, %17
  %19 = fdiv double %18, 1.000000e+01
  %20 = tail call double @pow(double noundef 1.000000e+01, double noundef %19) #13
  ret double %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ms_convert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %15, %3 ]
  %5 = getelementptr inbounds [576 x double], ptr %1, i64 0, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds [576 x double], ptr %1, i64 1, i64 %4
  %8 = load double, ptr %7, align 8, !tbaa !22
  %9 = fadd double %6, %8
  %10 = fmul double %9, 0x3FE6A09E667F3BCD
  %11 = getelementptr inbounds [576 x double], ptr %0, i64 0, i64 %4
  store double %10, ptr %11, align 8, !tbaa !22
  %12 = fsub double %6, %8
  %13 = fmul double %12, 0x3FE6A09E667F3BCD
  %14 = getelementptr inbounds [576 x double], ptr %0, i64 1, i64 %4
  store double %13, ptr %14, align 8, !tbaa !22
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 576
  br i1 %16, label %17, label %3, !llvm.loop !44

17:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @on_pe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @ResvMaxBits(i32 noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %5) #13
  %9 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = load i32, ptr %7, align 4, !tbaa !17
  %14 = sext i32 %5 to i64
  %15 = getelementptr inbounds %struct.III_side_info_t, ptr %2, i64 0, i32 4, i64 %14
  %16 = load i32, ptr %8, align 4, !tbaa !17
  br label %17

17:                                               ; preds = %12, %17
  %18 = phi i64 [ 0, %12 ], [ %41, %17 ]
  %19 = phi i32 [ %10, %12 ], [ %42, %17 ]
  %20 = phi i32 [ %13, %12 ], [ %40, %17 ]
  %21 = sdiv i32 %16, %19
  %22 = getelementptr inbounds i32, ptr %3, i64 %18
  store i32 %21, ptr %22, align 4, !tbaa !17
  %23 = getelementptr inbounds [2 x double], ptr %1, i64 %14, i64 %18
  %24 = load double, ptr %23, align 8, !tbaa !22
  %25 = fadd double %24, -7.500000e+02
  %26 = fdiv double %25, 1.550000e+00
  %27 = fptosi double %26 to i32
  %28 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %15, i64 0, i64 %18, i32 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !31
  %30 = icmp eq i32 %29, 2
  %31 = call i32 @llvm.smax.i32(i32 %27, i32 500)
  %32 = select i1 %30, i32 %31, i32 %27
  %33 = call i32 @llvm.smax.i32(i32 %32, i32 0)
  %34 = call i32 @llvm.smin.i32(i32 %33, i32 %20)
  %35 = add nsw i32 %34, %21
  %36 = icmp sgt i32 %35, 4095
  %37 = sub nsw i32 4095, %21
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = add nsw i32 %38, %21
  store i32 %39, ptr %22, align 4, !tbaa !17
  %40 = sub nsw i32 %20, %38
  %41 = add nuw nsw i64 %18, 1
  %42 = load i32, ptr %9, align 4, !tbaa !30
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %17, label %45, !llvm.loop !45

45:                                               ; preds = %17
  store i32 %40, ptr %7, align 4, !tbaa !17
  br label %46

46:                                               ; preds = %45, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret void
}

declare void @ResvMaxBits(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @reduce_side(ptr nocapture noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = fsub double 5.000000e-01, %1
  %5 = fmul double %4, 3.300000e-01
  %6 = fmul double %5, 2.000000e+00
  %7 = fptrunc double %6 to float
  %8 = fcmp olt float %7, 0.000000e+00
  %9 = select i1 %8, float 0.000000e+00, float %7
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = icmp sgt i32 %11, 124
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = sitofp i32 %11 to float
  %15 = fneg float %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %9, float %14)
  %17 = fcmp ogt float %16, 1.250000e+02
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, ptr %0, align 4, !tbaa !17
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %14, float %9, float %20)
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %0, align 4, !tbaa !17
  %23 = fptosi float %16 to i32
  br label %28

24:                                               ; preds = %13
  %25 = add nsw i32 %11, -125
  %26 = load i32, ptr %0, align 4, !tbaa !17
  %27 = add nsw i32 %25, %26
  store i32 %27, ptr %0, align 4, !tbaa !17
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i32 [ %23, %18 ], [ 125, %24 ]
  store i32 %29, ptr %10, align 4, !tbaa !17
  br label %30

30:                                               ; preds = %28, %3
  %31 = icmp sgt i32 %2, 5791
  %32 = sdiv i32 %2, 2
  %33 = add nsw i32 %32, 1200
  %34 = select i1 %31, i32 4095, i32 %33
  br label %35

35:                                               ; preds = %30, %41
  %36 = phi i64 [ 0, %30 ], [ %42, %41 ]
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !17
  %39 = icmp sgt i32 %38, %34
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 %34, ptr %37, align 4, !tbaa !17
  br label %41

41:                                               ; preds = %40, %35
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %36, 0
  br i1 %43, label %35, label %44, !llvm.loop !46

44:                                               ; preds = %41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @inner_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gr_info, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !47
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4, !tbaa !47
  br label %9

9:                                                ; preds = %9, %5
  %10 = load i32, ptr %6, align 4, !tbaa !47
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !47
  %12 = tail call i32 @count_bits(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %4) #13
  %13 = icmp sgt i32 %12, %3
  br i1 %13, label %9, label %14, !llvm.loop !48

14:                                               ; preds = %9
  ret i32 %12
}

declare i32 @count_bits(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @scale_bitcount(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !31
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %29

6:                                                ; preds = %2, %26
  %7 = phi i64 [ %27, %26 ], [ 0, %2 ]
  %8 = phi i32 [ %23, %26 ], [ 0, %2 ]
  %9 = phi i32 [ %15, %26 ], [ 0, %2 ]
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %16, %10 ]
  %12 = phi i32 [ %9, %6 ], [ %15, %10 ]
  %13 = getelementptr inbounds %struct.III_scalefac_t, ptr %0, i64 0, i32 1, i64 %11, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 %12)
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 6
  br i1 %17, label %18, label %10, !llvm.loop !49

18:                                               ; preds = %10, %18
  %19 = phi i64 [ %24, %18 ], [ 6, %10 ]
  %20 = phi i32 [ %23, %18 ], [ %8, %10 ]
  %21 = getelementptr inbounds %struct.III_scalefac_t, ptr %0, i64 0, i32 1, i64 %19, i64 %7
  %22 = load i32, ptr %21, align 4, !tbaa !17
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 %20)
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, 12
  br i1 %25, label %26, label %18, !llvm.loop !50

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %7, 1
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %75, label %6, !llvm.loop !51

29:                                               ; preds = %2, %29
  %30 = phi i64 [ %35, %29 ], [ 0, %2 ]
  %31 = phi i32 [ %34, %29 ], [ 0, %2 ]
  %32 = getelementptr inbounds [22 x i32], ptr %0, i64 0, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !17
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 %31)
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, 11
  br i1 %36, label %37, label %29, !llvm.loop !52

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 12
  %39 = load i32, ptr %38, align 8, !tbaa !53
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37, %48
  %42 = phi i64 [ %49, %48 ], [ 11, %37 ]
  %43 = getelementptr inbounds [22 x i32], ptr %0, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !17
  %45 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %42
  %46 = load i32, ptr %45, align 4, !tbaa !17
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %42, 1
  %50 = icmp eq i64 %49, 21
  br i1 %50, label %53, label %41, !llvm.loop !54

51:                                               ; preds = %41
  %52 = trunc i64 %42 to i32
  br label %53

53:                                               ; preds = %48, %51
  %54 = phi i32 [ %52, %51 ], [ 21, %48 ]
  %55 = icmp eq i32 %54, 21
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  store i32 1, ptr %38, align 8, !tbaa !53
  br label %57

57:                                               ; preds = %56, %57
  %58 = phi i64 [ 11, %56 ], [ %64, %57 ]
  %59 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !17
  %61 = getelementptr inbounds [22 x i32], ptr %0, i64 0, i64 %58
  %62 = load i32, ptr %61, align 4, !tbaa !17
  %63 = sub nsw i32 %62, %60
  store i32 %63, ptr %61, align 4, !tbaa !17
  %64 = add nuw nsw i64 %58, 1
  %65 = icmp eq i64 %64, 21
  br i1 %65, label %66, label %57, !llvm.loop !55

66:                                               ; preds = %57, %53, %37
  br label %67

67:                                               ; preds = %66, %67
  %68 = phi i64 [ %73, %67 ], [ 11, %66 ]
  %69 = phi i32 [ %72, %67 ], [ 0, %66 ]
  %70 = getelementptr inbounds [22 x i32], ptr %0, i64 0, i64 %68
  %71 = load i32, ptr %70, align 4, !tbaa !17
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 %69)
  %73 = add nuw nsw i64 %68, 1
  %74 = icmp eq i64 %73, 21
  br i1 %74, label %75, label %67, !llvm.loop !56

75:                                               ; preds = %67, %26
  %76 = phi i32 [ %15, %26 ], [ %34, %67 ]
  %77 = phi i32 [ %23, %26 ], [ %72, %67 ]
  %78 = phi ptr [ @scale_bitcount.slen1_tab, %26 ], [ @scale_bitcount.slen2_tab, %67 ]
  %79 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 15
  store i32 100000, ptr %79, align 4, !tbaa !57
  %80 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 4
  br label %81

81:                                               ; preds = %75, %98
  %82 = phi i64 [ 0, %75 ], [ %100, %98 ]
  %83 = phi i32 [ 2, %75 ], [ %99, %98 ]
  %84 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen1, i64 0, i64 %82
  %85 = load i32, ptr %84, align 4, !tbaa !17
  %86 = icmp slt i32 %76, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen2, i64 0, i64 %82
  %89 = load i32, ptr %88, align 4, !tbaa !17
  %90 = icmp slt i32 %77, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, ptr %79, align 4, !tbaa !57
  %93 = getelementptr inbounds i32, ptr %78, i64 %82
  %94 = load i32, ptr %93, align 4, !tbaa !17
  %95 = icmp sgt i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  store i32 %94, ptr %79, align 4, !tbaa !57
  %97 = trunc i64 %82 to i32
  store i32 %97, ptr %80, align 8, !tbaa !58
  br label %98

98:                                               ; preds = %81, %87, %91, %96
  %99 = phi i32 [ 0, %96 ], [ %83, %91 ], [ %83, %87 ], [ %83, %81 ]
  %100 = add nuw nsw i64 %82, 1
  %101 = icmp eq i64 %100, 16
  br i1 %101, label %102, label %81, !llvm.loop !59

102:                                              ; preds = %98
  ret i32 %99
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @scale_bitcount_lsf(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false), !tbaa !17
  %7 = select i1 %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = icmp eq i32 %9, 2
  %11 = zext nneg i32 %7 to i64
  br i1 %10, label %12, label %47

12:                                               ; preds = %2
  %13 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %11, i64 1
  br label %14

14:                                               ; preds = %12, %43
  %15 = phi i64 [ 0, %12 ], [ %45, %43 ]
  %16 = phi i32 [ 0, %12 ], [ %44, %43 ]
  %17 = getelementptr inbounds i32, ptr %13, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = udiv i32 %18, 3
  %20 = icmp ult i32 %18, 3
  br i1 %20, label %43, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %15
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %16 to i64
  br label %25

25:                                               ; preds = %21, %37
  %26 = phi i64 [ %24, %21 ], [ %39, %37 ]
  %27 = phi i32 [ %23, %21 ], [ %34, %37 ]
  %28 = phi i32 [ 0, %21 ], [ %38, %37 ]
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ 0, %25 ], [ %35, %29 ]
  %31 = phi i32 [ %27, %25 ], [ %34, %29 ]
  %32 = getelementptr inbounds %struct.III_scalefac_t, ptr %0, i64 0, i32 1, i64 %26, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !17
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 %31)
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %29, !llvm.loop !60

37:                                               ; preds = %29
  %38 = add nuw nsw i32 %28, 1
  %39 = add nsw i64 %26, 1
  %40 = icmp eq i32 %38, %19
  br i1 %40, label %41, label %25, !llvm.loop !61

41:                                               ; preds = %37
  %42 = add i32 %16, %19
  store i32 %34, ptr %22, align 4
  br label %43

43:                                               ; preds = %41, %14
  %44 = phi i32 [ %42, %41 ], [ %16, %14 ]
  %45 = add nuw nsw i64 %15, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %75, label %14, !llvm.loop !62

47:                                               ; preds = %2
  %48 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %11
  br label %49

49:                                               ; preds = %47, %71
  %50 = phi i64 [ 0, %47 ], [ %73, %71 ]
  %51 = phi i32 [ 0, %47 ], [ %72, %71 ]
  %52 = getelementptr inbounds i32, ptr %48, i64 %50
  %53 = load i32, ptr %52, align 4, !tbaa !17
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %50
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %51 to i64
  br label %59

59:                                               ; preds = %55, %59
  %60 = phi i64 [ %58, %55 ], [ %67, %59 ]
  %61 = phi i32 [ %57, %55 ], [ %65, %59 ]
  %62 = phi i32 [ 0, %55 ], [ %66, %59 ]
  %63 = getelementptr inbounds [22 x i32], ptr %0, i64 0, i64 %60
  %64 = load i32, ptr %63, align 4, !tbaa !17
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 %61)
  %66 = add nuw nsw i32 %62, 1
  %67 = add nsw i64 %60, 1
  %68 = icmp eq i32 %66, %53
  br i1 %68, label %69, label %59, !llvm.loop !63

69:                                               ; preds = %59
  %70 = add i32 %51, %53
  store i32 %65, ptr %56, align 4
  br label %71

71:                                               ; preds = %69, %49
  %72 = phi i32 [ %70, %69 ], [ %51, %49 ]
  %73 = add nuw nsw i64 %50, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %49, !llvm.loop !64

75:                                               ; preds = %71, %43
  %76 = phi i64 [ 1, %43 ], [ 0, %71 ]
  %77 = zext nneg i32 %7 to i64
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %88, %78 ]
  %80 = phi i32 [ 0, %75 ], [ %87, %78 ]
  %81 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %79
  %82 = load i32, ptr %81, align 4, !tbaa !17
  %83 = getelementptr inbounds [6 x [4 x i32]], ptr @max_range_sfac_tab, i64 0, i64 %77, i64 %79
  %84 = load i32, ptr %83, align 4, !tbaa !17
  %85 = icmp sgt i32 %82, %84
  %86 = zext i1 %85 to i32
  %87 = add nuw nsw i32 %80, %86
  %88 = add nuw nsw i64 %79, 1
  %89 = icmp eq i64 %88, 4
  br i1 %89, label %90, label %78, !llvm.loop !65

90:                                               ; preds = %78
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %92, label %141

92:                                               ; preds = %90
  %93 = zext nneg i32 %7 to i64
  %94 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %93, i64 %76
  %95 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 19
  store ptr %94, ptr %95, align 8, !tbaa !66
  br label %96

96:                                               ; preds = %92, %96
  %97 = phi i64 [ 0, %92 ], [ %104, %96 ]
  %98 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !17
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [16 x i32], ptr @scale_bitcount_lsf.log2tab, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !17
  %103 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 20, i64 %97
  store i32 %102, ptr %103, align 4, !tbaa !17
  %104 = add nuw nsw i64 %97, 1
  %105 = icmp eq i64 %104, 4
  br i1 %105, label %106, label %96, !llvm.loop !67

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 20
  %108 = load i32, ptr %107, align 8, !tbaa !17
  %109 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 20, i64 1
  %110 = load i32, ptr %109, align 4, !tbaa !17
  br i1 %6, label %111, label %122

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 20, i64 2
  %113 = load i32, ptr %112, align 8, !tbaa !17
  %114 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 20, i64 3
  %115 = load i32, ptr %114, align 4, !tbaa !17
  %116 = mul i32 %108, 5
  %117 = add i32 %116, %110
  %118 = shl i32 %117, 4
  %119 = shl i32 %113, 2
  %120 = add i32 %119, %118
  %121 = add i32 %120, %115
  br label %126

122:                                              ; preds = %106
  %123 = mul i32 %108, 3
  %124 = add i32 %123, 500
  %125 = add i32 %124, %110
  br label %126

126:                                              ; preds = %122, %111
  %127 = phi i32 [ %125, %122 ], [ %121, %111 ]
  %128 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 4
  store i32 %127, ptr %128, align 8, !tbaa !58
  %129 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 15
  store i32 0, ptr %129, align 4, !tbaa !57
  br label %130

130:                                              ; preds = %126, %130
  %131 = phi i64 [ 0, %126 ], [ %139, %130 ]
  %132 = phi i32 [ 0, %126 ], [ %138, %130 ]
  %133 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 20, i64 %131
  %134 = load i32, ptr %133, align 4, !tbaa !17
  %135 = getelementptr inbounds i32, ptr %94, i64 %131
  %136 = load i32, ptr %135, align 4, !tbaa !17
  %137 = mul i32 %136, %134
  %138 = add i32 %132, %137
  store i32 %138, ptr %129, align 4, !tbaa !57
  %139 = add nuw nsw i64 %131, 1
  %140 = icmp eq i64 %139, 4
  br i1 %140, label %141, label %130, !llvm.loop !68

141:                                              ; preds = %130, %90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %87
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @calc_xmin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 33
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp ult i32 %10, 12
  br i1 %8, label %40, label %12

12:                                               ; preds = %5
  br i1 %11, label %13, label %18

13:                                               ; preds = %12
  %14 = zext nneg i32 %10 to i64
  br label %15

15:                                               ; preds = %13, %30
  %16 = phi i64 [ %14, %13 ], [ %31, %30 ]
  %17 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %16
  br label %24

18:                                               ; preds = %30, %12
  %19 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 16
  %20 = load i32, ptr %19, align 8, !tbaa !33
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %157, label %22

22:                                               ; preds = %18
  %23 = zext i32 %20 to i64
  br label %33

24:                                               ; preds = %15, %24
  %25 = phi i64 [ 0, %15 ], [ %28, %24 ]
  %26 = load double, ptr %17, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.III_psy_xmin, ptr %4, i64 0, i32 1, i64 %16, i64 %25
  store double %26, ptr %27, align 8, !tbaa !22
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %30, label %24, !llvm.loop !70

30:                                               ; preds = %24
  %31 = add nuw nsw i64 %16, 1
  %32 = icmp eq i64 %31, 12
  br i1 %32, label %18, label %15, !llvm.loop !71

33:                                               ; preds = %22, %33
  %34 = phi i64 [ 0, %22 ], [ %38, %33 ]
  %35 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !22
  %37 = getelementptr inbounds [22 x double], ptr %4, i64 0, i64 %34
  store double %36, ptr %37, align 8, !tbaa !22
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %23
  br i1 %39, label %157, label %33, !llvm.loop !72

40:                                               ; preds = %5
  br i1 %11, label %41, label %47

41:                                               ; preds = %40
  %42 = load float, ptr @masking_lower, align 4
  %43 = fpext float %42 to double
  %44 = zext nneg i32 %10 to i64
  br label %57

45:                                               ; preds = %98
  %46 = icmp eq i64 %62, 12
  br i1 %46, label %47, label %57, !llvm.loop !73

47:                                               ; preds = %45, %40
  %48 = phi i32 [ 0, %40 ], [ %107, %45 ]
  %49 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 16
  %50 = load i32, ptr %49, align 8, !tbaa !33
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %157, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.III_psy_ratio, ptr %2, i64 0, i32 1
  %54 = load float, ptr @masking_lower, align 4
  %55 = fpext float %54 to double
  %56 = zext i32 %50 to i64
  br label %110

57:                                               ; preds = %41, %45
  %58 = phi i64 [ %44, %41 ], [ %62, %45 ]
  %59 = phi i32 [ 0, %41 ], [ %107, %45 ]
  %60 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %58
  %61 = load i32, ptr %60, align 4, !tbaa !17
  %62 = add nuw nsw i64 %58, 1
  %63 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !17
  %65 = sub nsw i32 %64, %61
  %66 = icmp slt i32 %61, %64
  %67 = sitofp i32 %65 to double
  %68 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %58
  %69 = sext i32 %61 to i64
  %70 = sext i32 %64 to i64
  br label %71

71:                                               ; preds = %57, %98
  %72 = phi i64 [ 0, %57 ], [ %108, %98 ]
  %73 = phi i32 [ %59, %57 ], [ %107, %98 ]
  br i1 %66, label %74, label %86

74:                                               ; preds = %71
  %75 = getelementptr double, ptr %1, i64 %72
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ %69, %74 ], [ %84, %76 ]
  %78 = phi double [ 0.000000e+00, %74 ], [ %83, %76 ]
  %79 = mul nsw i64 %77, 3
  %80 = getelementptr double, ptr %75, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !22
  %82 = fmul double %81, %81
  %83 = fadd double %78, %82
  %84 = add nsw i64 %77, 1
  %85 = icmp eq i64 %84, %70
  br i1 %85, label %86, label %76, !llvm.loop !74

86:                                               ; preds = %76, %71
  %87 = phi double [ 0.000000e+00, %71 ], [ %83, %76 ]
  %88 = fdiv double %87, %67
  %89 = getelementptr inbounds %struct.III_psy_ratio, ptr %2, i64 0, i32 1, i32 1, i64 %58, i64 %72
  %90 = load double, ptr %89, align 8, !tbaa !22
  %91 = fcmp ogt double %90, 0.000000e+00
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.III_psy_xmin, ptr %2, i64 0, i32 1, i64 %58, i64 %72
  %94 = load double, ptr %93, align 8, !tbaa !22
  %95 = fmul double %88, %94
  %96 = fmul double %95, %43
  %97 = fdiv double %96, %90
  br label %98

98:                                               ; preds = %92, %86
  %99 = phi double [ %97, %92 ], [ %90, %86 ]
  %100 = load double, ptr %68, align 8, !tbaa !22
  %101 = fcmp ogt double %100, %99
  %102 = select i1 %101, double %100, double %99
  %103 = getelementptr inbounds %struct.III_psy_xmin, ptr %4, i64 0, i32 1, i64 %58, i64 %72
  store double %102, ptr %103, align 8, !tbaa !22
  %104 = load double, ptr %68, align 8, !tbaa !22
  %105 = fcmp ogt double %88, %104
  %106 = zext i1 %105 to i32
  %107 = add nsw i32 %73, %106
  %108 = add nuw nsw i64 %72, 1
  %109 = icmp eq i64 %108, 3
  br i1 %109, label %45, label %71, !llvm.loop !75

110:                                              ; preds = %52, %145
  %111 = phi i64 [ 0, %52 ], [ %115, %145 ]
  %112 = phi i32 [ %48, %52 ], [ %155, %145 ]
  %113 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %111
  %114 = load i32, ptr %113, align 4, !tbaa !17
  %115 = add nuw nsw i64 %111, 1
  %116 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !17
  %118 = sub nsw i32 %117, %114
  %119 = icmp slt i32 %114, %117
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = sext i32 %114 to i64
  %122 = sext i32 %117 to i64
  br label %123

123:                                              ; preds = %120, %123
  %124 = phi i64 [ %121, %120 ], [ %130, %123 ]
  %125 = phi double [ 0.000000e+00, %120 ], [ %129, %123 ]
  %126 = getelementptr inbounds double, ptr %1, i64 %124
  %127 = load double, ptr %126, align 8, !tbaa !22
  %128 = fmul double %127, %127
  %129 = fadd double %125, %128
  %130 = add nsw i64 %124, 1
  %131 = icmp eq i64 %130, %122
  br i1 %131, label %132, label %123, !llvm.loop !76

132:                                              ; preds = %123, %110
  %133 = phi double [ 0.000000e+00, %110 ], [ %129, %123 ]
  %134 = sitofp i32 %118 to double
  %135 = fdiv double %133, %134
  %136 = getelementptr inbounds [22 x double], ptr %53, i64 0, i64 %111
  %137 = load double, ptr %136, align 8, !tbaa !22
  %138 = fcmp ogt double %137, 0.000000e+00
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = getelementptr inbounds [22 x double], ptr %2, i64 0, i64 %111
  %141 = load double, ptr %140, align 8, !tbaa !22
  %142 = fmul double %135, %141
  %143 = fmul double %142, %55
  %144 = fdiv double %143, %137
  br label %145

145:                                              ; preds = %139, %132
  %146 = phi double [ %144, %139 ], [ %137, %132 ]
  %147 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %111
  %148 = load double, ptr %147, align 8, !tbaa !22
  %149 = fcmp ogt double %148, %146
  %150 = select i1 %149, double %148, double %146
  %151 = getelementptr inbounds [22 x double], ptr %4, i64 0, i64 %111
  store double %150, ptr %151, align 8, !tbaa !22
  %152 = load double, ptr %147, align 8, !tbaa !22
  %153 = fcmp ogt double %135, %152
  %154 = zext i1 %153 to i32
  %155 = add nsw i32 %112, %154
  %156 = icmp eq i64 %115, %56
  br i1 %156, label %157, label %110, !llvm.loop !77

157:                                              ; preds = %33, %145, %18, %47
  %158 = phi i32 [ %48, %47 ], [ 0, %18 ], [ %155, %145 ], [ 0, %33 ]
  ret i32 %158
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef i32 @loop_break(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !33
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %9

6:                                                ; preds = %9
  %7 = add nuw i32 %10, 1
  %8 = icmp eq i32 %7, %4
  br i1 %8, label %15, label %9, !llvm.loop !78

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [22 x i32], ptr %0, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %6

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp ult i32 %17, 12
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %31
  %22 = phi i64 [ %20, %19 ], [ %32, %31 ]
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %31, label %26, !llvm.loop !79

26:                                               ; preds = %21, %23
  %27 = phi i64 [ 0, %21 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.III_scalefac_t, ptr %0, i64 0, i32 1, i64 %22, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %23

31:                                               ; preds = %23
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, 12
  br i1 %33, label %34, label %21, !llvm.loop !80

34:                                               ; preds = %9, %31, %26, %15
  %35 = phi i32 [ 1, %15 ], [ 0, %26 ], [ 1, %31 ], [ 0, %9 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bin_search_StepSize2(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gr_info, ptr %5, i64 0, i32 3
  store i32 %2, ptr %7, align 4, !tbaa !47
  %8 = tail call i32 @count_bits(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13
  %9 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %53, label %11

11:                                               ; preds = %6, %46
  %12 = phi i32 [ %51, %46 ], [ %9, %6 ]
  %13 = phi i32 [ %50, %46 ], [ %8, %6 ]
  %14 = phi i32 [ %49, %46 ], [ 0, %6 ]
  %15 = phi i32 [ %48, %46 ], [ %2, %6 ]
  %16 = phi i32 [ %47, %46 ], [ 0, %6 ]
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = lshr i32 %12, 1
  store i32 %19, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  br label %20

20:                                               ; preds = %18, %11
  %21 = icmp sgt i32 %13, %1
  br i1 %21, label %22, label %33

22:                                               ; preds = %20
  %23 = icmp ne i32 %14, 2
  %24 = or i1 %17, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %27 = lshr i32 %26, 1
  store i32 %27, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %16, %22 ], [ 1, %25 ]
  %30 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %31 = add nsw i32 %30, %15
  %32 = icmp sgt i32 %31, 255
  br i1 %32, label %53, label %46

33:                                               ; preds = %20
  %34 = icmp slt i32 %13, %1
  br i1 %34, label %35, label %53

35:                                               ; preds = %33
  %36 = icmp ne i32 %14, 1
  %37 = or i1 %17, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %40 = lshr i32 %39, 1
  store i32 %40, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %16, %35 ], [ 1, %38 ]
  %43 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %44 = sub nsw i32 %15, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %28, %41
  %47 = phi i32 [ %29, %28 ], [ %42, %41 ]
  %48 = phi i32 [ %31, %28 ], [ %44, %41 ]
  %49 = phi i32 [ 1, %28 ], [ 2, %41 ]
  store i32 %48, ptr %7, align 4, !tbaa !47
  %50 = tail call i32 @count_bits(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13
  %51 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %11, !llvm.loop !81

53:                                               ; preds = %46, %28, %41, %33, %6
  %54 = phi i32 [ %8, %6 ], [ %50, %46 ], [ %13, %28 ], [ %13, %41 ], [ %13, %33 ]
  %55 = phi i32 [ %2, %6 ], [ %48, %46 ], [ %31, %28 ], [ %44, %41 ], [ %15, %33 ]
  %56 = sub nsw i32 %2, %55
  %57 = tail call i32 @llvm.abs.i32(i32 %56, i1 true)
  %58 = icmp ult i32 %57, 4
  %59 = select i1 %58, i32 2, i32 4
  store i32 %59, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @quantize_xrpow(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %0, %3 ], [ %40, %9 ]
  %11 = phi ptr [ %1, %3 ], [ %92, %9 ]
  %12 = phi i32 [ 72, %3 ], [ %93, %9 ]
  %13 = getelementptr inbounds double, ptr %10, i64 1
  %14 = load double, ptr %10, align 8, !tbaa !22
  %15 = fmul double %8, %14
  %16 = getelementptr inbounds double, ptr %10, i64 2
  %17 = load double, ptr %13, align 8, !tbaa !22
  %18 = fmul double %8, %17
  %19 = fptosi double %15 to i32
  %20 = getelementptr inbounds double, ptr %10, i64 3
  %21 = load double, ptr %16, align 8, !tbaa !22
  %22 = fmul double %8, %21
  %23 = fptosi double %18 to i32
  %24 = getelementptr inbounds double, ptr %10, i64 4
  %25 = load double, ptr %20, align 8, !tbaa !22
  %26 = fmul double %8, %25
  %27 = fptosi double %22 to i32
  %28 = getelementptr inbounds double, ptr %10, i64 5
  %29 = load double, ptr %24, align 8, !tbaa !22
  %30 = fmul double %8, %29
  %31 = fptosi double %26 to i32
  %32 = getelementptr inbounds double, ptr %10, i64 6
  %33 = load double, ptr %28, align 8, !tbaa !22
  %34 = fmul double %8, %33
  %35 = fptosi double %30 to i32
  %36 = getelementptr inbounds double, ptr %10, i64 7
  %37 = load double, ptr %32, align 8, !tbaa !22
  %38 = fmul double %8, %37
  %39 = fptosi double %34 to i32
  %40 = getelementptr inbounds double, ptr %10, i64 8
  %41 = load double, ptr %36, align 8, !tbaa !22
  %42 = fmul double %8, %41
  %43 = fptosi double %38 to i32
  %44 = sext i32 %19 to i64
  %45 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !22
  %47 = fadd double %15, %46
  %48 = fptosi double %42 to i32
  %49 = sext i32 %23 to i64
  %50 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !22
  %52 = fadd double %18, %51
  %53 = fptosi double %47 to i32
  %54 = getelementptr inbounds i32, ptr %11, i64 1
  store i32 %53, ptr %11, align 4, !tbaa !17
  %55 = sext i32 %27 to i64
  %56 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !22
  %58 = fadd double %22, %57
  %59 = fptosi double %52 to i32
  %60 = getelementptr inbounds i32, ptr %11, i64 2
  store i32 %59, ptr %54, align 4, !tbaa !17
  %61 = sext i32 %31 to i64
  %62 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !22
  %64 = fadd double %26, %63
  %65 = fptosi double %58 to i32
  %66 = getelementptr inbounds i32, ptr %11, i64 3
  store i32 %65, ptr %60, align 4, !tbaa !17
  %67 = sext i32 %35 to i64
  %68 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !22
  %70 = fadd double %30, %69
  %71 = fptosi double %64 to i32
  %72 = getelementptr inbounds i32, ptr %11, i64 4
  store i32 %71, ptr %66, align 4, !tbaa !17
  %73 = sext i32 %39 to i64
  %74 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !22
  %76 = fadd double %34, %75
  %77 = fptosi double %70 to i32
  %78 = getelementptr inbounds i32, ptr %11, i64 5
  store i32 %77, ptr %72, align 4, !tbaa !17
  %79 = sext i32 %43 to i64
  %80 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !22
  %82 = fadd double %38, %81
  %83 = fptosi double %76 to i32
  %84 = getelementptr inbounds i32, ptr %11, i64 6
  store i32 %83, ptr %78, align 4, !tbaa !17
  %85 = sext i32 %48 to i64
  %86 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !22
  %88 = fadd double %42, %87
  %89 = fptosi double %82 to i32
  %90 = getelementptr inbounds i32, ptr %11, i64 7
  store i32 %89, ptr %84, align 4, !tbaa !17
  %91 = fptosi double %88 to i32
  %92 = getelementptr inbounds i32, ptr %11, i64 8
  store i32 %91, ptr %90, align 4, !tbaa !17
  %93 = add nsw i32 %12, -1
  %94 = icmp ugt i32 %12, 1
  br i1 %94, label %9, label %95, !llvm.loop !82

95:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @quantize_xrpow_ISO(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !22
  %9 = fdiv double 5.946000e-01, %8
  br label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %0, %3 ], [ %19, %10 ]
  %12 = phi i32 [ 576, %3 ], [ %21, %10 ]
  %13 = phi ptr [ %1, %3 ], [ %20, %10 ]
  %14 = load double, ptr %11, align 8, !tbaa !22
  %15 = fcmp ogt double %9, %14
  %16 = tail call double @llvm.fmuladd.f64(double %8, double %14, double 4.054000e-01)
  %17 = fptosi double %16 to i32
  %18 = select i1 %15, i32 0, i32 %17
  store i32 %18, ptr %13, align 4, !tbaa !17
  %19 = getelementptr inbounds double, ptr %11, i64 1
  %20 = getelementptr inbounds i32, ptr %13, i64 1
  %21 = add nsw i32 %12, -1
  %22 = icmp ugt i32 %12, 1
  br i1 %22, label %10, label %23, !llvm.loop !83

23:                                               ; preds = %10
  ret void
}

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 168}
!11 = !{!"", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !13, i64 128, !13, i64 136, !7, i64 144, !7, i64 148, !14, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !12, i64 168, !12, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !14, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!11, !7, i64 224}
!16 = !{!11, !7, i64 192}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = !{!6, !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !8, i64 0}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = !{!11, !7, i64 228}
!29 = !{!11, !7, i64 200}
!30 = !{!11, !7, i64 204}
!31 = !{!32, !7, i64 24}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32, !8, i64 44, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !8, i64 104}
!33 = !{!32, !7, i64 80}
!34 = !{!32, !7, i64 84}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = !{!11, !7, i64 16}
!39 = distinct !{!39, !19}
!40 = !{!11, !7, i64 148}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{!32, !7, i64 12}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = !{!32, !7, i64 64}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = !{!32, !7, i64 76}
!58 = !{!32, !7, i64 16}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = !{!32, !13, i64 96}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = !{!11, !7, i64 144}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
