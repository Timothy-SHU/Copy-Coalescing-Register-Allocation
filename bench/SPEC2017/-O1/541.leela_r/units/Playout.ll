; ModuleID = 'Playout.cpp'
source_filename = "Playout.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Playout = type { i8, float, %"class.boost::array" }
%"class.boost::array" = type { [2 x %"class.std::bitset"] }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [7 x i64] }
%class.Time = type { i32 }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.6", %"class.boost::array.7", [4 x i8] }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array.0", %"class.boost::array.0", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.0", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32 }>
%"class.boost::array.1" = type { [441 x i32] }
%"class.boost::array.2" = type { [442 x i16] }
%"class.boost::array.0" = type { [441 x i16] }
%"class.boost::array.3" = type { [4 x i32] }
%"class.boost::array.4" = type { [8 x i32] }
%"class.boost::array.5" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.6" = type { [24 x i32] }
%"class.boost::array.7" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%class.FastBoard = type <{ %"class.boost::array.0", %"class.boost::array.0", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.0", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32, [4 x i8] }>

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

@.str = private unnamed_addr constant [37 x i8] c"%d games in %5.2f seconds -> %d g/s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Avg Len: %5.2f Score: %f\0A\00", align 1

@_ZN7PlayoutC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7PlayoutC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7PlayoutC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 !prof !53 {
  %2 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  store i8 0, ptr %0, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN7Playout9get_scoreEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !61 {
  %2 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !62
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7Playout15set_final_scoreEf(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(120) %0, float noundef %1) local_unnamed_addr #0 align 2 !prof !63 {
  store i8 1, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 1
  store float %1, ptr %3, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Playout3runER9FastStateb(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !64 {
  %4 = alloca %"class.std::bitset", align 8
  %5 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1)
  %6 = mul nsw i32 %5, %5
  %7 = udiv i32 %6, 3
  %8 = shl nuw nsw i32 %6, 1
  %9 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %48, %3
  %11 = phi i32 [ 0, %3 ], [ %37, %48 ]
  %12 = tail call noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  %13 = icmp ult i32 %11, 30
  %14 = icmp ne i32 %12, -1
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %36, !prof !65

16:                                               ; preds = %10
  %17 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = getelementptr inbounds [2 x %"class.std::bitset"], ptr %9, i64 0, i64 %19
  %21 = sext i32 %12 to i64
  %22 = lshr i64 %21, 6
  %23 = getelementptr inbounds [7 x i64], ptr %20, i64 0, i64 %22
  %24 = and i64 %21, 63
  %25 = load i64, ptr %23, align 8, !tbaa !66
  %26 = shl nuw i64 1, %24
  %27 = and i64 %25, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36, !prof !68

29:                                               ; preds = %16
  %30 = xor i1 %18, true
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds [2 x %"class.std::bitset"], ptr %9, i64 0, i64 %31
  %33 = getelementptr inbounds [7 x i64], ptr %32, i64 0, i64 %22
  %34 = load i64, ptr %33, align 8, !tbaa !66
  %35 = or i64 %34, %26
  store i64 %35, ptr %33, align 8, !tbaa !66
  br label %36

36:                                               ; preds = %16, %29, %10
  %37 = add nuw nsw i32 %11, 1
  %38 = tail call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %49, !prof !69

40:                                               ; preds = %36
  %41 = tail call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  %42 = icmp slt i32 %41, %8
  br i1 %42, label %43, label %49, !prof !70

43:                                               ; preds = %40
  br i1 %2, label %44, label %48, !prof !71

44:                                               ; preds = %43
  %45 = tail call noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  %47 = icmp ult i32 %46, %7
  br i1 %47, label %48, label %49, !prof !72

48:                                               ; preds = %44, %43
  br label %10, !llvm.loop !73

49:                                               ; preds = %44, %40, %36
  %50 = tail call noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %51 = icmp sgt i32 %5, 0
  br i1 %51, label %52, label %54, !prof !76

52:                                               ; preds = %49, %59
  %53 = phi i32 [ %60, %59 ], [ 0, %49 ]
  br label %62

54:                                               ; preds = %59, %49
  %55 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv()
  call void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40) %55, ptr noundef nonnull align 8 dereferenceable(56) %4)
  store i8 1, ptr %0, align 8, !tbaa !54
  %56 = sitofp i32 %6 to float
  %57 = fdiv float %50, %56
  %58 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 1
  store float %57, ptr %58, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #12
  ret void

59:                                               ; preds = %80
  %60 = add nuw nsw i32 %53, 1
  %61 = icmp eq i32 %60, %5
  br i1 %61, label %54, label %52, !prof !77, !llvm.loop !78

62:                                               ; preds = %52, %80
  %63 = phi i32 [ %81, %80 ], [ 0, %52 ]
  %64 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %53, i32 noundef %63)
  %65 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67, !prof !79

67:                                               ; preds = %62
  %68 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %64)
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %80, !prof !80

