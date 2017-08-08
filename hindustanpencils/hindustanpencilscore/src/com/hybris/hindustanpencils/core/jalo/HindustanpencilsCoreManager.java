/*
 * [y] hybris Platform
 *
 * Copyright (c) 2017 SAP SE or an SAP affiliate company.  All rights reserved.
 *
 * This software is the confidential and proprietary information of SAP
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with SAP.
 */
package com.hybris.hindustanpencils.core.jalo;

import de.hybris.platform.jalo.JaloSession;
import de.hybris.platform.jalo.extension.ExtensionManager;
import com.hybris.hindustanpencils.core.constants.HindustanpencilsCoreConstants;
import com.hybris.hindustanpencils.core.setup.CoreSystemSetup;


/**
 * Do not use, please use {@link CoreSystemSetup} instead.
 * 
 */
@SuppressWarnings("PMD")
public class HindustanpencilsCoreManager extends GeneratedHindustanpencilsCoreManager
{
	public static final HindustanpencilsCoreManager getInstance()
	{
		final ExtensionManager em = JaloSession.getCurrentSession().getExtensionManager();
		return (HindustanpencilsCoreManager) em.getExtension(HindustanpencilsCoreConstants.EXTENSIONNAME);
	}
}
