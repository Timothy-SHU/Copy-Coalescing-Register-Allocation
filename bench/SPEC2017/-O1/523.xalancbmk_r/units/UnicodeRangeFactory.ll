; ModuleID = 'UnicodeRangeFactory.cpp'
source_filename = "UnicodeRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::TokenFactory" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_ZTVN11xercesc_2_719UnicodeRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719UnicodeRangeFactoryE, ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev, ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD0Ev, ptr @_ZN11xercesc_2_719UnicodeRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_719UnicodeRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZN11xercesc_2_75Token9UTF16_MAXE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L8fgUniAllE = internal constant [4 x i16] [i16 65, i16 76, i16 76, i16 0], align 2
@_ZN11xercesc_2_7L12fgUniIsAlphaE = internal constant [8 x i16] [i16 73, i16 115, i16 65, i16 108, i16 112, i16 104, i16 97, i16 0], align 16
@_ZN11xercesc_2_7L12fgUniIsAlnumE = internal constant [8 x i16] [i16 73, i16 115, i16 65, i16 108, i16 110, i16 117, i16 109, i16 0], align 16
@_ZN11xercesc_2_7L11fgUniIsWordE = internal constant [7 x i16] [i16 73, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 2
@_ZN11xercesc_2_7L13fgUniAssignedE = internal constant [9 x i16] [i16 65, i16 83, i16 83, i16 73, i16 71, i16 78, i16 69, i16 68, i16 0], align 16
@_ZN11xercesc_2_7L12fgUniIsSpaceE = internal constant [8 x i16] [i16 73, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_7L17fgUnicodeCategoryE = internal constant [8 x i16] [i16 85, i16 78, i16 73, i16 67, i16 79, i16 68, i16 69, i16 0], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719UnicodeRangeFactoryE = dso_local constant [37 x i8] c"N11xercesc_2_719UnicodeRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_719UnicodeRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719UnicodeRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8
@_ZN11xercesc_2_7L13uniCategNamesE = internal constant <{ <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }> }> <{ <{ i16, i16, [35 x i16] }> <{ i16 67, i16 110, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 117, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 108, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 116, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 109, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 77, i16 110, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 77, i16 101, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 77, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 78, i16 100, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 78, i16 108, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 78, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 90, i16 115, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 90, i16 108, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 90, i16 112, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 102, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 115, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 100, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 115, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 101, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 109, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 107, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 105, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 102, [35 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 76, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 77, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 78, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 90, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 67, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 80, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 83, [36 x i16] zeroinitializer }> }>, align 16
@switch.table._ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt = private unnamed_addr constant [30 x i16] [i16 34, i16 30, i16 30, i16 30, i16 30, i16 30, i16 31, i16 31, i16 31, i16 32, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 34, i16 35, i16 35, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35], align 2

@_ZN11xercesc_2_719UnicodeRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719UnicodeRangeFactoryC2Ev
@_ZN11xercesc_2_719UnicodeRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719UnicodeRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  ret void
}

declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = alloca [37 x ptr], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !45, !range !49, !noundef !50
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %170

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !51, !range !49, !noundef !50
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !41
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %3) #6
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %22, %18 ]
  %20 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %21 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %19
  store ptr %20, ptr %21, align 8, !tbaa !56
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, 37
  br i1 %23, label %30, label %18, !llvm.loop !57

24:                                               ; preds = %30
  %25 = load ptr, ptr %3, align 16, !tbaa !56
  %26 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !60
  %27 = load ptr, ptr %25, align 8, !tbaa !41
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(72) %25, i32 noundef 65536, i32 noundef %26)
  br label %144

30:                                               ; preds = %18, %30
  %31 = phi i32 [ %47, %30 ], [ 0, %18 ]
  %32 = trunc i32 %31 to i16
  %33 = tail call noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext %32)
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(72) %36, i32 noundef %31, i32 noundef %31)
  %40 = tail call noundef zeroext i16 @_ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt(ptr nonnull align 8 poison, i16 noundef zeroext %33), !range !62
  %41 = zext nneg i16 %40 to i64
  %42 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(72) %43, i32 noundef %31, i32 noundef %31)
  %47 = add nuw nsw i32 %31, 1
  %48 = icmp eq i32 %47, 65536
  br i1 %48, label %24, label %30, !llvm.loop !63