70:                                               ; preds = %67
  %71 = tail call noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef 0, i32 noundef %64)
  br i1 %71, label %72, label %80, !prof !81

72:                                               ; preds = %70, %62
  %73 = sext i32 %64 to i64
  %74 = lshr i64 %73, 6
  %75 = getelementptr inbounds [7 x i64], ptr %4, i64 0, i64 %74
  %76 = and i64 %73, 63
  %77 = shl nuw i64 1, %76
  %78 = load i64, ptr %75, align 8, !tbaa !66
  %79 = or i64 %78, %77
  store i64 %79, ptr %75, align 8, !tbaa !66
  br label %80

80:                                               ; preds = %72, %67, %70
  %81 = add nuw nsw i32 %63, 1
  %82 = icmp eq i32 %81, %5
  br i1 %82, label %59, label %62, !prof !82, !llvm.loop !83
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #4

declare noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #4

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #4

declare noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #4

declare noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #4

declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN12MCOwnerTable7get_MCOEv() local_unnamed_addr #4

declare void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !84 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %17, label %5, !prof !85

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [2 x %"class.std::bitset"], ptr %6, i64 0, i64 %7
  %9 = sext i32 %2 to i64
  %10 = lshr i64 %9, 6
  %11 = getelementptr inbounds [7 x i64], ptr %8, i64 0, i64 %10
  %12 = and i64 %9, 63
  %13 = load i64, ptr %11, align 8, !tbaa !66
  %14 = shl nuw i64 1, %12
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %3, %5
  %18 = phi i1 [ %16, %5 ], [ false, %3 ]
  ret i1 %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7Playout20do_playout_benchmarkER9GameState(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #6 align 2 !prof !86 {
  %2 = alloca %class.Time, align 4
  %3 = alloca %class.Time, align 4
  %4 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %5 = mul nsw i32 %4, %4
  %6 = udiv i32 %5, 3
  %7 = shl nuw nsw i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %8

8:                                                ; preds = %1, %23
  %9 = phi i32 [ 0, %1 ], [ %29, %23 ]
  %10 = phi float [ 0.000000e+00, %1 ], [ %26, %23 ]
  %11 = phi float [ 0.000000e+00, %1 ], [ %28, %23 ]
  br label %12

12:                                               ; preds = %8, %19
  %13 = call noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %14 = call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %18 = icmp slt i32 %17, %7
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %12, label %23, !llvm.loop !87

23:                                               ; preds = %19, %16, %12
  %24 = call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %25 = sitofp i32 %24 to float
  %26 = fadd float %10, %25
  %27 = call noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %28 = fadd float %11, %27
  call void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
  %29 = add nuw nsw i32 %9, 1
  %30 = icmp eq i32 %29, 100000
  br i1 %30, label %31, label %8, !llvm.loop !88

31:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3)
  %32 = load i32, ptr %2, align 4, !tbaa.struct !89
  %33 = load i32, ptr %3, align 4, !tbaa.struct !89
  %34 = call noundef i32 @_ZN4Time8timediffES_S_(i32 %32, i32 %33)
  %35 = sitofp i32 %34 to float
  %36 = fpext float %35 to double
  %37 = fdiv double %36, 1.000000e+02
  %38 = load i32, ptr %2, align 4, !tbaa.struct !89
  %39 = load i32, ptr %3, align 4, !tbaa.struct !89
  %40 = call noundef i32 @_ZN4Time8timediffES_S_(i32 %38, i32 %39)
  %41 = sitofp i32 %40 to float
  %42 = fpext float %41 to double
  %43 = fdiv double %42, 1.000000e+02
  %44 = fdiv double 1.000000e+05, %43
  %45 = fptosi double %44 to i32
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, i32 noundef 100000, double noundef %37, i32 noundef %45)
  %46 = fdiv float %26, 1.000000e+05
  %47 = fpext float %46 to double
  %48 = fdiv float %28, 1.000000e+05
  %49 = fpext float %48 to double
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1, double noundef %47, double noundef %49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret void
}

declare void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #4

declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #4

