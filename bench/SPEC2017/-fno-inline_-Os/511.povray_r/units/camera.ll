; ModuleID = 'camera.cpp'
source_filename = "camera.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Transform_Struct" = type { [4 x [4 x double]], [4 x [4 x double]] }
%"struct.pov::Camera_Struct" = type { [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, i32, double, double, i32, double, double, double, ptr, ptr }

$_ZN3pov6VAddEqEPdPKd = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

@.str = private unnamed_addr constant [11 x i8] c"camera.cpp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"camera\00", align 1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN3pov16Translate_CameraEPNS_13Camera_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_ZN3pov6VAddEqEPdPKd(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VAddEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !34
  %4 = load double, ptr %0, align 8, !tbaa !34
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !34
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fadd double %12, %14
  store double %15, ptr %13, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov13Rotate_CameraEPNS_13Camera_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  call void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1) #5
  call void @_ZN3pov16Transform_CameraEPNS_13Camera_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov16Transform_CameraEPNS_13Camera_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 1
  tail call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %1) #5
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 2
  tail call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %1) #5
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 3
  tail call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %1) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov12Scale_CameraEPNS_13Camera_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  call void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1) #5
  call void @_ZN3pov16Transform_CameraEPNS_13Camera_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov13Create_CameraEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 256, ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1) #5
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #5
  %2 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 1
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %2, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #5
  %3 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 2
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %3, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00) #5
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 1.330000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #5
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 4
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %5, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00) #5
  %6 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 5
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #5
  %7 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 6
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #5
  %8 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 10
  store <2 x double> <double 9.000000e-01, double 1.000000e-04>, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 7
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 12
  store i32 1, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 13
  store <2 x double> <double 9.000000e+01, double 3.600000e+02>, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 15
  store double 1.800000e+02, ptr %13, align 8, !tbaa !43
  %14 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 16
  store ptr null, ptr %14, align 8, !tbaa !44
  %15 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #5
  %16 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 17
  store ptr %15, ptr %16, align 8, !tbaa !45
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 comdat {
  store double %1, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov11Copy_CameraEPNS_13Camera_StructE(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN3pov13Create_CameraEv() #5
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef %6) #5
  %7 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %8) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull align 8 dereferenceable(256) %0, i64 256, i1 false), !tbaa.struct !46
  store ptr null, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef nonnull %10) #5
  store ptr %13, ptr %5, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %12, %3
  store ptr null, ptr %7, align 8, !tbaa !45
  %15 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef nonnull %16) #5
  store ptr %19, ptr %7, align 8, !tbaa !45
  br label %20

20:                                               ; preds = %1, %14, %18
  %21 = phi ptr [ %4, %18 ], [ %4, %14 ], [ null, %1 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov14Destroy_CameraEPNS_13Camera_StructE(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef %5) #5
  %6 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %7) #5
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 337) #5
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 184}
!39 = !{!"_ZTSN3pov13Camera_StructE", !36, i64 0, !36, i64 24, !36, i64 48, !36, i64 72, !36, i64 96, !36, i64 120, !36, i64 144, !35, i64 168, !35, i64 176, !40, i64 184, !35, i64 192, !35, i64 200, !40, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !41, i64 240, !41, i64 248}
!40 = !{!"int", !36, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!39, !40, i64 208}
!43 = !{!39, !35, i64 232}
!44 = !{!39, !41, i64 240}
!45 = !{!39, !41, i64 248}
!46 = !{i64 0, i64 24, !47, i64 24, i64 24, !47, i64 48, i64 24, !47, i64 72, i64 24, !47, i64 96, i64 24, !47, i64 120, i64 24, !47, i64 144, i64 24, !47, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 4, !48, i64 192, i64 8, !34, i64 200, i64 8, !34, i64 208, i64 4, !48, i64 216, i64 8, !34, i64 224, i64 8, !34, i64 232, i64 8, !34, i64 240, i64 8, !49, i64 248, i64 8, !49}
!47 = !{!36, !36, i64 0}
!48 = !{!40, !40, i64 0}
!49 = !{!41, !41, i64 0}