49:                                               ; preds = %154
  %50 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  %52 = getelementptr inbounds ptr, ptr %51, i64 12
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(72) %50, i32 noundef 0, i32 noundef %26)
  %54 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %50, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %50)
  br label %58

58:                                               ; preds = %49, %57
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L8fgUniAllE, ptr noundef nonnull %50, i1 noundef zeroext false)
  %59 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %60 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = load ptr, ptr %59, align 8, !tbaa !41
  %63 = getelementptr inbounds ptr, ptr %62, i64 13
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(72) %59, ptr noundef %61)
  %65 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 2
  %66 = load ptr, ptr %65, align 16, !tbaa !56
  %67 = load ptr, ptr %59, align 8, !tbaa !41
  %68 = getelementptr inbounds ptr, ptr %67, i64 13
  %69 = load ptr, ptr %68, align 8
  tail call void %69(ptr noundef nonnull align 8 dereferenceable(72) %59, ptr noundef %66)
  %70 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 5
  %71 = load ptr, ptr %70, align 8, !tbaa !56
  %72 = load ptr, ptr %59, align 8, !tbaa !41
  %73 = getelementptr inbounds ptr, ptr %72, i64 13
  %74 = load ptr, ptr %73, align 8
  tail call void %74(ptr noundef nonnull align 8 dereferenceable(72) %59, ptr noundef %71)
  %75 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %59, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !64
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %59)
  br label %79

79:                                               ; preds = %58, %78
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlphaE, ptr noundef nonnull %59, i1 noundef zeroext false)
  %80 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = getelementptr inbounds ptr, ptr %81, i64 13
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(72) %80, ptr noundef nonnull %59)
  %84 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 9
  %85 = load ptr, ptr %84, align 8, !tbaa !56
  %86 = load ptr, ptr %80, align 8, !tbaa !41
  %87 = getelementptr inbounds ptr, ptr %86, i64 13
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(72) %80, ptr noundef %85)
  %89 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %80, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !64
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %80)
  br label %93

93:                                               ; preds = %79, %92
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlnumE, ptr noundef nonnull %80, i1 noundef zeroext false)
  %94 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %95 = load ptr, ptr %94, align 8, !tbaa !41
  %96 = getelementptr inbounds ptr, ptr %95, i64 13
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(72) %94, ptr noundef nonnull %80)
  %98 = load ptr, ptr %94, align 8, !tbaa !41
  %99 = getelementptr inbounds ptr, ptr %98, i64 12
  %100 = load ptr, ptr %99, align 8
  tail call void %100(ptr noundef nonnull align 8 dereferenceable(72) %94, i32 noundef 95, i32 noundef 95)
  %101 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %94, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %94)
  br label %105

105:                                              ; preds = %93, %104
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef nonnull %94, i1 noundef zeroext false)
  %106 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  %107 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %94, ptr noundef nonnull %17, ptr noundef %106)
  %108 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !64
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %107)
  br label %112

112:                                              ; preds = %105, %111
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef nonnull %107, i1 noundef zeroext true)
  %113 = getelementptr inbounds %"class.xercesc_2_7::TokenFactory", ptr %17, i64 0, i32 15
  %114 = load ptr, ptr %113, align 8, !tbaa !68
  %115 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %25, ptr noundef nonnull %17, ptr noundef %114)
  %116 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %115, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !64
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %115)
  br label %120

120:                                              ; preds = %112, %119
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgUniAssignedE, ptr noundef nonnull %115, i1 noundef zeroext false)
  %121 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %122 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 12
  %123 = load ptr, ptr %122, align 16, !tbaa !56
  %124 = load ptr, ptr %121, align 8, !tbaa !41
  %125 = getelementptr inbounds ptr, ptr %124, i64 13
  %126 = load ptr, ptr %125, align 8
  tail call void %126(ptr noundef nonnull align 8 dereferenceable(72) %121, ptr noundef %123)
  %127 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 13
  %128 = load ptr, ptr %127, align 8, !tbaa !56
  %129 = load ptr, ptr %121, align 8, !tbaa !41
  %130 = getelementptr inbounds ptr, ptr %129, i64 13
  %131 = load ptr, ptr %130, align 8
  tail call void %131(ptr noundef nonnull align 8 dereferenceable(72) %121, ptr noundef %128)
  %132 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %121, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !64
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %121)
  br label %136

