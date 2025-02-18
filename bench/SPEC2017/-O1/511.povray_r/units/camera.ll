; ModuleID = 'camera.cpp'
source_filename = "camera.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Transform_Struct" = type { [4 x [4 x double]], [4 x [4 x double]] }
%"struct.pov::Camera_Struct" = type { [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, i32, double, double, i32, double, double, double, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"camera.cpp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"camera\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov16Translate_CameraEPNS_13Camera_StructEPd(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov13Rotate_CameraEPNS_13Camera_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  call void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1)
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %3)
  %6 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 3
  call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov16Transform_CameraEPNS_13Camera_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 1
  tail call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %1)
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 2
  tail call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %1)
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 3
  tail call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov12Scale_CameraEPNS_13Camera_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  call void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1)
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %3)
  %6 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 3
  call void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  ret void
}

declare void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov15MTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov13Create_CameraEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 256, ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 1, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  store double 1.000000e+00, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 2
  store double 0.000000e+00, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 2, i64 1
  store double 1.000000e+00, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 2, i64 2
  store double 0.000000e+00, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 3
  store double 1.330000e+00, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 3, i64 1
  %8 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 4, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 4, i64 2
  %10 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 5, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 6, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 9
  store i32 0, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 10
  store double 9.000000e-01, ptr %14, align 8, !tbaa !42
  %15 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 11
  store double 1.000000e-04, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 8
  store double 0.000000e+00, ptr %16, align 8, !tbaa !44
  %17 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 7
  store double -1.000000e+00, ptr %17, align 8, !tbaa !45
  %18 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 12
  store i32 1, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 13
  store double 9.000000e+01, ptr %19, align 8, !tbaa !47
  %20 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 14
  store double 3.600000e+02, ptr %20, align 8, !tbaa !48
  %21 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 15
  store double 1.800000e+02, ptr %21, align 8, !tbaa !49
  %22 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 16
  store ptr null, ptr %22, align 8, !tbaa !50
  %23 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  %24 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %1, i64 0, i32 17
  store ptr %23, ptr %24, align 8, !tbaa !51
  ret ptr %1
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov11Copy_CameraEPNS_13Camera_StructE(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 256, ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1)
  %5 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 1, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store double 1.000000e+00, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 2
  store double 0.000000e+00, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 2, i64 1
  store double 1.000000e+00, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 2, i64 2
  store double 0.000000e+00, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 3
  store double 1.330000e+00, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 3, i64 1
  %11 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 4, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 4, i64 2
  %13 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 5, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 6
  %15 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 6, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 9
  store i32 0, ptr %16, align 8, !tbaa !38
  %17 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 10
  store double 9.000000e-01, ptr %17, align 8, !tbaa !42
  %18 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 11
  store double 1.000000e-04, ptr %18, align 8, !tbaa !43
  %19 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 8
  store double 0.000000e+00, ptr %19, align 8, !tbaa !44
  %20 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 7
  store double -1.000000e+00, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 12
  store i32 1, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 13
  store double 9.000000e+01, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 14
  store double 3.600000e+02, ptr %23, align 8, !tbaa !48
  %24 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 15
  store double 1.800000e+02, ptr %24, align 8, !tbaa !49
  %25 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 16
  store ptr null, ptr %25, align 8, !tbaa !50
  %26 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  %27 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %4, i64 0, i32 17
  store ptr %26, ptr %27, align 8, !tbaa !51
  %28 = load ptr, ptr %25, align 8, !tbaa !50
  tail call void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef %28)
  %29 = load ptr, ptr %27, align 8, !tbaa !51
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull align 8 dereferenceable(256) %0, i64 256, i1 false), !tbaa.struct !52
  store ptr null, ptr %25, align 8, !tbaa !50
  %30 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = tail call noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef nonnull %31)
  store ptr %34, ptr %25, align 8, !tbaa !50
  br label %35

35:                                               ; preds = %33, %3
  store ptr null, ptr %27, align 8, !tbaa !51
  %36 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef nonnull %37)
  store ptr %40, ptr %27, align 8, !tbaa !51
  br label %41

41:                                               ; preds = %1, %35, %39
  %42 = phi ptr [ %4, %39 ], [ %4, %35 ], [ null, %1 ]
  ret ptr %42
}

declare void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov14Destroy_CameraEPNS_13Camera_StructE(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  tail call void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef %5)
  %6 = getelementptr inbounds %"struct.pov::Camera_Struct", ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %7)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 337)
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 184}
!39 = !{!"_ZTSN3pov13Camera_StructE", !36, i64 0, !36, i64 24, !36, i64 48, !36, i64 72, !36, i64 96, !36, i64 120, !36, i64 144, !35, i64 168, !35, i64 176, !40, i64 184, !35, i64 192, !35, i64 200, !40, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !41, i64 240, !41, i64 248}
!40 = !{!"int", !36, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!39, !35, i64 192}
!43 = !{!39, !35, i64 200}
!44 = !{!39, !35, i64 176}
!45 = !{!39, !35, i64 168}
!46 = !{!39, !40, i64 208}
!47 = !{!39, !35, i64 216}
!48 = !{!39, !35, i64 224}
!49 = !{!39, !35, i64 232}
!50 = !{!39, !41, i64 240}
!51 = !{!39, !41, i64 248}
!52 = !{i64 0, i64 24, !53, i64 24, i64 24, !53, i64 48, i64 24, !53, i64 72, i64 24, !53, i64 96, i64 24, !53, i64 120, i64 24, !53, i64 144, i64 24, !53, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 4, !54, i64 192, i64 8, !34, i64 200, i64 8, !34, i64 208, i64 4, !54, i64 216, i64 8, !34, i64 224, i64 8, !34, i64 232, i64 8, !34, i64 240, i64 8, !55, i64 248, i64 8, !55}
!53 = !{!36, !36, i64 0}
!54 = !{!40, !40, i64 0}
!55 = !{!41, !41, i64 0}