declare noundef i32 @_ZN4Time8timediffES_S_(i32, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %3 = alloca %class.FastState, align 8
  %4 = alloca %class.Playout, align 8
  %5 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %23, !prof !93

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %12 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %13 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 17
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %15 = getelementptr inbounds %class.FullBoard, ptr %3, i64 0, i32 1
  %16 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %class.FastState, ptr %3, i64 0, i32 1
  %18 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %class.Playout, ptr %4, i64 0, i32 2
  %20 = getelementptr inbounds %class.Playout, ptr %4, i64 0, i32 1
  br label %31

21:                                               ; preds = %64
  %22 = sitofp i32 %60 to float
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi float [ 0.000000e+00, %2 ], [ %22, %21 ]
  %25 = sitofp i32 %1 to float
  %26 = fdiv float %24, %25
  %27 = call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %28 = icmp eq i32 %27, 0
  %29 = fsub float 1.000000e+00, %26
  %30 = select i1 %28, float %26, float %29, !prof !94
  ret float %30

31:                                               ; preds = %7, %64
  %32 = phi i32 [ 0, %7 ], [ %60, %64 ]
  %33 = phi i32 [ 0, %7 ], [ %65, %64 ]
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %3, ptr noundef nonnull align 8 dereferenceable(8024) %0, i64 8024, i1 false)
  %34 = load ptr, ptr %10, align 8, !tbaa !95
  %35 = load ptr, ptr %9, align 8, !tbaa !98
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 2
  %40 = icmp eq ptr %34, %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %40, label %43, label %41, !prof !99

41:                                               ; preds = %31
  %42 = call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %39, ptr noundef null)
  br label %43

43:                                               ; preds = %41, %31
  %44 = phi ptr [ null, %31 ], [ %42, %41 ]
  store ptr %44, ptr %8, align 8, !tbaa !98
  store ptr %44, ptr %11, align 8, !tbaa !95
  %45 = getelementptr inbounds i32, ptr %44, i64 %39
  store ptr %45, ptr %12, align 8, !tbaa !100
  %46 = load ptr, ptr %9, align 8, !tbaa !101
  %47 = load ptr, ptr %10, align 8, !tbaa !101
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %46 to i64
  %50 = sub i64 %48, %49
  %51 = icmp eq ptr %47, %46
  br i1 %51, label %53, label %52, !prof !99

52:                                               ; preds = %43
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %44, ptr align 4 %46, i64 %50, i1 false)
  br label %53

53:                                               ; preds = %43, %52
  %54 = getelementptr inbounds i8, ptr %44, i64 %50
  store ptr %54, ptr %11, align 8, !tbaa !95
  %55 = load i32, ptr %14, align 8, !tbaa !102
  store i32 %55, ptr %13, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %17, ptr noundef nonnull align 8 dereferenceable(316) %18, i64 316, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %19, i8 0, i64 112, i1 false)
  store i8 0, ptr %4, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %19, i8 0, i64 112, i1 false)
  invoke void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(8388) %3, i1 noundef zeroext false)
          to label %56 unwind label %67, !prof !113

56:                                               ; preds = %53
  %57 = load float, ptr %20, align 4, !tbaa !62
  %58 = fcmp ogt float %57, 0.000000e+00
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %32, %59
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #12
  %61 = load ptr, ptr %8, align 8, !tbaa !98
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63, !prof !114

63:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %61) #13
  br label %64

64:                                               ; preds = %56, %63
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #12
  %65 = add nuw nsw i32 %33, 1
  %66 = icmp eq i32 %65, %1
  br i1 %66, label %21, label %31, !prof !115, !llvm.loop !116

67:                                               ; preds = %53
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #12
  %69 = load ptr, ptr %8, align 8, !tbaa !98
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %69) #13
  br label %72