136:                                              ; preds = %120, %135
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, ptr noundef nonnull %121, i1 noundef zeroext false)
  %137 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  %138 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %121, ptr noundef nonnull %17, ptr noundef %137)
  %139 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %138, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !64
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %138)
  br label %143

143:                                              ; preds = %136, %142
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, ptr noundef nonnull %138, i1 noundef zeroext true)
  br label %159

144:                                              ; preds = %24, %154
  %145 = phi i64 [ 0, %24 ], [ %156, %154 ]
  %146 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !56
  %148 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  %149 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef %147, ptr noundef nonnull %17, ptr noundef %148)
  %150 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %149, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !64
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %149)
  br label %154

154:                                              ; preds = %144, %153
  %155 = getelementptr inbounds [37 x [37 x i16]], ptr @_ZN11xercesc_2_7L13uniCategNamesE, i64 0, i64 %145
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %155, ptr noundef %147, i1 noundef zeroext false)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %155, ptr noundef nonnull %149, i1 noundef zeroext true)
  %156 = add nuw nsw i64 %145, 1
  %157 = icmp eq i64 %156, 37
  br i1 %157, label %49, label %144, !llvm.loop !70

158:                                              ; preds = %167
  store i8 1, ptr %4, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %3) #6
  br label %170

159:                                              ; preds = %143, %167
  %160 = phi i64 [ 0, %143 ], [ %168, %167 ]
  %161 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !56
  %163 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %162, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !64
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %162)
  br label %167

167:                                              ; preds = %159, %166
  %168 = add nuw nsw i64 %160, 1
  %169 = icmp eq i64 %168, 37
  br i1 %169, label %158, label %159, !llvm.loop !71

170:                                              ; preds = %2, %158
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt(ptr nocapture nonnull readnone align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #5 align 2 !prof !44 {
  %3 = icmp ult i16 %1, 30
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i16 %1 to i64
  %6 = getelementptr inbounds [30 x i16], ptr @switch.table._ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i16 [ %7, %4 ], [ 0, %2 ]
  ret i16 %9
}

declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !51, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %12, !prof !72

6:                                                ; preds = %7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L8fgUniAllE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlphaE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlnumE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgUniAssignedE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  store i8 1, ptr %3, align 1, !tbaa !51
  br label %12

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %10, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [37 x [37 x i16]], ptr @_ZN11xercesc_2_7L13uniCategNamesE, i64 0, i64 %8
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %9, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 37
  br i1 %11, label %6, label %7, !prof !73, !llvm.loop !74

12:                                               ; preds = %2, %6
  ret void
}

declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_719UnicodeRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD0Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_719UnicodeRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 43}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !47, i64 8, !47, i64 9}
!47 = !{!"bool", !48, i64 0}
!48 = !{!"omnipotent char", !43, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!46, !47, i64 9}
!52 = !{!53, !54, i64 24}
!53 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !55, i64 32}
!54 = !{!"any pointer", !48, i64 0}
!55 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !54, i64 0}
!56 = !{!54, !54, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !48, i64 0}
!62 = !{i16 0, i16 37}
!63 = distinct !{!63, !58, !59}
!64 = !{!65, !54, i64 40}
!65 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !66, i64 0, !47, i64 24, !47, i64 25, !61, i64 28, !61, i64 32, !61, i64 36, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64}
!66 = !{!"_ZTSN11xercesc_2_75TokenE", !67, i64 8, !54, i64 16}
!67 = !{!"short", !48, i64 0}
!68 = !{!69, !54, i64 120}
!69 = !{!"_ZTSN11xercesc_2_712TokenFactoryE", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120}
!70 = distinct !{!70, !58, !59}
!71 = distinct !{!71, !58, !59}
!72 = !{!"branch_weights", i32 1, i32 0}
!73 = !{!"branch_weights", i32 1, i32 36}
!74 = distinct !{!74, !58, !59}
