; ModuleID = 'BMPattern.cpp'
source_filename = "BMPattern.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BMPattern" = type { i8, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8

@_ZN11xercesc_2_79BMPatternC1EPKtbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr), ptr @_ZN11xercesc_2_79BMPatternC2EPKtbPNS_13MemoryManagerE
@_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i1, ptr), ptr @_ZN11xercesc_2_79BMPatternC2EPKtibPNS_13MemoryManagerE
@_ZN11xercesc_2_79BMPatternD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79BMPatternD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79BMPatternC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  store i32 256, ptr %6, align 4, !tbaa !42
  %7 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !43
  %10 = icmp eq ptr %1, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = load i16, ptr %1, align 2, !tbaa !44
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %1, %11 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !44
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !46

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i64
  %21 = ptrtoint ptr %1 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 2
  %24 = and i64 %23, 8589934590
  br label %25

25:                                               ; preds = %19, %11
  %26 = phi i64 [ %24, %19 ], [ 2, %11 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !49
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %26)
          to label %31 unwind label %34

31:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %30, ptr nonnull align 2 %1, i64 %26, i1 false)
  br label %32

32:                                               ; preds = %31, %4
  %33 = phi ptr [ %30, %31 ], [ null, %4 ]
  store ptr %33, ptr %8, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_79BMPattern10initializeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %44 unwind label %34

34:                                               ; preds = %25, %32
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %36 = extractvalue { ptr, i32 } %35, 1
  %37 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = extractvalue { ptr, i32 } %35, 0
  %41 = tail call ptr @__cxa_begin_catch(ptr %40) #10
  invoke void @__cxa_rethrow() #11
          to label %59 unwind label %42

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %45 unwind label %56

44:                                               ; preds = %32
  ret void

45:                                               ; preds = %42, %34
  %46 = phi ptr [ null, %42 ], [ @_ZN11xercesc_2_79BMPattern7cleanUpEv, %34 ]
  %47 = phi ptr [ null, %42 ], [ %0, %34 ]
  %48 = phi { ptr, i32 } [ %43, %42 ], [ %35, %34 ]
  %49 = icmp eq ptr %47, null
  %50 = or i1 %38, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(40) %47)
          to label %55 unwind label %52

52:                                               ; preds = %51
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #12
  unreachable

55:                                               ; preds = %45, %51
  resume { ptr, i32 } %48

56:                                               ; preds = %42
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #12
  unreachable

59:                                               ; preds = %39
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79BMPattern7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = load ptr, ptr %2, align 8, !tbaa !43
  %10 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
  %15 = load ptr, ptr %2, align 8, !tbaa !43
  %16 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79BMPattern10initializeEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %4, align 2, !tbaa !44
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %4, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !44
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !46

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %4 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %1, %6, %14
  %21 = phi i32 [ %19, %14 ], [ 0, %6 ], [ 0, %1 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 2
  %28 = load ptr, ptr %23, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %27)
  %32 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !53
  %33 = load i8, ptr %0, align 8, !tbaa !35, !range !54, !noundef !55
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %88, label %35

35:                                               ; preds = %20
  %36 = load ptr, ptr %3, align 8, !tbaa !51
  %37 = load ptr, ptr %22, align 8, !tbaa !43
  %38 = icmp eq ptr %36, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %35
  %40 = load i16, ptr %36, align 2, !tbaa !44
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %44, %42 ], [ %36, %39 ]
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !44
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %42, !llvm.loop !46

47:                                               ; preds = %42
  %48 = ptrtoint ptr %44 to i64
  %49 = ptrtoint ptr %36 to i64
  %50 = sub i64 %48, %49
  %51 = add i64 %50, 2
  %52 = and i64 %51, 8589934590
  br label %53

53:                                               ; preds = %47, %39
  %54 = phi i64 [ %52, %47 ], [ 2, %39 ]
  %55 = load ptr, ptr %37, align 8, !tbaa !49
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %37, i64 noundef %54)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %58, ptr nonnull align 2 %36, i64 %54, i1 false)
  br label %59

