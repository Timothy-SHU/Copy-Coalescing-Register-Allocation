; ModuleID = 'gsroptab.c'
source_filename = "gsroptab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@rop_proc_table = dso_local local_unnamed_addr constant [256 x ptr] [ptr @rop0, ptr @rop1, ptr @rop2, ptr @rop3, ptr @rop4, ptr @rop5, ptr @rop6, ptr @rop7, ptr @rop8, ptr @rop9, ptr @rop10, ptr @rop11, ptr @rop12, ptr @rop13, ptr @rop14, ptr @rop15, ptr @rop16, ptr @rop17, ptr @rop18, ptr @rop19, ptr @rop20, ptr @rop21, ptr @rop22, ptr @rop23, ptr @rop24, ptr @rop25, ptr @rop26, ptr @rop27, ptr @rop28, ptr @rop29, ptr @rop30, ptr @rop31, ptr @rop32, ptr @rop33, ptr @rop34, ptr @rop35, ptr @rop36, ptr @rop37, ptr @rop38, ptr @rop39, ptr @rop40, ptr @rop41, ptr @rop42, ptr @rop43, ptr @rop44, ptr @rop45, ptr @rop46, ptr @rop47, ptr @rop48, ptr @rop49, ptr @rop50, ptr @rop51, ptr @rop52, ptr @rop53, ptr @rop54, ptr @rop55, ptr @rop56, ptr @rop57, ptr @rop58, ptr @rop59, ptr @rop60, ptr @rop61, ptr @rop62, ptr @rop63, ptr @rop64, ptr @rop65, ptr @rop66, ptr @rop67, ptr @rop68, ptr @rop69, ptr @rop70, ptr @rop71, ptr @rop72, ptr @rop73, ptr @rop74, ptr @rop75, ptr @rop76, ptr @rop77, ptr @rop78, ptr @rop79, ptr @rop80, ptr @rop81, ptr @rop82, ptr @rop83, ptr @rop84, ptr @rop85, ptr @rop86, ptr @rop87, ptr @rop88, ptr @rop89, ptr @rop90, ptr @rop91, ptr @rop92, ptr @rop93, ptr @rop94, ptr @rop95, ptr @rop96, ptr @rop97, ptr @rop98, ptr @rop99, ptr @rop100, ptr @rop101, ptr @rop102, ptr @rop103, ptr @rop104, ptr @rop105, ptr @rop106, ptr @rop107, ptr @rop108, ptr @rop109, ptr @rop110, ptr @rop111, ptr @rop112, ptr @rop113, ptr @rop114, ptr @rop115, ptr @rop116, ptr @rop117, ptr @rop118, ptr @rop119, ptr @rop120, ptr @rop121, ptr @rop122, ptr @rop123, ptr @rop124, ptr @rop125, ptr @rop126, ptr @rop127, ptr @rop128, ptr @rop129, ptr @rop130, ptr @rop131, ptr @rop132, ptr @rop133, ptr @rop134, ptr @rop135, ptr @rop136, ptr @rop137, ptr @rop138, ptr @rop139, ptr @rop140, ptr @rop141, ptr @rop142, ptr @rop143, ptr @rop144, ptr @rop145, ptr @rop146, ptr @rop147, ptr @rop148, ptr @rop149, ptr @rop150, ptr @rop151, ptr @rop152, ptr @rop153, ptr @rop154, ptr @rop155, ptr @rop156, ptr @rop157, ptr @rop158, ptr @rop159, ptr @rop160, ptr @rop161, ptr @rop162, ptr @rop163, ptr @rop164, ptr @rop165, ptr @rop166, ptr @rop167, ptr @rop168, ptr @rop169, ptr @rop170, ptr @rop171, ptr @rop172, ptr @rop173, ptr @rop174, ptr @rop175, ptr @rop176, ptr @rop177, ptr @rop178, ptr @rop179, ptr @rop180, ptr @rop181, ptr @rop182, ptr @rop183, ptr @rop184, ptr @rop185, ptr @rop186, ptr @rop187, ptr @rop188, ptr @rop189, ptr @rop190, ptr @rop191, ptr @rop192, ptr @rop193, ptr @rop194, ptr @rop195, ptr @rop196, ptr @rop197, ptr @rop198, ptr @rop199, ptr @rop200, ptr @rop201, ptr @rop202, ptr @rop203, ptr @rop204, ptr @rop205, ptr @rop206, ptr @rop207, ptr @rop208, ptr @rop209, ptr @rop210, ptr @rop211, ptr @rop212, ptr @rop213, ptr @rop214, ptr @rop215, ptr @rop216, ptr @rop217, ptr @rop218, ptr @rop219, ptr @rop220, ptr @rop221, ptr @rop222, ptr @rop223, ptr @rop224, ptr @rop225, ptr @rop226, ptr @rop227, ptr @rop228, ptr @rop229, ptr @rop230, ptr @rop231, ptr @rop232, ptr @rop233, ptr @rop234, ptr @rop235, ptr @rop236, ptr @rop237, ptr @rop238, ptr @rop239, ptr @rop240, ptr @rop241, ptr @rop242, ptr @rop243, ptr @rop244, ptr @rop245, ptr @rop246, ptr @rop247, ptr @rop248, ptr @rop249, ptr @rop250, ptr @rop251, ptr @rop252, ptr @rop253, ptr @rop254, ptr @rop255], align 16
@rop_usage_table = dso_local local_unnamed_addr constant [256 x i8] c"\00\07\07\06\07\05\07\07\07\07\05\07\06\07\07\04\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\06\07\07\02\07\07\07\07\07\07\07\07\06\07\07\06\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\05\07\07\07\07\01\07\07\07\07\05\07\07\07\07\05\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\05\07\07\07\07\05\07\07\07\07\01\07\07\07\07\05\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\06\07\07\06\07\07\07\07\07\07\07\07\02\07\07\06\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\04\07\07\06\07\05\07\07\07\07\05\07\06\07\07\00", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop0(i32 %0, i32 %1, i32 %2) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop1(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop2(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop3(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop4(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop5(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop6(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, -1
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop7(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop8(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %1, %0
  %6 = and i32 %5, %4
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop9(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop10(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop11(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %1
  %6 = or i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop12(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop13(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %0
  %6 = or i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop14(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %2, -1
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop15(i32 %0, i32 %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop17(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop18(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop19(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop20(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %0, -1
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop21(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop22(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %0
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, %2
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop23(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %1, %0
  %6 = and i32 %4, %5
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop24(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %2, %0
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop25(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %0
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop26(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop27(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop28(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop29(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop30(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop31(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop32(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %0
  %6 = and i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop33(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop34(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop35(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %2
  %6 = or i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop36(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %1, %0
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop37(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %0
  %7 = xor i32 %6, %2
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop38(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop39(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %2
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop40(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = and i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop41(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop42(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop43(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = xor i32 %2, %1
  %6 = and i32 %4, %5
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop44(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop45(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop46(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop47(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %1
  %6 = and i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop48(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop49(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %0
  %6 = or i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop50(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop51(i32 %0, i32 noundef %1, i32 %2) #0 {
  %4 = xor i32 %1, -1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop52(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop53(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop54(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = xor i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop55(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop56(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop57(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop58(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop59(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %2
  %6 = and i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop60(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop61(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop62(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %0
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop63(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop64(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %1
  %6 = and i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop65(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop66(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, %0
  %6 = and i32 %5, %4
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop67(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop68(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop69(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %2
  %6 = or i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop70(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop71(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop72(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = and i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop73(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, %0
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop74(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop75(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop76(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop77(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %1, %0
  %6 = or i32 %4, %5
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop78(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop79(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %0
  %6 = and i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop80(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop81(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %1
  %6 = or i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop82(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop83(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop84(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %0, -1
  %6 = and i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop85(i32 noundef %0, i32 %1, i32 %2) #0 {
  %4 = xor i32 %0, -1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop86(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop87(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop88(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop89(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop90(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop91(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %0
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop92(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop93(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %2
  %6 = and i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop94(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %1
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %0
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop95(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop96(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop97(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, %0
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop98(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop99(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop100(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop101(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop102(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = xor i32 %1, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop103(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @rop104(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, %0
  %9 = xor i32 %8, -1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop105(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %1
  %5 = xor i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop106(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop107(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop108(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = xor i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop109(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, %0
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop110(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %2
  %6 = and i32 %5, %0
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop111(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, -1
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop112(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop113(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, %0
  %6 = and i32 %5, %4
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop114(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop115(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %0
  %6 = and i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop116(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop117(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %1
  %6 = and i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop118(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %2
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop119(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop120(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop121(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, %0
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop122(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %1
  %6 = and i32 %5, %2
  %7 = xor i32 %6, %0
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop123(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = xor i32 %1, -1
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop124(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %0
  %6 = and i32 %5, %2
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop125(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %0, -1
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop126(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %1, %0
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop127(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop128(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop129(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = xor i32 %1, %0
  %6 = or i32 %4, %5
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop130(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %2
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop131(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %0
  %6 = and i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop132(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %2
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop133(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %1
  %6 = and i32 %5, %0
  %7 = xor i32 %6, %2
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop134(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop135(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop136(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = and i32 %1, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop137(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %2
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop138(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %1
  %6 = and i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop139(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop140(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %0
  %6 = and i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop141(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop142(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, %0
  %6 = and i32 %5, %4
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop143(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %2, -1
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop144(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %1
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop145(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %2
  %6 = and i32 %5, %0
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop146(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, %2
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop147(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = xor i32 %4, %1
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop148(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, %2
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop149(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, %0
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop150(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop151(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, %2
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop152(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop153(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = xor i32 %0, %1
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop154(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop155(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop156(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop157(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop158(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop159(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop160(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop161(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %1
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %2
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop162(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %2
  %6 = and i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop163(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop164(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  %7 = xor i32 %6, %2
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop165(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %2
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop166(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop167(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop168(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop169(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, %0
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop170(i32 noundef returned %0, i32 %1, i32 %2) #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop171(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop172(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop173(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop174(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %1
  %6 = or i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop175(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop176(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %0
  %6 = and i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop177(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop178(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, %1
  %6 = or i32 %5, %4
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop179(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = xor i32 %1, -1
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop180(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop181(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop182(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, %2
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop183(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop184(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop185(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %0
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop186(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %2
  %6 = or i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop187(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop188(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %2
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop189(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = xor i32 %1, %0
  %6 = and i32 %4, %5
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop190(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = or i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop191(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop192(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop193(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %0
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop194(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop195(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %2
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop196(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %2
  %6 = and i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop197(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop198(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop199(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop200(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = and i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop201(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = xor i32 %4, %1
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop202(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop203(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop204(i32 %0, i32 noundef returned %1, i32 %2) #0 {
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop205(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop206(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %0
  %6 = or i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop207(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop208(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %1
  %6 = and i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop209(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop210(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop211(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop212(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = xor i32 %2, %1
  %6 = and i32 %4, %5
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop213(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %0, -1
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop214(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, %2
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop215(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop216(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop217(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %1
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop218(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %2
  %7 = xor i32 %6, %0
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop219(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, %1
  %6 = and i32 %5, %4
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop220(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %2
  %6 = or i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop221(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop222(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = or i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop223(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop224(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop225(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, %2
  %6 = xor i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop226(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = and i32 %4, %1
  %6 = xor i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop227(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop228(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %1
  %5 = and i32 %4, %0
  %6 = xor i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop229(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop230(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %0
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop231(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, %0
  %5 = xor i32 %2, %1
  %6 = and i32 %4, %5
  %7 = xor i32 %6, -1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop232(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = xor i32 %2, %1
  %6 = and i32 %5, %4
  %7 = xor i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @rop233(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %2
  %7 = xor i32 %6, %1
  %8 = xor i32 %7, %0
  %9 = xor i32 %8, -1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop234(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %1
  %5 = or i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop235(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %2
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop236(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, %0
  %5 = or i32 %4, %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop237(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %2
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop238(i32 noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = or i32 %1, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop239(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %2, -1
  %5 = or i32 %1, %0
  %6 = or i32 %5, %4
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop240(i32 %0, i32 %1, i32 noundef returned %2) #0 {
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop241(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop242(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = and i32 %4, %0
  %6 = or i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop243(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop244(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = and i32 %4, %1
  %6 = or i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop245(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop246(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, %0
  %5 = or i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop247(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop248(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, %0
  %5 = or i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop249(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %1
  %5 = xor i32 %4, -1
  %6 = or i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop250(i32 noundef %0, i32 %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop251(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %1, -1
  %5 = or i32 %4, %0
  %6 = or i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop252(i32 %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop253(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  %5 = or i32 %4, %1
  %6 = or i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop254(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %1, %0
  %5 = or i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rop255(i32 %0, i32 %1, i32 %2) #0 {
  ret i32 -1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
