function onStepOut(cid, item, pos)

	doTransformItem(item.uid, item.itemid - 1)

	return 1

end