59:                                               ; preds = %35, %53
  %60 = phi ptr [ %58, %53 ], [ null, %35 ]
  %61 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  store ptr %60, ptr %61, align 8, !tbaa !52
  %62 = load ptr, ptr %3, align 8, !tbaa !51
  %63 = load ptr, ptr %22, align 8, !tbaa !43
  %64 = icmp eq ptr %62, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %59
  %66 = load i16, ptr %62, align 2, !tbaa !44
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65, %68
  %69 = phi ptr [ %70, %68 ], [ %62, %65 ]
  %70 = getelementptr inbounds i16, ptr %69, i64 1
  %71 = load i16, ptr %70, align 2, !tbaa !44
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %68, !llvm.loop !46

73:                                               ; preds = %68
  %74 = ptrtoint ptr %70 to i64
  %75 = ptrtoint ptr %62 to i64
  %76 = sub i64 %74, %75
  %77 = add i64 %76, 2
  %78 = and i64 %77, 8589934590
  br label %79

79:                                               ; preds = %73, %65
  %80 = phi i64 [ %78, %73 ], [ 2, %65 ]
  %81 = load ptr, ptr %63, align 8, !tbaa !49
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef %80)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %84, ptr nonnull align 2 %62, i64 %80, i1 false)
  br label %85

85:                                               ; preds = %59, %79
  %86 = phi ptr [ %84, %79 ], [ null, %59 ]
  %87 = load ptr, ptr %61, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_79XMLString9upperCaseEPt(ptr noundef %87)
  tail call void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef %86)
  br label %88

88:                                               ; preds = %85, %20
  %89 = phi ptr [ %86, %85 ], [ null, %20 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %90 = load ptr, ptr %22, align 8, !tbaa !43
  store ptr %89, ptr %2, align 8, !tbaa !56
  %91 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !58
  %92 = load i32, ptr %24, align 4, !tbaa !42
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %32, align 8, !tbaa !53
  br label %105

96:                                               ; preds = %105, %88
  %97 = icmp eq i32 %21, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %3, align 8, !tbaa !51
  %100 = load ptr, ptr %32, align 8, !tbaa !53
  %101 = load i8, ptr %0, align 8, !tbaa !35, !range !54, !noundef !55
  %102 = icmp eq i8 %101, 0
  %103 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  %104 = zext i32 %21 to i64
  br label %113

105:                                              ; preds = %94, %105
  %106 = phi i64 [ 0, %94 ], [ %108, %105 ]
  %107 = getelementptr inbounds i32, ptr %95, i64 %106
  store i32 %21, ptr %107, align 4, !tbaa !59
  %108 = add nuw nsw i64 %106, 1
  %109 = load i32, ptr %24, align 4, !tbaa !42
  %110 = zext i32 %109 to i64
  %111 = icmp ult i64 %108, %110
  br i1 %111, label %105, label %96, !llvm.loop !60

112:                                              ; preds = %147, %96
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void

113:                                              ; preds = %98, %147
  %114 = phi i64 [ 0, %98 ], [ %148, %147 ]
  %115 = getelementptr inbounds i16, ptr %99, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !44
  %117 = trunc i64 %114 to i32
  %118 = xor i32 %117, -1
  %119 = add i32 %21, %118
  %120 = zext i16 %116 to i32
  %121 = load i32, ptr %24, align 4, !tbaa !42
  %122 = urem i32 %120, %121
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %100, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !59
  %126 = icmp slt i32 %119, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  store i32 %119, ptr %124, align 4, !tbaa !59
  br label %128

128:                                              ; preds = %127, %113
  br i1 %102, label %147, label %129

129:                                              ; preds = %128, %144
  %130 = phi i32 [ %145, %144 ], [ 0, %128 ]
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr %103, align 8
  %133 = select i1 %131, ptr %132, ptr %89
  %134 = getelementptr inbounds i16, ptr %133, i64 %114
  %135 = load i16, ptr %134, align 2, !tbaa !44
  %136 = zext i16 %135 to i32
  %137 = load i32, ptr %24, align 4, !tbaa !42
  %138 = urem i32 %136, %137
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %100, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !59
  %142 = icmp slt i32 %119, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  store i32 %119, ptr %140, align 4, !tbaa !59
  br label %144

144:                                              ; preds = %129, %143
  %145 = add nuw nsw i32 %130, 1
  %146 = icmp eq i32 %130, 0
  br i1 %146, label %129, label %147, !llvm.loop !61

147:                                              ; preds = %144, %128
  %148 = add nuw nsw i64 %114, 1
  %149 = icmp eq i64 %148, %104
  br i1 %149, label %112, label %113, !llvm.loop !62
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79BMPatternC2EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = zext i1 %3 to i8
  store i8 %6, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 4, !tbaa !42
  %8 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %4, ptr %10, align 8, !tbaa !43
  %11 = icmp eq ptr %1, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %5
  %13 = load i16, ptr %1, align 2, !tbaa !44
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !44
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !46

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %4, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %27)
          to label %32 unwind label %35

32:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false)
  br label %33

33:                                               ; preds = %32, %5
  %34 = phi ptr [ %31, %32 ], [ null, %5 ]
  store ptr %34, ptr %9, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_79BMPattern10initializeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %45 unwind label %35

35:                                               ; preds = %26, %33
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %37 = extractvalue { ptr, i32 } %36, 1
  %38 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = extractvalue { ptr, i32 } %36, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #10
  invoke void @__cxa_rethrow() #11
          to label %60 unwind label %43

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %46 unwind label %57

45:                                               ; preds = %33
  ret void

46:                                               ; preds = %43, %35
  %47 = phi ptr [ null, %43 ], [ @_ZN11xercesc_2_79BMPattern7cleanUpEv, %35 ]
  %48 = phi ptr [ null, %43 ], [ %0, %35 ]
  %49 = phi { ptr, i32 } [ %44, %43 ], [ %36, %35 ]
  %50 = icmp eq ptr %48, null
  %51 = or i1 %39, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(40) %48)
          to label %56 unwind label %53

53:                                               ; preds = %52
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  tail call void @__clang_call_terminate(ptr %55) #12
  unreachable

56:                                               ; preds = %46, %52
  resume { ptr, i32 } %49

57:                                               ; preds = %43
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #12
  unreachable

60:                                               ; preds = %40
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79BMPatternD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %24

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !43
  %11 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = load ptr, ptr %10, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !43
  %18 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = load ptr, ptr %17, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %23 unwind label %24

23:                                               ; preds = %16
  ret void

24:                                               ; preds = %16, %9, %1
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = load i16, ptr %7, align 2, !tbaa !44
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !44
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !46

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %7 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %4, %9, %17
  %24 = phi i32 [ %22, %17 ], [ 0, %9 ], [ 0, %4 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %121, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %0, align 8, !tbaa !35, !range !54, !noundef !55
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %1, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %1, align 2, !tbaa !44
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %38, %36 ], [ %1, %33 ]
  %38 = getelementptr inbounds i16, ptr %37, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !44
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %36, !llvm.loop !46

41:                                               ; preds = %36
  %42 = ptrtoint ptr %38 to i64
  %43 = ptrtoint ptr %1 to i64
  %44 = sub i64 %42, %43
  %45 = add i64 %44, 2
  %46 = and i64 %45, 8589934590
  br label %47

47:                                               ; preds = %41, %33
  %48 = phi i64 [ %46, %41 ], [ 2, %33 ]
  %49 = load ptr, ptr %31, align 8, !tbaa !49
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %48)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %52, ptr nonnull align 2 %1, i64 %48, i1 false)
  br label %53

53:                                               ; preds = %29, %47
  %54 = phi ptr [ %52, %47 ], [ null, %29 ]
  tail call void @_ZN11xercesc_2_79XMLString9upperCaseEPt(ptr noundef %54)
  br label %55