72:                                               ; preds = %67, %71
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #12
  resume { ptr, i32 } %68
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !117 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !118

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #15
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 256142274181}
!8 = !{!"MaxCount", i64 7844141798}
!9 = !{!"MaxInternalCount", i64 7547852578}
!10 = !{!"MaxFunctionCount", i64 7844141798}
!11 = !{!"NumCounts", i64 2880}
!12 = !{!"NumFunctions", i64 415}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7844141798, i32 1}
!18 = !{i32 100000, i64 6538040572, i32 4}
!19 = !{i32 200000, i64 5601060928, i32 8}
!20 = !{i32 300000, i64 4731748263, i32 13}
!21 = !{i32 400000, i64 3429140892, i32 19}
!22 = !{i32 500000, i64 2689357797, i32 28}
!23 = !{i32 600000, i64 2030175252, i32 39}
!24 = !{i32 700000, i64 1513066108, i32 53}
!25 = !{i32 800000, i64 981329770, i32 73}
!26 = !{i32 900000, i64 723674647, i32 104}
!27 = !{i32 950000, i64 415336410, i32 129}
!28 = !{i32 990000, i64 64860573, i32 187}
!29 = !{i32 999000, i64 6034043, i32 304}
!30 = !{i32 999900, i64 678637, i32 400}
!31 = !{i32 999990, i64 50119, i32 498}
!32 = !{i32 999999, i64 5214, i32 613}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard13get_boardsizeEv, i64 6098317}
!36 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState16play_random_moveEv, i64 818055955}
!37 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState11get_to_moveEv, i64 175982159}
!38 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState10get_passesEv, i64 818055955}
!39 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState11get_movenumEv, i64 812864128}
!40 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState17estimate_mc_scoreEv, i64 801480778}
!41 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState18calculate_mc_scoreEv, i64 6098317}
!42 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN12MCOwnerTable7get_MCOEv, i64 6098317}
!43 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, i64 6098317}
!44 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard10get_vertexEii, i64 1183882573}
!45 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard10get_squareEi, i64 1870501849}
!46 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard6is_eyeEii, i64 204385576}
!47 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN9FastBoard13get_boardsizeEv, i64 970}
!48 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN9FastState11get_to_moveEv, i64 970}
!49 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN7Playout3runER9FastStateb, i64 62080}
!50 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZdlPv, i64 61718}
!51 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10252442}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 38474572}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTS7Playout", !56, i64 0, !59, i64 4, !60, i64 8}
!56 = !{!"bool", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!"float", !57, i64 0}
!60 = !{!"_ZTSN5boost5arrayISt6bitsetILm441EELm2EEE", !57, i64 0}
!61 = !{!"function_entry_count", i64 70880022}
!62 = !{!55, !59, i64 4}
!63 = !{!"function_entry_count", i64 31495}
!64 = !{!"function_entry_count", i64 6098317}
!65 = !{!"branch_weights", i32 175982167, i32 642073824}
!66 = !{!67, !67, i64 0}
!67 = !{!"long", !57, i64 0}
!68 = !{!"branch_weights", i32 172913106, i32 3069061}
!69 = !{!"branch_weights", i32 812864164, i32 5191827}
!70 = !{!"branch_weights", i32 812864127, i32 37}
!71 = !{!"branch_weights", i32 801480813, i32 11383314}
!72 = !{!"branch_weights", i32 800574360, i32 906453}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!"branch_weights", i32 6098316, i32 1}
!77 = !{!"branch_weights", i32 6098316, i32 73426497}
!78 = distinct !{!78, !74, !75}
!79 = !{!"branch_weights", i32 497263291, i32 686619266}
!80 = !{!"branch_weights", i32 204385573, i32 482233693}
!81 = !{!"branch_weights", i32 81137866, i32 123247707}
!82 = !{!"branch_weights", i32 79524812, i32 1104357745}
!83 = distinct !{!83, !74, !75}
!84 = !{!"function_entry_count", i64 1979964940}
!85 = !{!"branch_weights", i32 32407242, i32 1947557698}
!86 = !{!"function_entry_count", i64 0}
!87 = distinct !{!87, !74, !75}
!88 = distinct !{!88, !74, !75}
!89 = !{i64 0, i64 4, !90}
!90 = !{!91, !91, i64 0}
!91 = !{!"int", !57, i64 0}
!92 = !{!"function_entry_count", i64 970}
!93 = !{!"branch_weights", i32 969, i32 1}
!94 = !{!"branch_weights", i32 486, i32 484}
!95 = !{!96, !97, i64 8}
!96 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!97 = !{!"any pointer", !57, i64 0}
!98 = !{!96, !97, i64 0}
!99 = !{!"branch_weights", i32 7788864, i32 0}
!100 = !{!96, !97, i64 16}
!101 = !{!97, !97, i64 0}
!102 = !{!103, !91, i64 8048}
!103 = !{!"_ZTS9FastBoard", !104, i64 0, !104, i64 882, !91, i64 1764, !91, i64 1768, !91, i64 1772, !105, i64 1776, !106, i64 3540, !106, i64 4424, !106, i64 5308, !106, i64 6192, !104, i64 7076, !107, i64 7960, !108, i64 7976, !109, i64 8008, !109, i64 8016, !110, i64 8024, !91, i64 8048}
!104 = !{!"_ZTSN5boost5arrayItLm441EEE", !57, i64 0}
!105 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !57, i64 0}
!106 = !{!"_ZTSN5boost5arrayItLm442EEE", !57, i64 0}
!107 = !{!"_ZTSN5boost5arrayIiLm4EEE", !57, i64 0}
!108 = !{!"_ZTSN5boost5arrayIiLm8EEE", !57, i64 0}
!109 = !{!"_ZTSN5boost5arrayIiLm2EEE", !57, i64 0}
!110 = !{!"_ZTSSt6vectorIiSaIiEE", !111, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !96, i64 0}
!113 = !{!"branch_weights", i32 62080, i32 0}
!114 = !{!"branch_weights", i32 362, i32 61718}
!115 = !{!"branch_weights", i32 969, i32 61111}
!116 = distinct !{!116, !74, !75}
!117 = !{!"function_entry_count", i64 10252442}
!118 = !{!"branch_weights", i32 0, i32 10252442}