55:                                               ; preds = %53, %26
  %56 = phi ptr [ %54, %53 ], [ null, %26 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %57 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  store ptr %56, ptr %5, align 8, !tbaa !56
  %59 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !58
  %60 = add i32 %24, %2
  %61 = icmp sgt i32 %24, 0
  %62 = load ptr, ptr %6, align 8
  %63 = load i8, ptr %0, align 8, !range !54
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %24 to i64
  br label %72

72:                                               ; preds = %115, %55
  %73 = phi i32 [ %60, %55 ], [ %117, %115 ]
  %74 = phi i32 [ undef, %55 ], [ %118, %115 ]
  %75 = icmp sgt i32 %73, %3
  br i1 %75, label %119, label %76

76:                                               ; preds = %72
  %77 = add nsw i32 %73, 1
  br i1 %61, label %78, label %101

78:                                               ; preds = %76
  %79 = sext i32 %73 to i64
  br label %80

80:                                               ; preds = %97, %78
  %81 = phi i64 [ %79, %78 ], [ %83, %97 ]
  %82 = phi i64 [ %71, %78 ], [ %86, %97 ]
  %83 = add nsw i64 %81, -1
  %84 = getelementptr inbounds i16, ptr %1, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !44
  %86 = add nsw i64 %82, -1
  %87 = getelementptr inbounds i16, ptr %62, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !44
  %89 = icmp eq i16 %85, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %80
  br i1 %64, label %99, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds i16, ptr %66, i64 %86
  %93 = load i16, ptr %92, align 2, !tbaa !44
  %94 = getelementptr inbounds i16, ptr %56, i64 %83
  %95 = load i16, ptr %94, align 2, !tbaa !44
  %96 = icmp eq i16 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91, %80
  %98 = icmp eq i64 %86, 0
  br i1 %98, label %113, label %80, !llvm.loop !63

99:                                               ; preds = %91, %90
  %100 = trunc i64 %83 to i32
  br label %101

101:                                              ; preds = %99, %76
  %102 = phi i32 [ %73, %76 ], [ %100, %99 ]
  %103 = phi i16 [ 0, %76 ], [ %85, %99 ]
  %104 = zext i16 %103 to i32
  %105 = urem i32 %104, %70
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %68, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !59
  %109 = add i32 %102, 1
  %110 = add i32 %109, %108
  %111 = icmp sgt i32 %110, %73
  %112 = select i1 %111, i32 %110, i32 %77
  br label %115

113:                                              ; preds = %97
  %114 = trunc i64 %83 to i32
  br label %115

115:                                              ; preds = %113, %101
  %116 = phi i1 [ true, %101 ], [ false, %113 ]
  %117 = phi i32 [ %112, %101 ], [ %114, %113 ]
  %118 = phi i32 [ %74, %101 ], [ %114, %113 ]
  br i1 %116, label %72, label %119, !llvm.loop !64

119:                                              ; preds = %115, %72
  %120 = phi i32 [ -1, %72 ], [ %118, %115 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %121

121:                                              ; preds = %23, %119
  %122 = phi i32 [ %120, %119 ], [ %2, %23 ]
  ret i32 %122
}

declare void @_ZN11xercesc_2_79XMLString9upperCaseEPt(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !66

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !67

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !68

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #13
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #12
  unreachable
}

declare void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(none) }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xercesc_2_79BMPatternE", !37, i64 0, !40, i64 4, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32}
!37 = !{!"bool", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!36, !40, i64 4}
!43 = !{!36, !41, i64 32}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !38, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !39, i64 0}
!51 = !{!36, !41, i64 16}
!52 = !{!36, !41, i64 24}
!53 = !{!36, !41, i64 8}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!57, !41, i64 0}
!57 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !41, i64 0, !41, i64 8}
!58 = !{!57, !41, i64 8}
!59 = !{!40, !40, i64 0}
!60 = distinct !{!60, !47, !48}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = !{!"function_entry_count", i64 243874}
!66 = !{!"branch_weights", i32 191815, i32 52059}
!67 = !{!"branch_weights", i32 0, i32 52059}
!68 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
